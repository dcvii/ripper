# running instructions

July 2022


make sure your source database is up and running. 

### environment

- navigate to proper subdirectory
- run `poetry shell` to establish environment
- setup the config. (.envrc)
- optionally run the token.sh to grant 24 hour access to S3
- run the *idempotent* `python init_migration.py` to create the migration metadata on the source database. 



### setup the envrc - sample confg
```
# ## VAASDEMO
# export EXPORT_FORMAT='parquet'
# export SRC_DB_USERNAME='dbadmin'
# export SRC_DB_PASSWORD='Alabama7878!'
# export SRC_DB_DATABASE='vaasdemo'
# export SRC_DB_HOST='35.166.171.38'
# export SRC_DB_PORT='5433'
# export SRC_DB_CLUSTER='vertica-qa-krdz19ca4oe7'

# export S3_BUCKET='s3://demo-data.full360.com'
# export BUCKET_KEY='vaasdemo'

```

#### EXPORT_FORMAT
The default export format is parquet. The migration app will attempt to export the maxiumum number of tables to the parquet format according the limits in Vertica's support of parquet. All tables that fall out of these rules will be exported in CSV. 
You should expect 90+% of tables to be exported into parquet. The default delimiter for CSV should be vertical bar `|`.

**Note** It has been explained that the CSV export is faster than exports to Parquet and does not have any of the limitations of Parquet. 

**Also Note** Vertica 10 does not support exports to delimited. So parquet must be used. 

#### SRC\_DB_CLUSTER 
This environment variable is not used.

#### S3_BUCKET
This is the bucket address. Exports will go to subfolders of this top level bucket.

#### BUCKET_KEY
This is the top level folder of the bucket. It should generally be the same as the database name, but if you run multiple exports, you can add other identifying information. The bucket_key should identify the database and the environment as well as source vs destination.  



## scenario A - all schemas

### step one - get source schema: get_schema.py
This will connect to Vertica and pull all of the schema information necessary. This will create three files in two steps.
In the first step, two files are created. These are the exports.  Both will go into the scripts directory with one named `data_exports.sql` and the other named `xxx_out_parquet.sql` with xxx being the BUCKET_KEY from the .envrc. The `data_export.sql` file is appropriate for loading into the migration schema. 

In the second step, a full export of the schema is created with the standard. Note that this file, when created, has the entirety of the output file SQL embedded in double quotes. It is therefore not a proper sql file and must be manually edited to remove the quotes.

This has consequences for the processing of the catalog as it affects the quoting of the names of objects with embedded spaces. Also other edits require some manual fixing.

Other exceptional matters:
- Take note of the use of reserved words in field definitions. 
- Take note of external tables. They will not necessarily map in the target database.
- Take note of flex tables. The views created will not necessarily work. 
- Take note of public tables. These may fail.
- It is best to manually recreate any projections. Reload only the bare DDL.


### step two - create target schema: run_schema.py
This step can be processed manually by simply running the file generated in step one with vsql. However if there are a large number of statements it makes sense to run it automatically with the put_schema.py. This is because there may be exceptions owing to dependencies. 


### step three - export source data: run\_data_s3
This proc will take a single argument and and validate that it is a porpoer schema. Upon verification, it will copy data from each table in the schema to an appropriately labled s3 bucket. 


### step four - export grant information
This is broken down into several processes that 


### step five - import grant information

### step six - import target data

### step seven - import user & role information

## scenario B - schema by schema

### step one - get\_schemata.py
This proc will run similarly to get_schema above but will generate separate scripts for each of the schemas in the database. In this case, when you execute the runners, you will have to enter the schema as a parameter and data will then be exported for that schema alone. 



## scenario C - object restore

### abstract
If you run an object restore to your target database, this means you will have used `vbr.py` to make a schema by schema copy from the source to the target. The implications will be that users (other than dbadmin) will not have been transferred over. You will have to use the migrator to copy over the following:
- users
- roles
- resource pools
- sequences
- grants
- auth
- ldap
- views

And maybe other oddments. 
