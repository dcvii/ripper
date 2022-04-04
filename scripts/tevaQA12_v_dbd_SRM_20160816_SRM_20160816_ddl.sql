CREATE SCHEMA v_dbd_SRM_20160816_SRM_20160816;

CREATE SEQUENCE v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_seq  CACHE      1 ;

CREATE TABLE v_dbd_SRM_20160816_SRM_20160816.vs_design_queries
(
    design_id int,
    design_name varchar(128),
    design_query_id int,
    design_query_id_index int,
    query_text varchar(65000),
    weight float,
    design_query_search_path varchar(65000),
    design_query_signature int
);


CREATE TABLE v_dbd_SRM_20160816_SRM_20160816.vs_design_overrides
(
    design_override_group_id int,
    design_override_id int NOT NULL,
    design_override_category varchar(128),
    design_override_type int,
    design_query_id int,
    subquery_id int,
    join_id int,
    table_id int,
    design_override_columns varchar(65000),
    CONSTRAINT C_PRIMARY PRIMARY KEY (design_override_id) DISABLED
);


CREATE TABLE v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_subqueries
(
    design_query_id int NOT NULL,
    subquery_id int NOT NULL,
    query_type varchar(128),
    rewritten_query_text varchar(65000),
    proposed_design int,
    CONSTRAINT C_PRIMARY PRIMARY KEY (design_query_id, subquery_id) DISABLED
);


CREATE TABLE v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_expressions
(
    design_query_id int NOT NULL,
    subquery_id int NOT NULL,
    expression_id int NOT NULL,
    expression_string varchar(65000),
    clause varchar(128),
    expression_type varchar(128),
    ordinal_position_in_clause int,
    alias varchar(128),
    CONSTRAINT C_PRIMARY PRIMARY KEY (design_query_id, subquery_id, expression_id) DISABLED
);


CREATE TABLE v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_from
(
    design_query_id int NOT NULL,
    subquery_id int NOT NULL,
    from_id int NOT NULL,
    table_or_subquery_id int,
    alias varchar(128),
    CONSTRAINT C_PRIMARY PRIMARY KEY (design_query_id, subquery_id, from_id) DISABLED
);


CREATE TABLE v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_columns
(
    design_query_id int,
    subquery_id int,
    from_id int,
    ordinal_position int,
    expression_id int
);


CREATE TABLE v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_joins
(
    design_query_id int NOT NULL,
    subquery_id int NOT NULL,
    join_id int NOT NULL,
    from_id_1 int,
    from_id_2 int,
    join_type varchar(128),
    join_property int,
    proposed_design int,
    CONSTRAINT C_PRIMARY PRIMARY KEY (design_query_id, subquery_id, join_id) DISABLED
);


CREATE TABLE v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_join_predicates
(
    design_query_id int,
    subquery_id int,
    join_id int,
    expression_id int
);


CREATE TABLE v_dbd_SRM_20160816_SRM_20160816.vs_output_event_history
(
    time_stamp timestamp,
    design_id int,
    design_name varchar(128),
    stage_type varchar(128),
    iteration_number int,
    total_query_count int,
    remaining_query_count int,
    max_step_number int,
    current_step_number int,
    current_step_description varchar(65000),
    table_id int
);


CREATE PROJECTION v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_super /*+basename(vs_design_queries),createtype(A)*/ 
(
 design_id,
 design_name,
 design_query_id,
 design_query_id_index,
 query_text,
 weight,
 design_query_search_path,
 design_query_signature
)
AS
 SELECT vs_design_queries.design_id,
        vs_design_queries.design_name,
        vs_design_queries.design_query_id,
        vs_design_queries.design_query_id_index,
        vs_design_queries.query_text,
        vs_design_queries.weight,
        vs_design_queries.design_query_search_path,
        vs_design_queries.design_query_signature
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries
 ORDER BY vs_design_queries.design_id,
          vs_design_queries.design_name,
          vs_design_queries.design_query_id,
          vs_design_queries.design_query_id_index,
          vs_design_queries.query_text,
          vs_design_queries.weight,
          vs_design_queries.design_query_search_path,
          vs_design_queries.design_query_signature
