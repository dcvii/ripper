import re
import sys
import os


def clear_sql(my_path):

    for file_name in os.listdir(my_path):
        if file_name.endswith('.sql'):
            os.remove(my_path + file_name)

def get_table(sql):
    m0 = re.search(r".+\.(?P<table>\w+)",sql)
    # print(m0)
    if m0 != None:
        m = m0.groupdict()
        # print(m)
        return m["table"]
    return 'No Table'

def parse_file(fname):
    ct = 0
    with open(fname) as file:
        lines = file.read()
        for this_line in lines:
            ct+=1
           # print(this_line)
        print(ct,'lines')

def get_schema(line):
    m0 = re.search(r"^[a-zA-Z]+.+ddl",line)
    return m0[0][:-4]

def parse_import_lines(fname,schema):
    tct = 0
    infile = open('ddl/'+fname)
    for this_line in infile:
        m0 = re.search(r"CREATE TABLE",this_line)
        if m0 != None:
            tct+=1
            if tct == 1:
                outname = 'import/'+schema+'_import.sql'
                outfile = open(outname, 'w+') # append
            table = get_table(this_line)
            target = schema+'.'+table
            outstring = "COPY  "+target

            source = s3_import_source(schema, table)
            outstring += " FROM "+source+" PARQUET;\n"
            
            outfile.write(outstring)
    if tct > 0:
        outfile.close()
    infile.close()
    return tct

def parse_export_lines(fname,schema):
    lct = 0
    tct = 0
    infile = open('ddl/'+fname)
    for this_line in infile:
        lct+=1
        m0 = re.search(r"CREATE TABLE",this_line)
        if m0 != None:
            tct+=1
            if tct == 1:
                outname = 'export/'+schema+'_export.sql'
                outfile = open(outname, 'w+')
            
            table = get_table(this_line)
            target = s3_export_target(schema, table)
            #print("EXPORT TO PARQUET ",target)
            outstring = "EXPORT TO PARQUET "+target

            source = schema+'.'+table+';\n'
            #print("AS SELECT * FROM ",source)
            outstring+=" AS SELECT * FROM "+source
               
            outfile.write(outstring)
    if tct > 0:
        outfile.close()
    infile.close()
    return tct

def s3_export_target(schema,table):
    bucket = os.getenv("S3_BUCKET")
    path = "(directory = '"+bucket+"/"+schema+"/"+table+"')"
    return path

def s3_import_source(schema,table):
    bucket = os.getenv("S3_BUCKET")
    path = "'"+bucket+"/"+schema+"/"+table+"/*'"
    return path
    
# main

def main():

    ddl_files = os.listdir('ddl/')
    s_count = 0
    for fname in ddl_files:

        schema = get_schema(fname)
        s_count+=1
        print("schema: "+schema)
        # print("export files")
        #clear_sql('export/')
        l = parse_export_lines(fname, schema)
        print("tables to export: ",l)
        # print("import files")
        #clear_sql('import/')
        parse_import_lines(fname, schema)
        
    print("schemas processed: ",s_count)

main()
