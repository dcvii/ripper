import vertica_python
import os
import logging
import pandas as pd
import csv
import numpy as np
import re



def get_vv_string():

    sql = ''
    password = os.getenv("SRC_DB_PASSWORD")
    username = os.getenv("SRC_DB_USERNAME")
    port = os.getenv("SRC_DB_PORT")
    db = os.getenv("SRC_DB_DATABASE")
    host = os.getenv("SRC_DB_HOST")
    #expiration = token['Credentials']['Expiration']

    sql = "CONNECT TO VERTICA "+db+" USER "+username+" PASSWORD "+"'"+password+"' ON '"+host+"' , "+port+";\n"

    return sql

def vert_conn(cfg):
    if cfg == 'tgt':
        conn_info = {'host': os.getenv("TARGET_DB_HOST"), 
        'port': os.getenv("TARGET_DB_PORT"), 
        'user': os.getenv("TARGET_DB_USERNAME"), 
        'password': os.getenv("TARGET_DB_PASSWORD"), 
        'database': os.getenv("TARGET_DB_DATABASE"),
        'log_level': logging.INFO,
        'log_path': ''}
    elif cfg == 'tgt_commit':
        conn_info = {'host': os.getenv("TARGET_DB_HOST"), 
        'port': os.getenv("TARGET_DB_PORT"), 
        'user': os.getenv("TARGET_DB_USERNAME"), 
        'password': os.getenv("TARGET_DB_PASSWORD"), 
        'database': os.getenv("TARGET_DB_DATABASE"),
        'log_level': logging.INFO,
        'autocommit': True,
        'log_path': ''}
    elif cfg == 'src_commit':
        conn_info = {'host': os.getenv("SRC_DB_HOST"), 
        'port': os.getenv("SRC_DB_PORT"), 
        'user': os.getenv("SRC_DB_USERNAME"), 
        'password': os.getenv("SRC_DB_PASSWORD"), 
        'database': os.getenv("SRC_DB_DATABASE"),
        'log_level': logging.INFO,
        'autocommit': True,
        'log_path': ''}

    else:
        conn_info = {'host': os.getenv("SRC_DB_HOST"), 
        'port': os.getenv("SRC_DB_PORT"), 
        'user': os.getenv("SRC_DB_USERNAME"), 
        'password': os.getenv("SRC_DB_PASSWORD"), 
        'database': os.getenv("SRC_DB_DATABASE"),
        'log_level': logging.INFO,
        'log_path': ''}
    return conn_info


def chunk_filter(config):
    print('filtering chunk command set')
    ct = 0
    legit = 0
    with open(config['fname']) as f:
        chars = f.read()
        chunks = []
        cmd = ''
        flagged = False

        for this_char in chars:
            cmd += this_char
            # print('checking:', cmd)
            m0 = re.search(r';',this_char)
            m1 = re.search(config['filter'],cmd)
            if m1 != None:
                flagged = True

            if m0 != None:
                if not flagged:                         
                    chunks.append(cmd)
                    ct += 1
                    legit += 1
                    cmd = ''
                else:
                    # print('chunk rejected')
                    ct += 1
                    cmd = ''
                    flagged = False
        print(ct, 'commands searched')   
        print(legit,'legit commands found:',config['fname'])
        f.close()
    return chunks


def chunkify(fname):
    print('chunking multi sql into command set')
    ct = 0
    with open(fname) as f:
        lines = f.read()
        chunks = []
        cmd = ''

        for this_line in lines:
            cmd += this_line
            m0 = re.search(r';',this_line)
            if m0 != None:                
                chunks.append(cmd)
                ct += 1
                cmd = ''
     
           
        print(ct,'commands found:',fname)
        f.close()
    return chunks


def run_multi_sql(cset,config):
 

    conn_info = vert_conn(config['conn_type'])
    print('running multi sql')
    results = []

    print("connection:", conn_info['host'])
    bucket_key = config['bucket_key']
    function = config['function']
    schema = config['schema']

    fspec = "scripts/failed_"+bucket_key+"_"+schema+"_"+function+"_export.sql"
    with open(fspec,'w') as punt_file:

        #multi multi

        with vertica_python.connect(**conn_info) as conn:
            cur = conn.cursor()

            for cmd in cset:

                try:
                    cur.execute(cmd)
                except:
                    print('FAIL')
                    print(cmd)
                    logging.error("SQL Query Failure")
                    punt_file.write(cmd)
                    rcnt = 0
                    
                else:
                    results = cur.fetchall()
                    df = pd.DataFrame(results)
                    rcnt = 0 or df.shape[0]

                finally:
                    logging.info('-----')
                    logging.info(cmd)
                    logging.info("records: %s", rcnt)
            
        cur.close()
    punt_file.close()
    return results


