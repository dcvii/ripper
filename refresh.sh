
echo 'refresh audit'
python refresh_audit.py $1
echo 'getting audit'
python get_audit.py $1
echo 'running ddl'
python run_ddl.py $1
echo 'pushing data'
python run_data_v2v.py $1
echo 'running audit'
python run_audit.py $1
echo 'job complete'
say -v Yuri 'This work is done.'

