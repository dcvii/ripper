CREATE SCHEMA v_dbd_SRM_20160816;


CREATE TABLE v_dbd_SRM_20160816.vs_designs
(
    design_id int,
    design_name varchar(128),
    ksafety_level int,
    optimization_objective varchar(128),
    design_type varchar(128),
    propose_super_first boolean,
    design_available boolean,
    collected_statistics boolean,
    populate_design_tables_from_queries boolean,
    encoding_design boolean,
    deployment_parallelism int,
    propose_unsegmented_projections boolean,
    analyze_correlations_mode int
);


CREATE TABLE v_dbd_SRM_20160816.vs_design_tables
(
    design_name varchar(128),
    design_table_id  IDENTITY  ( 1 ) ,
    table_schema varchar(128),
    table_name varchar(128),
    table_id int
);


CREATE PROJECTION v_dbd_SRM_20160816.vs_designs_super /*+basename(vs_designs),createtype(A)*/ 
(
 design_id,
 design_name,
 ksafety_level,
 optimization_objective,
 design_type,
 propose_super_first,
 design_available,
 collected_statistics,
 populate_design_tables_from_queries,
 encoding_design,
 deployment_parallelism,
 propose_unsegmented_projections,
 analyze_correlations_mode
)
AS
 SELECT vs_designs.design_id,
        vs_designs.design_name,
        vs_designs.ksafety_level,
        vs_designs.optimization_objective,
        vs_designs.design_type,
        vs_designs.propose_super_first,
        vs_designs.design_available,
        vs_designs.collected_statistics,
        vs_designs.populate_design_tables_from_queries,
        vs_designs.encoding_design,
        vs_designs.deployment_parallelism,
        vs_designs.propose_unsegmented_projections,
        vs_designs.analyze_correlations_mode
 FROM v_dbd_SRM_20160816.vs_designs
 ORDER BY vs_designs.design_id,
          vs_designs.design_name,
          vs_designs.ksafety_level,
          vs_designs.optimization_objective,
          vs_designs.design_type,
          vs_designs.propose_super_first,
          vs_designs.design_available,
          vs_designs.collected_statistics,
          vs_designs.populate_design_tables_from_queries,
          vs_designs.encoding_design,
          vs_designs.deployment_parallelism,
          vs_designs.propose_unsegmented_projections,
          vs_designs.analyze_correlations_mode
UNSEGMENTED ALL NODES;

CREATE PROJECTION v_dbd_SRM_20160816.vs_design_tables_super /*+basename(vs_design_tables),createtype(A)*/ 
(
 design_name,
 design_table_id,
 table_schema,
 table_name,
 table_id
)
AS
 SELECT vs_design_tables.design_name,
        vs_design_tables.design_table_id,
        vs_design_tables.table_schema,
        vs_design_tables.table_name,
        vs_design_tables.table_id
 FROM v_dbd_SRM_20160816.vs_design_tables
 ORDER BY vs_design_tables.design_name,
          vs_design_tables.design_table_id,
          vs_design_tables.table_schema,
          vs_design_tables.table_name,
          vs_design_tables.table_id
UNSEGMENTED ALL NODES;


CREATE  VIEW v_dbd_SRM_20160816.designs AS
 SELECT vs_designs.design_id,
        vs_designs.design_name,
        vs_designs.ksafety_level,
        CASE WHEN (vs_designs.design_type = 'INCREMENTAL'::varchar(11)) THEN NULL ELSE vs_designs.optimization_objective END AS optimization_objective,
        vs_designs.design_type,
        CASE WHEN (vs_designs.design_type = 'INCREMENTAL'::varchar(11)) THEN NULL::boolean ELSE vs_designs.propose_super_first END AS propose_super_first,
        vs_designs.design_available,
        vs_designs.collected_statistics,
        vs_designs.populate_design_tables_from_queries,
        vs_designs.encoding_design,
        vs_designs.deployment_parallelism,
        vs_designs.propose_unsegmented_projections,
        vs_designs.analyze_correlations_mode
 FROM v_dbd_SRM_20160816.vs_designs;

CREATE  VIEW v_dbd_SRM_20160816.design_tables AS
 SELECT vs_design_tables.design_name,
        vs_design_tables.design_table_id,
        vs_design_tables.table_schema,
        vs_design_tables.table_id,
        vs_design_tables.table_name
 FROM v_dbd_SRM_20160816.vs_design_tables;

SELECT MARK_DESIGN_KSAFE(1);

