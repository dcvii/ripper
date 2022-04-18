CONNECT TO VERTICA teva USER dbadmin PASSWORD '360teva360' ON '10.5.10.15' , 5433;
COPY /*96734*/ migration.users_only_src FROM VERTICA teva.migration.users_only_src;
COPY /*107052*/ migration.grants_src FROM VERTICA teva.migration.grants_src;
COPY /*107437*/ migration.user_src FROM VERTICA teva.migration.user_src;
DISCONNECT teva;
