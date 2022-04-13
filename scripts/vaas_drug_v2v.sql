CONNECT TO VERTICA vaasdemo USER dbadmin PASSWORD 'Alabama7878!' ON '35.166.171.38' , 5433;
COPY /*540*/ drug.ctrx2_src FROM VERTICA teva.drug.ctrx2_src;
DISCONNECT vaasdemo;
