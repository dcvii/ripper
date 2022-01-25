
EXPORT TO parquet (directory='s3://demo-data.full360.com/vaasdemo/cops/event_flx_keys') AS SELECT * FROM cops.event_flx_keys;
EXPORT TO parquet (directory='s3://demo-data.full360.com/vaasdemo/cops/event_flx') AS SELECT * FROM cops.event_flx;
EXPORT TO parquet (directory='s3://demo-data.full360.com/vaasdemo/drug/ctrx2_src') AS SELECT * FROM drug.ctrx2_src;