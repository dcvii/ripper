#!/bin/bash
CONFIG=./config 
VSQL=vsql
mkdir -p out

function help()
{
cat << EOFHELP

	-c | --check [ config | aws | vsql ]
		checks config file, creates vsqlrc file
		checks aws access via AWS CLI
		checks access to database via vsql (checks both source and target)

	-d | --ddl [ catalog | grants ]
		creates catalog ddl and writes to out/catalog.out
		creates catalog ddl and writes to out/grants.out
	
	-t | --table [ tablename ]
		creates table ddl and writes to out/{tablename}.out

	-g | --schema [ schemaname ]
		creates grants ddl and writes to out/{schemaname}.out

	-p | --parquet
		creates a list of tables and the sql statements for export and import using parquet.
		creates files out/parquet_export.sql out/parquet_import.sql

	-l | --delimited
		creates a list of tables and the sql statements for export and import using delimited
		creates files out/delimited_export.sql out/delimited_import.sql

	-E | --export
		run concurrent export

	-I | --import
		run concurrent import
	
	-h | --help 
		This output (help and commands)

	e.g.
	$0 --check aws
	$0 --check vsql
	$0 --check config

	$0 --ddl catalog
	$0 --ddl grants
	$0 --ddl table --table public.t
	$0 --ddl schema --schema public
	
	$0 --table public.t
	$0 --schema public

	$0 --parquet
	$0 --delimited
	
	$0 --export
	$0 --import

EOFHELP
}

function log()
{         
        local level="${1:-DEBUG}"
        # dont do debug logging unless LOGLEVEL is set to debug
        if [ "${LOGLEVEL}" != DEBUG -a "${level}" = "DEBUG" ]; then return 0; fi
        local msg="${2:-$(</dev/stdin)}"
        printf "%s %s %s [%s]: %s\n" $$ "$(date +%Y-%m-%dT%H:%M:%S)" $1 "$(caller 1)"  "$msg" 1>&2
        if [ ${level} = "FATAL" ]; then
                exit 1; 
        fi
}        

function check_config()
{


	if [ -r "${CONFIG}" ]; then
		log INFO "found config file ${CONFIG}"
	else
		log FATAL "config file ${CONFIG} not found"
	fi
	source ${CONFIG}
	[ -z "${AWS_ACCESS_KEY_ID}" ]      && log ERROR "variable AWS_ACCESS_KEY_ID is not defined in ${CONFIG}"
	[ -z "${AWS_SECRET_ACCESS_KEY}" ]  && log ERROR "variable AWS_SECRET_ACCESS_KEY is not defined in ${CONFIG}"
	[ -z "${AWS_DEFAULT_REGION}" ]     && log ERROR "variable AWS_DEFAULT_REGION is not defined in ${CONFIG}"
	[ -z "${BUCKET}" ]                 && log ERROR "variable BUCKET is not defined in ${CONFIG}"
	[ -z "${STAGE}" ]                  && log ERROR "variable STAGE is not defined in ${CONFIG}"
	[ -z "${VSQL_HOME}" ]              && log ERROR "variable VSQL_HOME is not defined in ${CONFIG}"
	[ -z "${SOH}" ]                    && log FATAL "variable SOH is required as a field seperator ${CONFIG}"
	[ -z "${STX}" ]                    && log FATAL "variable STX is required as row seperator ${CONFIG}"

	[ -z "${SOURCE_VSQL_USER}" ]       && log ERROR "variable SOURCE_VSQL_USER is not defined in ${CONFIG}"
	[ -z "${SOURCE_VSQL_PASSWORD}" ]   && log ERROR "variable SOURCE_VSQL_PASSWORD is not defined in ${CONFIG}"
	[ -z "${SOURCE_VSQL_HOST}" ]       && log ERROR "variable SOURCE_VSQL_HOST is not defined in ${CONFIG}"

	[ -z "${TARGET_VSQL_USER}" ]       && log ERROR "variable TARGET_VSQL_USER is not defined in ${CONFIG}"
	[ -z "${TARGET_VSQL_PASSWORD}" ]   && log ERROR "variable TARGET_VSQL_PASSWORD is not defined in ${CONFIG}"
	[ -z "${TARGET_VSQL_HOST}" ]       && log ERROR "variable TARGET_VSQL_HOST is not defined in ${CONFIG}"

	export AWS_ACCESS_KEY_ID
	export AWS_SECRET_ACCESS_KEY
	export AWS_DEFAULT_REGION
	export BUCKET
	export STAGE
	export VSQL_HOME
	export SOH
	export STX

	ENVTYPE=${1}
	if [  "${ENVTYPE}" == "SOURCE" ]; then 
		export VSQL_USER=${SOURCE_VSQL_USER}
		export VSQL_PASSWORD=${SOURCE_VSQL_PASSWORD}
		export VSQL_HOST=${SOURCE_VSQL_HOST}
	fi
	if [  "${ENVTYPE}" == "TARGET" ]; then 
		export VSQL_USER=${TARGET_VSQL_USER}
		export VSQL_PASSWORD=${TARGET_VSQL_PASSWORD}
		export VSQL_HOST=${TARGET_VSQL_HOST}
	fi

}

