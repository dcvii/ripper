CONNECT TO VERTICA vaasdemo USER dbadmin PASSWORD 'Alabama7878!' ON '35.166.171.38' , 5433;
COPY /*1143*/ migration.target_grants FROM VERTICA teva.migration.target_grants;
COPY /*1330*/ migration.grants_src FROM VERTICA teva.migration.grants_src;
COPY /*2286*/ migration.target_grants_src FROM VERTICA teva.migration.target_grants_src;
DISCONNECT vaasdemo;
