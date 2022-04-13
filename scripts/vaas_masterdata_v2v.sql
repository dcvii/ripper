CONNECT TO VERTICA vaasdemo USER dbadmin PASSWORD 'Alabama7878!' ON '35.166.171.38' , 5433;
COPY /*548*/ masterdata.lsad_lkp FROM VERTICA teva.masterdata.lsad_lkp;
COPY /*40600*/ masterdata.alteryx_input FROM VERTICA teva.masterdata.alteryx_input;
COPY /*59150*/ masterdata.places_src FROM VERTICA teva.masterdata.places_src;
COPY /*1000000*/ masterdata.names_01_src FROM VERTICA teva.masterdata.names_01_src;
DISCONNECT vaasdemo;
