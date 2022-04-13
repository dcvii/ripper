CONNECT TO VERTICA vaasdemo USER dbadmin PASSWORD 'Alabama7878!' ON '35.166.171.38' , 5433;
COPY /*1000*/ brdbeer.user_agent FROM VERTICA teva.brdbeer.user_agent;
COPY /*10000*/ brdbeer.page_dimension FROM VERTICA teva.brdbeer.page_dimension;
COPY /*50000*/ brdbeer.session_dim FROM VERTICA teva.brdbeer.session_dim;
DISCONNECT vaasdemo;
