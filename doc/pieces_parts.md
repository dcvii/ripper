# pieces and parts

## the setup
- poetry
- direnv
- token.sh (optional)
- init_migration

### poetry
**poetry** is a python environment management tool that coordinates both versions of python to be run and those modules to be imported. Running `python shell` will read the `pyproject.toml` file that contains all of the necessary configurations to establish the proper environment.

### direnv
**direnv** is a tool that establishes environment variables and can run bash items as the end user navigates to the directory where the application lives. 

### token.sh
**token.sh** will make, if necessary, the call to `aws sts get-session-token` and set environment variables needed to provide access to S3 as a source or target for exported data.

## The getters
The job of the getters are to pull data from the source cluster and create both run scripts and migration metadata in tables in the source cluster.
- get_grants
- get_schema
- get_schemata
- get_token (optional)
- get_users
- get_pools
- get_auth
- get_odd


## The runners
The job of the runners is to push data and metadata out to s3 and to the target cluster. These will be the import scripts and the export scripts.

- run_data_s3
- run_data_import
- run_grants
- run_tables_only
- run_views_only

## the exporters
The export tasks push sql commands to the target cluster and run them individually. What will be exported are:
- catalog / schema
- data
- grants
- users
- pools
- database settings
- sequences




### init\_migration
This will create on the source cluster, a schema and set of tables that keep track of a number of important export scripts. It will also have the grants. 