def run_single_file_sql(config):
 
    conn_info = vert_conn(config['conn_type'])
    print('running single file sql:', config['in_fspec'])
    results = []

    print("connection:", conn_info['host'])
   # bucket_key = config['bucket_key']
  

    with vertica_python.connect(**conn_info) as conn:
        cur = conn.cursor()

        # multiline single sql statement
        sql = open(config['in_fspec'], 'r')
        cmd = ''
        for line in sql:
            cmd += line

        try:
            cur.execute(cmd)
        except:
            print('FAIL')
            logging.error("SQL Query Failure")
            rcnt = 0
            
        else:
            results = cur.fetchall()
            df = pd.DataFrame(results)
            rcnt = 0 or df.shape[0]
            
        finally:
            logging.info('-----')
            logging.info("records: %s", rcnt)
        
    cur.close()
    return results 


def run_single_cmd_commit_sql(config):
 
    conn_info = vert_conn(config['conn_type'])
    print('running single command sql:', config['in_fspec'])
    results = []

    print("connection:", conn_info['host'])
   # bucket_key = config['bucket_key']
  

    with vertica_python.connect(**conn_info) as conn:
        cur = conn.cursor()

        # whatever the param sql statement
        cmd = config['sql']
        cmd += 'commit;'

        try:
            cur.execute(cmd)
        except:
            print('FAIL')
            logging.error("SQL Query Failure")
            rcnt = 0

        else:
            results = cur.fetchall()
            df = pd.DataFrame(results)
            rcnt = 0 or df.shape[0]
            
        finally:
            logging.info('-----')
            logging.info("records: %s", rcnt)
        
    cur.close()
    return results

def run_single_file_commit_sql(config):
 
    conn_info = vert_conn(config['conn_type'])
    print('running single file sql:', config['in_fspec'])
    results = []

    print("connection:", conn_info['host'])
   # bucket_key = config['bucket_key']
  

    with vertica_python.connect(**conn_info) as conn:
        cur = conn.cursor()

        # multiline single sql statement
        sql = open(config['in_fspec'], 'r')
        cmd = ''
        for line in sql:
            cmd += line
        
        cmd += 'commit;'

        try:
            cur.execute(cmd)
        except:
            print('FAIL')
            logging.error("SQL Query Failure")
            rcnt = 0

        else:
            results = cur.fetchall()
            df = pd.DataFrame(results)
            rcnt = 0 or df.shape[0]
            
        finally:
            logging.info('-----')
            logging.info("records: %s", rcnt)
        
    cur.close()
    return results

def run_migration_table(config):
 
    conn_info = vert_conn(config['conn_type'])
    print('running migration table:', config['src_table'])
    results = []

    print("connection:", conn_info['host'])
   # bucket_key = config['bucket_key']
  

    with vertica_python.connect(**conn_info) as conn:
        cur = conn.cursor()

        # multiline single sql statement
        cmd = 'SELECT sql from '+config['src_table']+';'
        
        try:
            cur.execute(cmd)
        except:
            print('FAIL')
            logging.error("SQL Query Failure")
            rcnt = 0

        else:
            results = cur.fetchall()
            df = pd.DataFrame(results)
            rcnt = 0 or df.shape[0]
            
        finally:
            logging.info('-----')
            logging.info("records: %s", rcnt)
        
    cur.close()
    return results


def is_valid_schema(item):
    #bucket_key = os.getenv('TARGET_BUCKET_KEY')
    config = {'in_fspec': 'sql/valids.sql', 'conn_type': 'src', 'bucket_key': 'bucket_key'}
    result_set = run_single_file_sql(config)

    if [item] in result_set:
        print(item, "is valid schema")
        return True
    else:
        print(item, "is NOT valid schema")
        print(result_set)
        return False


def is_valid_teva_schema(s):

    v =['fia',  'sfa_history',  'customer_master', 'migration',  'teva_staging',  'reference',  'raw',  'metadata',  'teva_transform', 
        'archive',  'v_dbd_SRM_20160816',  'payerspine',  'v_dbd_SRM_20160816_SRM_20160816',  'hcos',  'WSMP_ADMIN_ORA',  'integration',  'tableau',  
        'product',  'reporting',  'mdm',  'CUSTOMER_ORA',  'cleansed',  'datamart',  'sandbox',  'teva_ingestion',  'outbound',  'ingestion_reference',  'veeva',  'public' ]
    return s in v
