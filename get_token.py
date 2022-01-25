import vertica_python
import os
import sys
import logging
import csv
import pandas as pd
import boto3


def get_token():

    sql = []
    client = boto3.client('sts')

    token = client.get_session_token()
    access_key_id = token['Credentials']['AccessKeyId']
    secret_access_key = token['Credentials']['SecretAccessKey']
    session_token = token['Credentials']['SessionToken']
    #expiration = token['Credentials']['Expiration']

    sql.append("ALTER SESSION SET AWSAuth = '"+access_key_id+":"+secret_access_key+"'; ")
    sql.append("ALTER SESSION SET AWSSessionToken = '"+session_token+"';")
    sql.append("SELECT * FROM configuration_parameters where parameter_name ilike '%AWS%';")
    #  print(sql)
    return sql


def run_sql_exec(cmd_set):
 
    conn_info = {'host': os.getenv("TARGET_DB_HOST"), 
        'port': os.getenv("TARGET_DB_PORT"), 
        'user': os.getenv("TARGET_DB_USERNAME"), 
        'password': os.getenv("TARGET_DB_PASSWORD"), 
        'database': os.getenv("TARGET_DB_DATABASE"),
        'log_level': logging.INFO,
        'log_path': ''}

    print("connection:", conn_info['host'])

    with vertica_python.connect(**conn_info) as conn:
        cur = conn.cursor()

        # multiline single sql statement
        for sql in cmd_set:
            print(sql)
            
            try:
                cur.execute(sql)
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
    run_sql_exec(cmd_set)

main()
    
   