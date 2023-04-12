
echo 'getting ddl'
python get_ddl.py $1
echo 'getting audit'
python get_audit.py $1
echo 'running ddl'
python run_ddl.py $1
echo 'pushing data'
python run_data_s3.py $1
echo 'running audit'
python run_audit.py $1
echo 'job complete'
say 'This work is done.'

