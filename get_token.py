import vertica_python
import os
import sys
import logging
import csv
import pandas as pd
import boto3


def get_token():

    client = boto3.client('sts')

    token = client.get_session_token()
    access_key_id = token['Credentials']['AccessKeyId']
    secret_access_key = token['Credentials']['SecretAccessKey']
    session_token = token['Credentials']['SessionToken']
    #expiration = token['Credentials']['Expiration']

    sql = "ALTER SESSION SET AWSAuth = '"+access_key_id+":"+secret_access_key+"'; ALTER SESSION SET AWSSessionToken = '"+session_token+"';"
    #  print(sql)
    return sql


def run_sql_exec(cmd):
 
    conn_info = {'host': os.getenv("DB_HOST"), 
        'port': os.getenv("DB_PORT"), 
        'user': os.getenv("DB_USERNAME"), 
        'password': os.getenv("DB_PASSWORD"), 
        'database': os.getenv("DB_DATABASE"),
        'log_level': logging.INFO,
        'log_path': ''}

    print("connection:", conn_info['host'])

    with vertica_python.connect(**conn_info) as conn:
        cur = conn.cursor()

        # multiline single sql statement
          
        try:
            cur.execute(cmd)
        except:
            print('FAIL')
            logging.error("SQL Query Failure")
            rcnt = 0

        else:
            results = cur.fetchall()
            df = pd.DataFrame(results)
            rcnt = df.shape[0]
            logging.info(results)
            
        finally:
            logging.info('-----')
            logging.info("records: %s", rcnt)
        
    cur.close()

    for row in results:
        #outstring = row

        print(row)
        #outstring+="\n"
        
    
    
def main():

    lname = 'log/get_token.log'
    logging.basicConfig(filename=lname, level=logging.INFO, format='%(asctime)s %(message)s')

    cmd_set = get_token()
    cmd_set += " SELECT * FROM configuration_parameters where parameter_name ilike '%AWS%';"
    run_sql_exec(cmd_set)

main()
    
   