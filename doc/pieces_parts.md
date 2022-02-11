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
The job of the getters are to 
- get_grants
- get_schema
- get_token (optional)


## The putters
The job of the putters is to push data out to s3 and local flat sql files. These will be the import scripts and the export scripts.

## the exporters
The export tasks push sql commands to the target cluster and run them individually. What will be exported are:
- catalog / schema
- data
- grants




### init\_migration
This will create on the source cluster, a schema and set of tables that keep track of a number of important export scripts. It will also have the grants. 