UNSEGMENTED ALL NODES;

CREATE PROJECTION v_dbd_SRM_20160816_SRM_20160816.vs_design_overrides_super /*+basename(vs_design_overrides),createtype(A)*/ 
(
 design_override_group_id,
 design_override_id,
 design_override_category,
 design_override_type,
 design_query_id,
 subquery_id,
 join_id,
 table_id,
 design_override_columns
)
AS
 SELECT vs_design_overrides.design_override_group_id,
        vs_design_overrides.design_override_id,
        vs_design_overrides.design_override_category,
        vs_design_overrides.design_override_type,
        vs_design_overrides.design_query_id,
        vs_design_overrides.subquery_id,
        vs_design_overrides.join_id,
        vs_design_overrides.table_id,
        vs_design_overrides.design_override_columns
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_overrides
 ORDER BY vs_design_overrides.design_override_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_subqueries_super /*+basename(vs_design_queries_subqueries),createtype(A)*/ 
(
 design_query_id,
 subquery_id,
 query_type,
 rewritten_query_text,
 proposed_design
)
AS
 SELECT vs_design_queries_subqueries.design_query_id,
        vs_design_queries_subqueries.subquery_id,
        vs_design_queries_subqueries.query_type,
        vs_design_queries_subqueries.rewritten_query_text,
        vs_design_queries_subqueries.proposed_design
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_subqueries
 ORDER BY vs_design_queries_subqueries.design_query_id,
          vs_design_queries_subqueries.subquery_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_expressions_super /*+basename(vs_design_queries_expressions),createtype(A)*/ 
(
 design_query_id,
 subquery_id,
 expression_id,
 expression_string,
 clause,
 expression_type,
 ordinal_position_in_clause,
 alias
)
AS
 SELECT vs_design_queries_expressions.design_query_id,
        vs_design_queries_expressions.subquery_id,
        vs_design_queries_expressions.expression_id,
        vs_design_queries_expressions.expression_string,
        vs_design_queries_expressions.clause,
        vs_design_queries_expressions.expression_type,
        vs_design_queries_expressions.ordinal_position_in_clause,
        vs_design_queries_expressions.alias
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_expressions
 ORDER BY vs_design_queries_expressions.design_query_id,
          vs_design_queries_expressions.subquery_id,
          vs_design_queries_expressions.expression_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_from_super /*+basename(vs_design_queries_from),createtype(A)*/ 
(
 design_query_id,
 subquery_id,
 from_id,
 table_or_subquery_id,
 alias
)
AS
 SELECT vs_design_queries_from.design_query_id,
        vs_design_queries_from.subquery_id,
        vs_design_queries_from.from_id,
        vs_design_queries_from.table_or_subquery_id,
        vs_design_queries_from.alias
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_from
 ORDER BY vs_design_queries_from.design_query_id,
          vs_design_queries_from.subquery_id,
          vs_design_queries_from.from_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_columns_super /*+basename(vs_design_queries_columns),createtype(A)*/ 
(
 design_query_id,
 subquery_id,
 from_id,
 ordinal_position,
 expression_id
)
AS
 SELECT vs_design_queries_columns.design_query_id,
        vs_design_queries_columns.subquery_id,
        vs_design_queries_columns.from_id,
        vs_design_queries_columns.ordinal_position,
        vs_design_queries_columns.expression_id
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_columns
 ORDER BY vs_design_queries_columns.design_query_id,
          vs_design_queries_columns.subquery_id,
          vs_design_queries_columns.from_id,
          vs_design_queries_columns.ordinal_position,
          vs_design_queries_columns.expression_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_joins_super /*+basename(vs_design_queries_joins),createtype(A)*/ 
