# Migration Process

### abstract
These are the steps required for a long process vertica migration. These will likely be necessary for Vertica to Vertica when there is a mismatch of shards. 

### step one - extract
The extract process pulls catalog data and grant data from the database.

There are a couple of assumptions here. The first is that it makes sense to recreate the catalog on either a full catalog basis, or on a schema by schema basis. The gating decision has to do with the number of total tables objects to be migrated. If that number is smaller than 1000