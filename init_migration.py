import vertica_python
import os
import sys
import logging
import pandas as pd

from ripper.multi_multi import chunkify, run_sql



lname = 'log/init_migration.log'
logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')


cmd_set = chunkify('sql/migration_ddl.sql')
config = {'in_fspec': 'sql/get_all_csv.sql', 'out_fspec': 'sql/get_all_schemas.sql', 'export_type': 'csv', 'conn_type': 'src'}
result_set = run_sql(cmd_set,config)


