CONNECT TO VERTICA teva USER dbadmin PASSWORD '360teva360' ON '10.5.10.15' , 5433;
COPY /*1026*/ datamart.sfa_reprints FROM VERTICA teva.datamart.sfa_reprints;
COPY /*171379*/ datamart.sfa_promotional_items FROM VERTICA teva.datamart.sfa_promotional_items;
COPY /*3130354*/ datamart.sfa_sample FROM VERTICA teva.datamart.sfa_sample;
COPY /*37563385*/ datamart.tvcmid_xref FROM VERTICA teva.datamart.tvcmid_xref;
COPY /*119913886*/ datamart.prescriber_combined_demographics FROM VERTICA teva.datamart.prescriber_combined_demographics;
COPY /*4940009*/ datamart.specialty_pharmacy_shipment FROM VERTICA teva.datamart.specialty_pharmacy_shipment;
COPY /*2519563975*/ datamart.prescriber_rx FROM VERTICA teva.datamart.prescriber_rx;
DISCONNECT teva;
