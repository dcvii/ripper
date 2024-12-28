#!/bin/bash

FEEDSCHEMANAME="SCH_IMAS_ADMIN"
FEEDTABLENAME="exportfeeder"

VSQL="/opt/vertica/bin/vsql"

. ~/.bash_profile > /dev/null

for row in $($VSQL -XCAtc "select table_schema, table_name from tables where table_definition='' and not(table_schema='$FEEDSCHEMANAME' and table_name='$FEEDTABLENAME') order by table_schema, table_name"); do

   tschema=$(echo $row|awk -F\| '{print $1}')
   ttable=$(echo $row|awk -F\| '{print $2}')

   $VSQL -XCAtc "select '$tschema', '$ttable', count(*) from ${tschema}.${ttable}"    
          
done

exit 0
