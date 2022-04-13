CONNECT TO VERTICA vaasdemo USER dbadmin PASSWORD 'Alabama7878!' ON '35.166.171.38' , 5433;
COPY /*5644538*/ cyclist.trip_data_2021_src FROM VERTICA teva.cyclist.trip_data_2021_src;
DISCONNECT vaasdemo;
