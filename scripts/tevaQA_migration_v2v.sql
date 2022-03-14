CONNECT TO VERTICA teva USER dbadmin PASSWORD '360teva360' ON '10.5.10.15' , 5433;
COPY migration.odd_parms_src FROM VERTICA teva.migration.odd_parms_src;
COPY migration.users_only_src FROM VERTICA teva.migration.users_only_src;
COPY migration.user_src FROM VERTICA teva.migration.user_src;
COPY migration.grants_src FROM VERTICA teva.migration.grants_src;
DISCONNECT teva;
