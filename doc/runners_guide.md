# runner guide
march 2022

--





## order of runners

It is very important that these runners be executed in the proper order such that we minimize errors with grants and precedence. This is a first estimate.


order  | runner 
------ | ----
02  | run_users    
01  | run_roles
03  | run_schemas
04  | run_pools
05  | run_schema / schemata
06  | run_database
07  | run_access
08  | run_auth
09  | run_grants   
10  | run_locations
11  |




## runners

### sequences

Note that the runner will run this which is a union of two queries:
- out_sequences.sql

This is a combination of creation and alteration of sequences. You should expect some failures because of the following exceptional way that certain sequences are created:


<blockquote>You can only modify a named sequence—that is, a sequence that was defined by CREATE SEQUENCE. AUTO_INCREMENT and IDENTITY sequences are owned by the table where they were created, and cannot be changed independently of that table.</blockquote>

It is presumed that the existence of an `identity_table_name` indicates that a sequence is defined by table ddl. These will therefore not be processed by this runner. 

Therefore it is up to the user to identify those tables which create sequences by their definition and manually synchronize the latest indicies and then write the appropriate alter sequence statement so that new indices will generate properly.

### locations

Before the location runner is kicked off, you should eyeball the `out_locations.sql` file. That is because the locations have to be matched to the target nodes. So this requires a manual editing. 


