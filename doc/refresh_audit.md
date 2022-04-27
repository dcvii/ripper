# migration audit
april 2022

--
## abstract
The migration will need to be constantly audited to make sure everything is completely migrated properly. There are a number of things that can go wrong. The point of this part of the migrator process is to incrementally find and correct errors in the data migration process.


### terms
- **reject**<br>
A reject occurs when a data run fails to send any records to the target cluster. These are evaluated on a table by table basis. So the `get_rejects.py` will take a schema parameter and check to see if the count at the target cluster is 0

- **partial**<br>
A partial occurs when the data changes in the source cluster. This can be evaluated by checking the 

- overload<b>
An overload occurs when 

- **audit**<br>
An audit needs to take place each time data is run from the source cluster to the target cluster. It sill be invoked 

### init audit
this should happen after the init_migration and before the data run. Once the data is run, you will need to check to see what rejects have occurd.  

### get rejects


### run rejects


### refresh audit
After rejects have been rerun, a refresh audit should be run. It is reasonable to add a call to this (which works against all schemas) after each data run. As of this writing there have been performance problems running the four passes over the audit table. 



### refresh audit
This is an idempotent process that will compare `src_row_count` to `tgt_row_count`. If they are unequal, export_success is set to `false` and `update_ts` is set to sysdate(). The 01 item will update the target schema row counts. The 02 item will update the partials. Item 03 is for overloads and item 04 is for rejects.


**01 - update target counts**
```
update migration.audit a 
set tgt_row_count = c.row_count,
update_ts = sysdate() 
from migration.current_row_counts c 
where a.table_schema = c.table_schema and a.table_name = c.table_name and a.tgt_row_count <> c.row_count;
```


**02 - partials**
```
update migration.audit 
set update_ts = sysdate(),
export_success = false,
export_status = 'partial'
where src_row_count > tgt_row_count;
```

**03 - overloads**
```
update migration.audit 
set update_ts = sysdate(),
export_success = false,
export_status = 'overload'
where src_row_count < tgt_row_count;
```

**04 - rejects**
```
update migration.audit 
set update_ts = sysdate(),
export_success = false,
export_status = 'reject'
where tgt_row_count = 0;

```