(
 design_query_id,
 subquery_id,
 join_id,
 from_id_1,
 from_id_2,
 join_type,
 join_property,
 proposed_design
)
AS
 SELECT vs_design_queries_joins.design_query_id,
        vs_design_queries_joins.subquery_id,
        vs_design_queries_joins.join_id,
        vs_design_queries_joins.from_id_1,
        vs_design_queries_joins.from_id_2,
        vs_design_queries_joins.join_type,
        vs_design_queries_joins.join_property,
        vs_design_queries_joins.proposed_design
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_joins
 ORDER BY vs_design_queries_joins.design_query_id,
          vs_design_queries_joins.subquery_id,
          vs_design_queries_joins.join_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_join_predicates_super /*+basename(vs_design_queries_join_predicates),createtype(A)*/ 
(
 design_query_id,
 subquery_id,
 join_id,
 expression_id
)
AS
 SELECT vs_design_queries_join_predicates.design_query_id,
        vs_design_queries_join_predicates.subquery_id,
        vs_design_queries_join_predicates.join_id,
        vs_design_queries_join_predicates.expression_id
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_join_predicates
 ORDER BY vs_design_queries_join_predicates.design_query_id,
          vs_design_queries_join_predicates.subquery_id,
          vs_design_queries_join_predicates.join_id,
          vs_design_queries_join_predicates.expression_id
UNSEGMENTED ALL NODES;

CREATE PROJECTION v_dbd_SRM_20160816_SRM_20160816.vs_output_event_history_super /*+basename(vs_output_event_history),createtype(A)*/ 
(
 time_stamp,
 design_id,
 design_name,
 stage_type,
 iteration_number,
 total_query_count,
 remaining_query_count,
 max_step_number,
 current_step_number,
 current_step_description,
 table_id
)
AS
 SELECT vs_output_event_history.time_stamp,
        vs_output_event_history.design_id,
        vs_output_event_history.design_name,
        vs_output_event_history.stage_type,
        vs_output_event_history.iteration_number,
        vs_output_event_history.total_query_count,
        vs_output_event_history.remaining_query_count,
        vs_output_event_history.max_step_number,
        vs_output_event_history.current_step_number,
        vs_output_event_history.current_step_description,
        vs_output_event_history.table_id
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_output_event_history
 ORDER BY vs_output_event_history.time_stamp,
          vs_output_event_history.design_id,
          vs_output_event_history.design_name,
          vs_output_event_history.stage_type,
          vs_output_event_history.iteration_number,
          vs_output_event_history.total_query_count,
          vs_output_event_history.remaining_query_count,
          vs_output_event_history.max_step_number,
          vs_output_event_history.current_step_number,
          vs_output_event_history.current_step_description,
          vs_output_event_history.table_id
UNSEGMENTED ALL NODES;


CREATE  VIEW v_dbd_SRM_20160816_SRM_20160816.design_queries AS
 SELECT vs_design_queries.design_id,
        vs_design_queries.design_name,
        vs_design_queries.design_query_id,
        vs_design_queries.design_query_id_index,
        vs_design_queries.query_text,
        vs_design_queries.weight,
        vs_design_queries.design_query_search_path,
        vs_design_queries.design_query_signature
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries;

CREATE  VIEW v_dbd_SRM_20160816_SRM_20160816.design_overrides AS
 SELECT vs_design_overrides.design_override_id,
        vs_design_overrides.design_override_group_id,
        vs_design_overrides.design_override_category,
        CASE WHEN (vs_design_overrides.design_override_type = 1) THEN 'GROUPBY_PIPELINED'::varchar(17) WHEN (vs_design_overrides.design_override_type = 2) THEN 'GROUPBY_FULLY_DISTRIBUTED'::varchar(25) WHEN (vs_design_overrides.design_override_type = 3) THEN 'JOIN_MERGE'::varchar(10) WHEN (vs_design_overrides.design_override_type = 4) THEN 'JOIN_FULLY_DISTRIBUTED'::varchar(22) WHEN (vs_design_overrides.design_override_type = 1001) THEN 'ORDER BY'::varchar(8) WHEN (vs_design_overrides.design_override_type = 1002) THEN 'SEGMENTED BY'::varchar(12) ELSE 'UNKNOWN'::varchar(7) END AS design_override_type,
        vs_design_overrides.design_query_id,
        vs_design_overrides.subquery_id,
        vs_design_overrides.join_id,
        vs_design_overrides.table_id,
        vs_design_overrides.design_override_columns
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_overrides;

