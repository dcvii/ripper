# running instructions


make sure your database is up and running. 

### environment

- navigate to proper subdirectory
- run `poetry shell` to establish environment
- setup the config.
- run the `migration_ddl.sql` to create the migration metadata on the source database. 



### setup the envrc - sample confg
```
# ## VAASDEMO
# export EXPORT_FORMAT='parquet'
# export DB_USERNAME='dbadmin'
# export DB_PASSWORD='Alabama7878!'
# export DB_DATABASE='vaasdemo'
# export DB_HOST='35.166.171.38'
# export DB_PORT='5433'
# export DB_CLUSTER='vertica-qa-krdz19ca4oe7'

# export S3_BUCKET='s3://demo-data.full360.com'
# export BUCKET_KEY='vaasdemo'

```

#### EXPORT_FORMAT
The default export format is parquet. The migration app will attempt to export the maxiumum number of tables to the parquet format according the limits in Vertica's support of parquet. All tables that fall out of these rules will be exported in CSV. 
You should expect 90+% of tables to be exported into parquet. The default delimiter for CSV should be vertical bar `|`.

#### DB_CLUSTER 
This environment variable is not used.

#### S3_BUCKET
This is the bucket address. Exports will go to subfolders of this top level bucket.

#### BUCKET_KEY
This is the top level folder of the bucket. It should generally be the same as the database name, but if you run multiple exports, you can add other identifying information.


## scenario A - all schemas

### step one - run get_schema.py
This will connect to Vertica and pull all of the schema information necessary 


## scenario B