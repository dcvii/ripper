CONNECT TO VERTICA vaasdemo USER dbadmin PASSWORD 'Alabama7878!' ON '35.166.171.38' , 5433;
COPY /*2000000*/ click.main_fact FROM VERTICA teva.click.main_fact;
DISCONNECT vaasdemo;
