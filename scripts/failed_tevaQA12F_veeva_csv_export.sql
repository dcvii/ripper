
COPY /*232752638*/ veeva.call FROM VERTICA teva.veeva.call;
COPY /*243894072*/ veeva.call_history FROM VERTICA teva.veeva.call_history;
COPY /*414521653*/ veeva.ids_call FROM VERTICA teva.veeva.ids_call;
COPY /*702296531*/ veeva.ids_call_detail FROM VERTICA teva.veeva.ids_call_detail;
DISCONNECT teva;