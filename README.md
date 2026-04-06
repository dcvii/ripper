# Vertica Migrator

A Python toolkit for performing complex Vertica-to-Vertica database migrations, including full catalog extraction, schema-level DDL, user/role/grant provisioning, resource pool configuration, data transfer (via V2V or S3), and post-migration auditing.

Originally developed at OpenText Vertica to handle a crisis migration where the customer was several major versions behind and the standard tooling could not handle the metadata and dependency complexities — particularly shard mismatches and pre-cloud Vertica installations.

## Architecture

The toolkit follows a two-phase **extract → apply** pattern:

1. **`get_*.py`** scripts query the **source** Vertica catalog and generate runnable SQL scripts under `scripts/`.
2. **`run_*.py`** scripts execute those generated scripts against the **target** Vertica cluster.

All database interaction flows through the `ripper` library (`ripper/sql_runner.py`), which handles connections, SQL chunking, multi-statement execution, error logging, and failed-statement capture.

## Migration Scopes

- **Entire catalog** — Full database DDL + data
- **Schema-by-schema** — Iterates each schema independently
- **Single schema** — One schema at a time (CLI arg)
- **Single table** — Targeted table-level operations

For catalogs with more than ~1000 table objects, schema-by-schema chunking is recommended.

## Prerequisites

- Python >= 3.9
- Access to source and target Vertica clusters
- AWS credentials (if using S3 as an intermediate data stage)

### Dependencies

- `vertica-python` — Vertica DBAPI driver
- `boto3` — AWS S3 access for export/import
- `pandas` — result set handling
- `pytz`, `regex`, `Pillow`, `torch`, `torchvision` — additional dependencies from the original deployment

## Configuration

All connection and routing parameters are read from environment variables. Set these in your `.envrc` or shell profile:

### Source cluster
```
SRC_DB_HOST=
SRC_DB_PORT=
SRC_DB_USERNAME=
SRC_DB_PASSWORD=
SRC_DB_DATABASE=
SRC_S3_BUCKET=
SRC_BUCKET_KEY=
```

### Target cluster
```
TARGET_DB_HOST=
TARGET_DB_PORT=
TARGET_DB_USERNAME=
TARGET_DB_PASSWORD=
TARGET_DB_DATABASE=
TARGET_BUCKET_KEY=
```

### Paths
```
MIGRATION_HOME=       # root path of this repo (trailing slash)
```

## Workflow

### 1. Initialize the migration
```bash
python init_migration.py
```
Creates the `migration` schema and tracking tables on both source and target, populates initial audit baselines, and clears prior script artifacts.

### 2. Extract metadata from source

- `get_schema.py` — Full catalog DDL, S3 export scripts, V2V copy scripts
- `get_schemata.py` — Per-schema DDL, export, and V2V scripts for every valid schema
- `get_ddl.py <schema>` — Filtered DDL for a single schema (strips projections, managed externals, sequences)
- `get_users.py` — `CREATE USER` + user grant statements
- `get_roles.py` — `CREATE ROLE` + role grant statements
- `get_grants.py` — Object-level grant statements
- `get_pools.py` — Resource pool `CREATE` and `ALTER` statements
- `get_access.py` — Access policy statements
- `get_sequences.py` — Sequence DDL
- `get_epochs.py` — Epoch advancement scripts
- `get_locations.py` — Storage location definitions
- `get_audit.py <schema>` — Audit tracking records for a schema
- `get_partial.py <schema>` — Incremental (epoch-based) V2V copy commands
- `get_rejects.py <schema>` — Retry scripts for tables that failed initial V2V transfer
- `get_wipe.py` — `DROP SCHEMA` statements for target cleanup
- `show_schemas.py` — Lists valid schemas on the source

All generated SQL is written to `scripts/` prefixed with `<bucket_key>_`.

### 3. Apply to target

- `run_ddl.py <schema>` — Schema DDL on target
- `run_users.py` — Users on target
- `run_roles.py` — Roles on target
- `run_grants.py` — Grants on target
- `run_pools.py` — Resource pools on target
- `run_access.py` — Access policies on target
- `run_sequences.py` — Sequences on target
- `run_epochs.py` — Epoch operations on source
- `run_data_v2v.py <schema>` — Vertica-to-Vertica data copy
- `run_data_s3.py <schema>` — S3-staged data copy (parquet)
- `run_partial_v2v.py <schema>` — Incremental V2V copy
- `run_data_rejects_v2v.py <schema>` — Re-run failed V2V tables
- `run_audit.py <schema>` — Audit updates on target
- `run_wipe.py` — Wipe target schemas
- `run_custom.py` — Execute ad-hoc custom SQL

### 4. Post-migration

```bash
python refresh_audit.py <schema>
python init_next_phase.py
```
`refresh_audit.py` regenerates audit records comparing source row counts to target. `init_next_phase.py` resets epochs and prepares for incremental catch-up passes.

## Directory Layout

```
.
├── ripper/              # Core library
│   └── sql_runner.py    # Connection mgmt, SQL chunking, execution
├── sql/                 # SQL templates (read by get_* scripts)
├── scripts/             # Generated SQL output (written by get_*, consumed by run_*)
├── log/                 # Execution logs
├── tests/               # Unit tests
├── dev/                 # Development/scratch scripts
├── ddl/                 # DDL audit generation
├── archive/             # Archived script/log artifacts
├── doc/                 # Documentation
├── init_migration.py    # Phase 0 — bootstrap migration schema
├── init_next_phase.py   # Reset for incremental pass
├── get_*.py             # Extract scripts (source → scripts/)
├── run_*.py             # Apply scripts (scripts/ → target)
├── refresh_audit.py     # Post-migration audit refresh
└── show_schemas.py      # Utility — list valid schemas
```

## Ripper Library

`ripper/sql_runner.py` provides:

- **`vert_conn(cfg)`** — Returns connection dicts for `src`, `tgt`, `src_commit`, `tgt_commit`
- **`chunkify(fname)`** — Splits a multi-statement SQL file on `;` boundaries
- **`chunk_filter(config)`** — Chunkify with regex-based statement rejection (e.g., filter out projections)
- **`run_multi_sql(cset, config)`** — Executes a list of SQL commands, logs failures to `scripts/failed_*.sql`
- **`run_single_file_sql(config)`** — Executes a single SQL file
- **`run_single_file_commit_sql(config)` / `run_single_cmd_commit_sql(config)`** — Same with appended `COMMIT`
- **`run_migration_table(config)`** — Reads SQL from a migration tracking table
- **`get_vv_string()`** — Builds a `CONNECT TO VERTICA` command string for V2V operations
- **`is_valid_schema(item)`** — Validates a schema name against the source catalog

## Data Transfer Methods

- **V2V (Vertica-to-Vertica):** Direct `COPY ... FROM VERTICA` between clusters. Preferred when network connectivity allows.
- **S3 Staging:** `EXPORT TO PARQUET/CSV` to S3, then `COPY ... FROM` on the target side. Used when direct V2V isn't feasible.
- **Incremental:** Epoch-based partial copies for tables that changed after the initial bulk transfer.
- **Rejects:** Retry logic for tables that failed during initial transfer, identified via the audit table.

## Logging

Every script writes a dedicated log to `log/` using Python's `logging` module. Failed SQL statements are captured separately in `scripts/failed_*.sql` for manual review and re-execution.
