CONNECT TO VERTICA teva USER dbadmin PASSWORD '360teva360' ON '10.5.10.15' , 5433;
COPY /*93318*/ datamart.dddmd_demographics_detail FROM VERTICA teva.datamart.dddmd_demographics_detail;
COPY /*51629428*/ datamart.rx_deciles FROM VERTICA teva.datamart.rx_deciles;
COPY /*25273*/ datamart.time_off_territory FROM VERTICA teva.datamart.time_off_territory;
COPY /*746371920*/ datamart.prescriber_rx_qty_base FROM VERTICA teva.datamart.prescriber_rx_qty_base;
COPY /*2451782260*/ datamart.prescriber_rx FROM VERTICA teva.datamart.prescriber_rx;
COPY /*155619*/ datamart.sfa_sample FROM VERTICA teva.datamart.sfa_sample;
COPY /*167042*/ datamart.sfa_promotional_items FROM VERTICA teva.datamart.sfa_promotional_items;
DISCONNECT teva;

