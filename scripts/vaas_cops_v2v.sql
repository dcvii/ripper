CONNECT TO VERTICA vaasdemo USER dbadmin PASSWORD 'Alabama7878!' ON '35.166.171.38' , 5433;
COPY /*38*/ cops.event_flx_keys FROM VERTICA teva.cops.event_flx_keys;
COPY /*10000*/ cops.event_flx FROM VERTICA teva.cops.event_flx;
DISCONNECT vaasdemo;
