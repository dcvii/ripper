CONNECT TO VERTICA teva USER dbadmin PASSWORD '360teva360' ON '10.5.10.15' , 5433;
COPY /*2908430882*/ cleansed.ims_mhj_qty_w FROM VERTICA teva.cleansed.ims_mhj_qty_w;
COPY /*4970283974*/ cleansed.fia_fact FROM VERTICA teva.cleansed.fia_fact;
