


CREATE  VIEW reporting.v_nv_dc_chicago_reps AS
 SELECT r.full_name AS rep_name,
        r.title,
        r.territory_number,
        r.territory_name,
        r.team,
        r.hire_date,
        coalesce(m.full_name, 'NA'::varchar(2)) AS manager_name,
        coalesce(d.full_name, 'NA'::varchar(2)) AS director_name
 FROM (((datamart.roster r LEFT  JOIN datamart.roster m ON (((r.parent_territory_number = m.territory_number) AND (r.rep_type = 'REP'::varchar(3))))) LEFT  JOIN datamart.roster d ON (((m.parent_territory_number = d.territory_number) AND (m.rep_type = 'MGR'::varchar(3))))) JOIN (( SELECT current_alignment.territory_number
 FROM datamart.current_alignment
 WHERE ((upper(current_alignment.city) = 'CHICAGO'::varchar(7)) OR (current_alignment.state_code = ANY (ARRAY['DC'::varchar(2), 'NV'::varchar(2)]))) UNION  SELECT aa.territory_number
 FROM (datamart.alternate_alignments aa JOIN datamart.current_alignment ca ON ((aa.zip_code = ca.zip_code)))
 WHERE (((now())::date >= aa.start_date) AND ((now())::date <= aa.end_date) AND ((upper(ca.city) = 'CHICAGO'::varchar(7)) OR (ca.state_code = ANY (ARRAY['DC'::varchar(2), 'NV'::varchar(2)]))))
 GROUP BY aa.territory_number) UNION  SELECT c.territory_number
 FROM (datamart.sfa_call c JOIN datamart.current_alignment ca ON (((c.zip_on_call = ca.zip_code) AND ((upper(ca.city) = 'CHICAGO'::varchar(7)) OR (ca.state_code = ANY (ARRAY['DC'::varchar(2), 'NV'::varchar(2)]))))))
 WHERE ("datediff"('day'::varchar(3), c.call_date, (now())::date) <= 60)
 GROUP BY c.territory_number) t ON ((r.territory_number = t.territory_number)))
 WHERE (r.full_name <> 'Vacant'::varchar(6))
 GROUP BY r.full_name,
          r.title,
          r.territory_number,
          r.territory_name,
          r.team,
          r.hire_date,
          coalesce(m.full_name, 'NA'::varchar(2)),
          coalesce(d.full_name, 'NA'::varchar(2))
 ORDER BY r.territory_number;