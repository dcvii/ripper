CONNECT TO VERTICA vaasdemo USER dbadmin PASSWORD 'Alabama7878!' ON '35.166.171.38' , 5433;
COPY /*60*/ cortex.iata_xref FROM VERTICA teva.cortex.iata_xref;
COPY /*8292*/ cortex.new_flight FROM VERTICA teva.cortex.new_flight;
COPY /*8296*/ cortex.for_mike FROM VERTICA teva.cortex.for_mike;
DISCONNECT vaasdemo;
