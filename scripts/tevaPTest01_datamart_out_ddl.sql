CREATE SCHEMA datamart;


CREATE  VIEW datamart.territory_region_area_hierarchy AS
 SELECT a.geography_number AS territory_number,
        a.geography_name AS territory_name,
        b.geography_number AS region_number,
        b.geography_name AS region_name,
        c.geography_number AS area_number,
        c.geography_name AS area_name
 FROM ((datamart.sales_geography a LEFT  JOIN datamart.sales_geography b ON ((a.parent_geography_number = b.geography_number))) LEFT  JOIN datamart.sales_geography c ON ((b.parent_geography_number = c.geography_number)))
 ORDER BY a.geography_number;