CREATE  VIEW v_dbd_SRM_20160816_SRM_20160816.design_queries_subqueries AS
 SELECT vs_design_queries_subqueries.design_query_id,
        vs_design_queries_subqueries.subquery_id,
        vs_design_queries_subqueries.query_type,
        vs_design_queries_subqueries.rewritten_query_text
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_subqueries;

CREATE  VIEW v_dbd_SRM_20160816_SRM_20160816.design_queries_expressions AS
 SELECT vs_design_queries_expressions.design_query_id,
        vs_design_queries_expressions.subquery_id,
        vs_design_queries_expressions.expression_id,
        vs_design_queries_expressions.expression_string,
        vs_design_queries_expressions.expression_type,
        vs_design_queries_expressions.clause,
        vs_design_queries_expressions.ordinal_position_in_clause,
        vs_design_queries_expressions.alias
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_expressions;

CREATE  VIEW v_dbd_SRM_20160816_SRM_20160816.design_queries_from AS
 SELECT ft.design_query_id,
        ft.subquery_id,
        ft.from_id,
        ft.table_or_subquery_id,
        ft.alias,
        tables.table_schema,
        tables.table_name
 FROM (v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_from ft LEFT  JOIN v_catalog.tables ON ((ft.table_or_subquery_id = tables.table_id)));

CREATE  VIEW v_dbd_SRM_20160816_SRM_20160816.design_queries_columns AS
 SELECT ct.design_query_id,
        ct.subquery_id,
        columns.table_schema,
        columns.table_name,
        columns.column_name,
        et.clause,
        et.expression_string,
        et.expression_id
 FROM (((v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_columns ct JOIN v_dbd_SRM_20160816_SRM_20160816.design_queries_from ft ON (((ct.design_query_id = ft.design_query_id) AND (ct.subquery_id = ft.subquery_id) AND (ct.from_id = ft.from_id)))) JOIN v_catalog.columns ON (((ft.table_or_subquery_id = columns.table_id) AND (ct.ordinal_position = columns.ordinal_position)))) JOIN v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_expressions et ON (((ct.design_query_id = et.design_query_id) AND (ct.subquery_id = et.subquery_id) AND (ct.expression_id = et.expression_id))));

CREATE  VIEW v_dbd_SRM_20160816_SRM_20160816.design_queries_joins AS
 SELECT jt.design_query_id,
        jt.subquery_id,
        jt.join_id,
        ot.table_schema AS table1_schema,
        ot.table_name AS table1_name,
        it.table_schema AS table2_schema,
        it.table_name AS table2_name,
        jt.join_type,
        ((jt.join_property & 4) = 4) AS is_fk_pk,
        ((jt.join_property & 8) = 8) AS is_partial_fk_pk
 FROM ((v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_joins jt JOIN v_dbd_SRM_20160816_SRM_20160816.design_queries_from ot ON (((jt.design_query_id = ot.design_query_id) AND (jt.subquery_id = ot.subquery_id) AND (jt.from_id_1 = ot.from_id)))) JOIN v_dbd_SRM_20160816_SRM_20160816.design_queries_from it ON (((jt.design_query_id = it.design_query_id) AND (jt.subquery_id = it.subquery_id) AND (jt.from_id_2 = it.from_id))));

