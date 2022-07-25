CONNECT TO VERTICA teva USER dbadmin PASSWORD '360teva360' ON '10.5.10.15' , 5433;
truncate table integration.prescriber_rx;
COPY /*37978495475*/ integration.prescriber_rx FROM VERTICA teva.integration.prescriber_rx;
DISCONNECT teva;