function check_vsql()
{
	
	if [ -z ${1} ]; then
		log FATAL "ENVTYPE required as the first argument"
	fi

	local ENVTYPE=${1}
	check_config "${ENVTYPE}"
	which vsql 2>&1 1>/dev/null 
	if [ $? -ne 0 ]; then
		log FATAL "vsql does not exist"
	else
		log DEBUG "vsql cli found"
	fi

	cat << VSQLRC > ./.vsqlrc
	ALTER SESSION SET AWSAuth='${AWS_ACCESS_KEY_ID}:${AWS_SECRET_ACCESS_KEY}';
	ALTER SESSION SET AWSRegion='${AWS_DEFAULT_REGION}';
VSQLRC

	source ./config
	${VSQL} -qAt  -c "select version(), dbname(), user_name from sessions where session_id=current_session();"
}



function check_aws()
{
	# check aws access
	which aws 2>&1 1>/dev/null 
	if [ $? -ne 0 ]; then
		log FATAL "aws cli does not exist"
	else
		log DEBUG "aws cli found"
	fi

	source ${CONFIG}
	aws sts get-caller-identity || log FATAL "aws authentication failure" 
	local tempfile=$(echo $RANDOM | md5sum | head -c 20; echo)
	touch $TMPDIR/$tempfile
	aws s3 cp $TMPDIR/$tempfile s3://$BUCKET/$STAGE/ 2>&1 1>/dev/null  && \
	aws s3 ls s3://$BUCKET/$STAGE/			 2>&1 1>/dev/null  && \
	aws s3 rm s3://$BUCKET/$STAGE/$tempfile 	 2>&1 1>/dev/null  || log FATAL "aws read or write failure for s3://$BUCKET/$STAGE/"
}

function check
{
	case "${1}" in
	vsql )
		check_vsql SOURCE
		check_vsql TARGET
		;;
	aws )
		check_aws
		;;
	config )
		check_config
		;;
	esac
}

function vsql_catalog
{
	
	local file=catalog
        if [ -r "sql/${file}.sql" ]; then
                log INFO "found config file sql/${file}.sql"
        else    
                log FATAL "config file sql/${file}.sql not found"
        fi
	check_config SOURCE
	${VSQL} -qXAt -f sql/${file}.sql -o out/${file}.sql
	if [ $? -eq 0 ]; then
		log INFO "output written to out/${file}.sql"
		aws s3 cp out/${file}.sql s3://$BUCKET/$STAGE/
		log INFO "output written to s3://$BUCKET/$STAGE/${file}.sql"
	fi
}

function vsql_grants
{
	local file=grants
        if [ -r "sql/${file}.sql" ]; then
                log INFO "found config file sql/${file}.sql"
        else    
                log FATAL "config file sql/${file}.sql not found"
        fi
	check_config SOURCE
	#grant_order|principal_name|sql|object_type|object_name
	${VSQL} -qXAt -v ON_ERROR_STOP=1  -F ${SOH} -R ${STX} -f sql/${file}.sql -o out/${file}.sql
	if [ $? -eq 0 ]; then
		log INFO "output written to out/${file}.sql"
		aws s3 cp out/${file}.sql s3://$BUCKET/$STAGE/
		log INFO "output written to s3://$BUCKET/$STAGE/${file}.sql"
	fi
}