CREATE  VIEW v_dbd_SRM_20160816_SRM_20160816.proposed_design AS
(( SELECT sq.design_query_id,
        sq.subquery_id,
        NULL::int AS join_id,
        CASE WHEN ((sq.proposed_design & 1) = 1) THEN 'GROUPBY_PIPELINED'::varchar(17) ELSE NULL END AS proposed_design
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_subqueries sq
 WHERE ((sq.proposed_design & 1) <> 0) UNION ALL  SELECT sq.design_query_id,
        sq.subquery_id,
        NULL::int AS join_id,
        CASE WHEN ((sq.proposed_design & 2) = 2) THEN 'GROUPBY_FULLY_DISTRIBUTED'::varchar(25) ELSE NULL END AS proposed_design
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_subqueries sq
 WHERE ((sq.proposed_design & 2) <> 0)) UNION ALL  SELECT jt.design_query_id,
        jt.subquery_id,
        jt.join_id,
        CASE WHEN ((jt.proposed_design & 4) = 4) THEN 'JOIN_MERGE'::varchar(10) ELSE NULL END AS proposed_design
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_joins jt
 WHERE ((jt.proposed_design & 4) <> 0)) UNION ALL  SELECT jt.design_query_id,
        jt.subquery_id,
        jt.join_id,
        CASE WHEN ((jt.proposed_design & 8) = 8) THEN 'JOIN_FULLY_DISTRIBUTED'::varchar(22) ELSE NULL END AS proposed_design
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_joins jt
 WHERE ((jt.proposed_design & 8) <> 0);

CREATE  VIEW v_dbd_SRM_20160816_SRM_20160816.design_queries_join_predicates AS
 SELECT jt.design_query_id,
        jt.subquery_id,
        jt.join_id,
        jt.table1_schema,
        jt.table1_name,
        jt.table2_schema,
        jt.table2_name,
        jt.join_type,
        et.expression_string,
        et.clause,
        jt.is_fk_pk,
        jt.is_partial_fk_pk
 FROM ((v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_join_predicates jpt JOIN v_dbd_SRM_20160816_SRM_20160816.design_queries_joins jt ON (((jpt.design_query_id = jt.design_query_id) AND (jpt.subquery_id = jt.subquery_id) AND (jpt.join_id = jt.join_id)))) JOIN v_dbd_SRM_20160816_SRM_20160816.vs_design_queries_expressions et ON (((jpt.design_query_id = et.design_query_id) AND (jpt.subquery_id = et.subquery_id) AND (jpt.expression_id = et.expression_id))));

CREATE  VIEW v_dbd_SRM_20160816_SRM_20160816.output_event_history AS
 SELECT vs_output_event_history.time_stamp,
        vs_output_event_history.design_id,
        vs_output_event_history.design_name,
        vs_output_event_history.stage_type,
        vs_output_event_history.iteration_number,
        vs_output_event_history.total_query_count,
        vs_output_event_history.remaining_query_count,
        vs_output_event_history.max_step_number,
        vs_output_event_history.current_step_number,
        vs_output_event_history.current_step_description,
        vs_output_event_history.table_id
 FROM v_dbd_SRM_20160816_SRM_20160816.vs_output_event_history;

CREATE  VIEW v_dbd_SRM_20160816_SRM_20160816.output_event_history_report AS
 SELECT output_event_history.time_stamp,
        output_event_history.stage_type,
        output_event_history.iteration_number,
        output_event_history.total_query_count,
        output_event_history.remaining_query_count,
        output_event_history.max_step_number,
        output_event_history.current_step_number,
        output_event_history.current_step_description,
        dt.table_schema,
        dt.table_name
 FROM (v_dbd_SRM_20160816_SRM_20160816.output_event_history LEFT  JOIN v_catalog.tables dt USING (table_id));

CREATE  VIEW v_dbd_SRM_20160816_SRM_20160816.current_event AS
 SELECT output_event_history.time_stamp,
        output_event_history.design_id,
        output_event_history.design_name,
        output_event_history.stage_type,
        output_event_history.iteration_number,
        output_event_history.total_query_count,
        output_event_history.remaining_query_count,
        output_event_history.max_step_number,
        output_event_history.current_step_number,
        output_event_history.current_step_description,
        output_event_history.table_id
 FROM v_dbd_SRM_20160816_SRM_20160816.output_event_history
 WHERE (output_event_history.time_stamp IN ( SELECT max(output_event_history.time_stamp) AS MAX
 FROM v_dbd_SRM_20160816_SRM_20160816.output_event_history));

SELECT MARK_DESIGN_KSAFE(1);

