CONNECT TO VERTICA teva USER dbadmin PASSWORD '360teva360' ON '10.5.10.15' , 5433;
COPY /*29354134*/ veeva.ids_call_key_message FROM VERTICA teva.veeva.ids_call_key_message;
COPY /*65031378*/ veeva.ids_call FROM VERTICA teva.veeva.ids_call;
COPY /*79840390*/ veeva.call_detail FROM VERTICA teva.veeva.call_detail;
COPY /*98749460*/ veeva.ids_call_detail FROM VERTICA teva.veeva.ids_call_detail;
COPY /*245063779*/ veeva.call_history FROM VERTICA teva.veeva.call_history;
DISCONNECT teva;
