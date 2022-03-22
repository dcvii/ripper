# runner guide
march 2022

--





## order of runners

It is very important that these runners be executed in the proper order such that we minimize errors with grants and precedence. This is a first estimate. The order of the grants follows. As the getters can be run in any order, each set of runners will handle a unique set of objects from the source databa


order  | runner 
------ | ----
01  | run_roles    
02  | run_users
03  | run_schemas
04  | run_pools
05  | run_schema / schemata
06  | run_db
07  | run_access
08  | run_auth
10  | run_locations
11  |




## runners

### sequences

Note that the runner will run this which is a union of two queries:
- out_sequences.sql

This is a combination of creation and alteration of sequences. You should expect some failures because of the following exceptional way that certain sequences are created:


<blockquote>You can only modify a named sequence—that is, a sequence that was defined by CREATE SEQUENCE. AUTO_INCREMENT and IDENTITY sequences are owned by the table where they were created, and cannot be changed independently of that table.</blockquote>

It is presumed that the existence of an `identity_table_name` indicates that a sequence is defined by table ddl. These will therefore not be processed by this runner. 

Therefore it is up to the user to identify those tables which create sequences by their definition and manually synchronize the latest indices and then write the appropriate alter sequence statement so that new indices will generate properly.

### locations

The default getter should create storage locations that are shared by all nodes. But you can run the getter by using the alternative sql `locations_by_node.sql`. This will create target storage locations node by node. If you use this alternative, before the location runner is kicked off, you should eyeball the `out_locations.sql` file. That is because the locations have to be matched to the target nodes. So this requires a manual editing. For example, if you have 6 nodes at the target, but three at the source, there will only be 3 statements.  

### roles
Note that these roles are created from the invisible schema v_internal. The query that lets us get these is:
```
SELECT 0 as grant_order,
       name principal_name,
       'CREATE ROLE "' || name || '"' ||    ';' AS sql,
       'NONE' AS object_type,
       'NONE' AS object_name
  FROM v_internal.vs_roles vr
 WHERE NOT vr.predefined_role -- Exclude system roles
   AND ldapdn = '' ;           -- Limit to NON-LDAP created roles
```

So it should exclude system and LDAP roles. This may or may not be sufficient and may have to be manually added to as part of the migration. 

### database
This will be a small set of instructions from the `configuration\_parameters` system table. These are not primarily database parameters and the general getter query could potentially be expanded to the entire set. Note that the qualification on the query compares the default to the current setting. Some of the parameters do not have default settings.

### access
This will probably be a small set, but still run as a cset. Note that the original code is not abpplicable to Teva. Assuming there is a spec change between v10 and V11, the getter for access should point either to ap.sql or apV10.sql.


