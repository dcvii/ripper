# odd objects

The following scripts collect other objects to be migrated.


script  | function |target | script
------- | ----------|-------|------
vcount.sh    | outputs row counts for all tables |   flatfile| odd\_parms_11.sql
dbparms.sql    | alter database default set | odd_parms |odd\_parms\_01.sql
userpwd.sql | md5based | ?
user_ddl | user creation, multifunction user based grants (ordered)| user_ddl
useralter.sql |  user profile info | |odd\_parms_07.sql
rpcreate.sql | resource pools | odd_params
rpalter.sql. | resource pools  | odd_params
locations.sql | storage locations | odd_params
authentications.sql | ? |?
redo\_user_ddls.sql | ? |
ap.sql |access policies | odd_params
ldaplink.sql | ? | ?
profile | ?



### notes on odd objects.

- odd\_parms_02.sql<br>
the original sql is commented out as the v10 source where this code was tested did not contain a field called `trust_grants`. Pay close attention to the documentation of the [CREATE ACCESS POLICY] ( https://www.vertica.com/docs/11.0.x/HTML/Content/Authoring/SQLReferenceManual/Statements/CREATEACCESSPOLICY.htm?zoom_highlight=create%20access%20policy ) as row level security policies may be in place. 