function vsql_dump_objects
{
	
	local file=${1}
	local key=object
	local value=${2}

        if [ -r "sql/${file}.sql" ]; then
                log INFO "found config file sql/${file}.sql"
        else    
                log FATAL "config file sql/${file}.sql not found"
        fi
        if [ -r "sql/${file}.sql" ]; then
                log INFO "found config file sql/${file}.sql"
        else    
                log FATAL "config file sql/${file}.sql not found"
        fi

	[ -z "${key}" ]              && log FATAL "parameter/argument is required for this function"
	[ -z "${value}" ]            && log FATAL "value is required for this ${key}"


	check_config SOURCE
	${VSQL} -qAtX -v ON_ERROR_STOP=1 -v ${key}="'${value}'" -f sql/${file}.sql -o out/${value}.sql
	if [ $? -eq 0 ]; then
		log INFO "output written to out/${value}.sql"
		aws s3 cp out/${value}.sql s3://$BUCKET/$STAGE/
		log INFO "output written to s3://$BUCKET/$STAGE/${value}.sql"
	fi
}

function vsql_parquet
{
	local file=parquet
        if [ -r "sql/${file}.sql" ]; then
                log INFO "found config file sql/${file}.sql"
        else    
                log FATAL "config file sql/${file}.sql not found"
        fi
	check_config SOURCE
	# table_schema | table_name | is_partitioned | row_count | partition_expr 
	${VSQL} -qXAt -v ON_ERROR_STOP=1  -f sql/${file}.sql -o out/${file}.out
	if [ $? -eq 0 ]; then
		log INFO "output written to out/${file}.out"
	fi
}

function vsql_delimited
{
	local file=delimited
        if [ -r "sql/${file}.sql" ]; then
                log INFO "found config file sql/${file}.sql"
        else    
                log FATAL "config file sql/${file}.sql not found"
        fi
	check_config SOURCE
	# table_schema | table_name | is_partitioned | row_count | partition_expr 
	${VSQL} -qXAt -v ON_ERROR_STOP=1   -f sql/${file}.sql -o out/${file}.out
	if [ $? -eq 0 ]; then
		log INFO "output written to out/${file}.out"
	fi
}

function build_delimited_sql
{
	file=out/delimited.out
	while IFS='|' read -r table_schema table_name is_partitioned row_count partition_expr data_types
	do
		#echo "------------------------------"
		#echo "table_schema=${table_schema}"
		#echo "table_name=${table_name}"
		#echo "is_partitioned=${is_partitioned}"
		#echo "row_count=${row_count}"
		#echo "partition_expr=${partition_expr}"
		echo "-- ${row_count}"

		# vertica version < 11.0
		#echo "SELECT s3export(* USING PARAMETERS url='s3://${BUCKET}/${STAGE}/delimited/${table_schema}.${table_name}/dat', delimiter=E'\001', record_terminator=E'\002',compression='bzip', chunksize='10485760', prepend_hash='true') OVER (PARTITION BEST) FROM \"${table_schema}\".\"${table_name}\";"
	
		# vertica version >= 11.0
		echo "EXPORT TO DELIMITED (directory='s3://${BUCKET}/${STAGE}/delimited/${table_schema}.${table_name}/', delimiter=E'\001', recordTerminator=E'\002',compression='bzip', fileExtension='dat' )  as SELECT * FROM \"${table_schema}\".\"${table_name}\";"
	done < ${file} > out/delimited_export.sql
	log INFO "output written to out/delimited_export.sql"

	while IFS='|' read -r table_schema table_name is_partitioned row_count partition_expr data_types
	do
		echo "-- ${row_count}"
		echo "COPY \"${table_schema}\".\"${table_name}\" FROM 's3://${BUCKET}/${STAGE}/delimited/${table_schema}.${table_name}/*' ON ANY NODE BZIP DELIMITER E'\001'  RECORD TERMINATOR E'\002' ABORT ON ERROR STREAM NAME '${table_schema}.${table_name}';"
	done < ${file} > out/delimited_import.sql
	log INFO "output written to out/delimited_import.sql"
}




