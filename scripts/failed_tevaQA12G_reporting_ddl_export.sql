

CREATE  VIEW reporting.fcr_summary AS
 SELECT a.rsm_name,
        a.rsm_title,
        a.region_number,
        a.rsm_email,
        a.sales_rep_name,
        a.sales_rep_title,
        a.territory_number,
        a.sales_rep_email,
        a.fcr_date,
        a.report_status_vod__c
 FROM ( SELECT CASE WHEN (u.isactive = 'false'::varchar(5)) THEN (u.name || ' (inactive)'::varchar(11)) ELSE u.name END AS rsm_name,
        u.title AS rsm_title,
        t21.Name AS region_number,
        u.email AS rsm_email,
        CASE WHEN (a.isactive = 'false'::varchar(5)) THEN (a.name || ' (inactive)'::varchar(11)) ELSE a.name END AS sales_rep_name,
        a.title AS sales_rep_title,
        CASE WHEN (t22.Name IS NULL) THEN 'NA'::varchar(2) ELSE t22.Name END AS territory_number,
        a.email AS sales_rep_email,
        st.review_date_vod__c AS fcr_date,
        st.report_status_vod__c
 FROM (((((((veeva.v_survey s JOIN ( SELECT x.id,
        x.lastmodifieddate,
        x.survey_vod__c,
        x.employee_vod__c,
        x.coach_vod__c,
        x.review_date_vod__c,
        x.report_status_vod__c
 FROM ( SELECT v_survey_target.id,
        v_survey_target.lastmodifieddate,
        v_survey_target.survey_vod__c,
        v_survey_target.Employee_vod__c AS employee_vod__c,
        v_survey_target.coach_vod__c,
        v_survey_target.Review_date_vod__c AS review_date_vod__c,
        v_survey_target.report_status_vod__c,
        rank() OVER (PARTITION BY v_survey_target.Employee_vod__c, v_survey_target.Review_date_vod__c ORDER BY v_survey_target.lastmodifieddate DESC) AS ranker
 FROM veeva.v_survey_target) x
 WHERE (x.ranker = 1)) st ON ((s.id = st.survey_vod__c))) JOIN veeva.v_veeva_user a ON ((st.employee_vod__c = a.id))) JOIN veeva.v_veeva_user u ON ((st.coach_vod__c = u.id))) JOIN veeva.userterritory2association uta1 ON ((st.coach_vod__c = uta1.UserId))) JOIN veeva.territory2 t21 ON ((uta1.Territory2Id = t21.Id))) LEFT  JOIN veeva.userterritory2association uta2 ON (((st.employee_vod__c = uta2.UserId) AND (uta1.file_id = uta2.file_id)))) LEFT  JOIN veeva.territory2 t22 ON (((uta2.Territory2Id = t22.Id) AND (t21.file_id = t22.file_id))))
 WHERE ((s.name = 'Field Coaching Report'::varchar(21)) AND (uta1.file_id IN ( SELECT max(userterritory2association.file_id) AS max
 FROM veeva.userterritory2association)) AND (t21.file_id IN ( SELECT max(territory2.file_id) AS max
 FROM veeva.territory2)) AND (st.review_date_vod__c >= '2021-01-01'::date) AND (substr(t21.Name, 1, 2) = ANY (ARRAY['TR'::varchar(2), 'TP'::varchar(2), 'TN'::varchar(2)])))) a
 WHERE (substr(a.territory_number, 7, 2) <> '99'::varchar(2))
 GROUP BY a.rsm_name,
          a.rsm_title,
          a.region_number,
          a.rsm_email,
          a.sales_rep_name,
          a.sales_rep_title,
          a.territory_number,
          a.sales_rep_email,
          a.fcr_date,
          a.report_status_vod__c;