CONNECT TO VERTICA vaasdemo USER dbadmin PASSWORD 'Alabama7878!' ON '35.166.171.38' , 5433;
COPY /*17220*/ survey.opioid_src FROM VERTICA teva.survey.opioid_src;
COPY /*22700*/ survey.hcahps_src FROM VERTICA teva.survey.hcahps_src;
COPY /*38384*/ survey.general_info_src FROM VERTICA teva.survey.general_info_src;
DISCONNECT vaasdemo;
