CONNECT TO VERTICA vaasdemo USER dbadmin PASSWORD 'Alabama7878!' ON '35.166.171.38' , 5433;
COPY /*128*/ ehr.departments_src FROM VERTICA teva.ehr.departments_src;
COPY /*248*/ ehr.hospitals_src FROM VERTICA teva.ehr.hospitals_src;
COPY /*14192*/ ehr.patients_src FROM VERTICA teva.ehr.patients_src;
COPY /*24914*/ ehr.encounters_src FROM VERTICA teva.ehr.encounters_src;
COPY /*29068*/ ehr.icd_nine_lkp_src FROM VERTICA teva.ehr.icd_nine_lkp_src;
COPY /*107574*/ ehr.accounts_src FROM VERTICA teva.ehr.accounts_src;
DISCONNECT vaasdemo;