function build_parquet_sql
{
	file=out/parquet.out
	while IFS='|' read -r table_schema table_name is_partitioned row_count partition_expr data_types
	do
		#echo "------------------------------"
		#echo "table_schema=${table_schema}"
		#echo "table_name=${table_name}"
		#echo "is_partitioned=${is_partitioned}"
		#echo "row_count=${row_count}"
		#echo "partition_expr=${partition_expr}"
		echo "-- ${row_count}"
		echo "EXPORT TO PARQUET (directory='s3://${BUCKET}/${STAGE}/parquet/${table_schema}.${table_name}/')  as SELECT * FROM \"${table_schema}\".\"${table_name}\";"
	done < ${file} > out/parquet_export.sql
	log INFO "output written to out/parquet_export.sql"

	while IFS='|' read -r table_schema table_name is_partitioned row_count partition_expr data_types
	do
		echo "-- ${row_count}"
		echo "COPY \"${table_schema}\".\"${table_name}\" FROM 's3://${BUCKET}/${STAGE}/parquet/${table_schema}.${table_name}/*'  ON ANY NODE PARQUET ABORT ON ERROR STREAM NAME '${table_schema}.${table_name}';"
	done < ${file} > out/parquet_import.sql
	log INFO "output written to out/parquet_import.sql"
}


function run_export 
{
	local file=out/${1}_export.sql
	local concurrency=5
	local n=0
	local i=0
	check_config SOURCE
	while read -r sql
	do
		${VSQL} -qAt -c "${sql}" &
		(( i++ ))
    		(( n = i % concurrency ))
    		if [ ${n} -eq 0 ]; then log INFO "waiting...${i}"; wait; fi
	done <<< $( cat ${file} | grep  -ve"\-\-" )
	wait
}


function run_import
{
	local file=out/${1}_import.sql
	local concurrency=5
	local n=0
	local i=0
	check_config TARGET
	while read -r sql
	do
		${VSQL} -qAt -c "${sql}" &
		(( i++ ))
    		(( n = i % concurrency ))
    		if [ ${n} -eq 0 ]; then log INFO "waiting...${i}"; wait; fi
	done <<< $( cat ${file} | grep  -ve"\-\-" )
	wait
}




function vsql_info
{
	file=info
	while [ true ]; do
		sleep 5
		check_config SOURCE
		${VSQL} -qX -v ON_ERROR_STOP=1 -f sql/${file}.sql 
		check_config TARGET
		${VSQL} -qX -v ON_ERROR_STOP=1 -f sql/${file}.sql 
	done
}

OPTS=`getopt -o hpEIic:d:t:s:l --long help,parquet,info,export,import,check:,ddl:,table:,schema: -n 'example.bash' -- "$@"`
if [ $? != 0 ] ; then echo "Terminating..." >&2 ; exit 1 ; fi
eval set -- "$OPTS"
while true ; do
    case "$1" in
        -h|--help) help; shift ;;
        -c|--check) check ${2} ; shift 2 ;;
        -e|--ddl) 
		type=${2}; 
		case "${type}" in
		catalog)
			vsql_catalog
			;;
		grants)
			vsql_grants
			;;
        	*) 
			log FATAL "unknown option ${2}"
			;;
		esac
		shift 2;
	        ;;
	-t|--table)
		tablename=${2}
		vsql_dump_objects table ${tablename}
		shift 2
		;;
	-s|--schema)
		schemaname=${2}
		vsql_dump_objects schema ${schemaname}
		shift 2
		;;
	-p|--parquet)
		vsql_parquet
		build_parquet_sql
		shift 
		;;
	-l|--delimited)
		vsql_delimited
		build_delimited_sql
		shift 
		;;
	-i|--info)
		vsql_info
		shift
		;;
	-I|--import)
		run_import delimited
		run_import parquet
		shift
		;;

	-E|--export)
		run_export delimited
		run_export parquet
		shift
		;;
        --) shift ; break ;;
        *) echo "Internal error!" ; exit 1 ;;
    esac
done


