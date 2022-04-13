CONNECT TO VERTICA vaasdemo USER dbadmin PASSWORD 'Alabama7878!' ON '35.166.171.38' , 5433;
COPY /*150*/ public.iris FROM VERTICA teva.public.iris;
DISCONNECT vaasdemo;
