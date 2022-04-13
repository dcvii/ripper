CONNECT TO VERTICA vaasdemo USER dbadmin PASSWORD 'Alabama7878!' ON '35.166.171.38' , 5433;
COPY /*535874*/ segment.retail FROM VERTICA teva.segment.retail;
COPY /*537113*/ segment.online_sales FROM VERTICA teva.segment.online_sales;
DISCONNECT vaasdemo;
