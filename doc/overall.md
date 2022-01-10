# Migration Process

### abstract
These are the steps required for a long process vertica migration. These will likely be necessary for Vertica to Vertica when there is a mismatch of shards. 

### step one - extract
The extract process pulls catalog data and grant data from the database.

There are a couple of assumptions here. The first is that it makes sense to recreate the catalog on either a full catalog basis, or on a schema by schema basis. The gating decision has to do with the number of total tables objects to be migrated. If that number is smaller than 1000, then we can go. Otherwise this has to be blocked out into manageable chunks. 

## step two - ddl
The first method is the full catalog method. So the getter will get ddl both ways. The first is to get the entire catalog and then it will pull ddl schema by schema. The third way is for export and import of a single schema. 

## migration scope

There are four scopes for the migration.
- one: entire database catalog
- two: schema by schema
- three: single schema
- four: single table

## what remains
This needs a facility to pull resource pool assignments, and grant them. It is unclear if the current grant script gets that. 
