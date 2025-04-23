# SQL Runner Documentation

## Overview
`sql_runner.py` is a Python script designed to interact with a Vertica database. It includes functionality to establish connections, retrieve authentication details from environment variables, and execute SQL commands.

## Dependencies
This script requires the following Python libraries:
- `vertica_python` for database interaction.
- `os` for environment variable access.
- `logging` for logging execution details.
- `pandas` for potential data manipulation.
- `csv` for handling CSV files.
- `numpy` for numerical operations.
- `re` for regular expressions.

## Environment Variables
The script retrieves database credentials and connection parameters from environment variables:
- `SRC_DB_USERNAME`, `SRC_DB_PASSWORD`, `SRC_DB_PORT`, `SRC_DB_DATABASE`, `SRC_DB_HOST`: Used for connecting to the source database.
- `TARGET_DB_USERNAME`, `TARGET_DB_PASSWORD`, `TARGET_DB_PORT`, `TARGET_DB_DATABASE`, `TARGET_DB_HOST`: Used for connecting to the target database.

## Functions

### `get_vv_string()`
Generates a SQL connection string for Vertica.
#### Returns:
- A formatted connection string including credentials and host details.

### `vert_conn(cfg)`
Establishes a connection to Vertica based on the provided configuration parameter.
#### Parameters:
- `cfg` (str): The type of connection to establish.
  - `'tgt'`: Connects using `TARGET_DB_*` environment variables.
  - `'tgt_commit'`: Establishes a connection with additional commit-related parameters.
#### Returns:
- `dict`: Connection information dictionary required by `vertica_python`.

### `chunkify(lst, n)`
Divides a list into `n` smaller chunks.
#### Parameters:
- `lst` (list): The input list to be divided.
- `n` (int): The number of chunks to divide the list into.
#### Returns:
- `list`: A list of sublists.

### `chunk_filter(data, condition)`
Filters a chunk of data based on a given condition.
#### Parameters:
- `data` (list or dataframe): The data to be filtered.
- `condition` (function): A filtering function applied to each element.
#### Returns:
- Filtered data that meets the condition.

### `run_multi_sql(sql_statements)`
Executes multiple SQL statements in a batch.
#### Parameters:
- `sql_statements` (list of str): SQL statements to execute.
#### Returns:
- Execution results or status messages.

### `run_single_file_sql(filepath)`
Executes SQL statements from a given file.
#### Parameters:
- `filepath` (str): Path to the SQL file.
#### Returns:
- Execution results or status messages.

### `run_single_cmd_commit_sql(sql_command)`
Executes a single SQL command and commits changes.
#### Parameters:
- `sql_command` (str): The SQL command to execute.
#### Returns:
- Execution results or status messages.

### `run_single_file_commit_sql(filepath)`
Executes and commits SQL commands from a file.
#### Parameters:
- `filepath` (str): Path to the SQL file.
#### Returns:
- Execution results or status messages.

### `run_migration_table(table_name, sql_statements)`
Executes SQL migration scripts for a specific table.
#### Parameters:
- `table_name` (str): The name of the table being migrated.
- `sql_statements` (list of str): SQL statements for migration.
#### Returns:
- Execution results or status messages.

### `is_valid_schema(schema_name)`
Validates whether the given schema name is valid.
#### Parameters:
- `schema_name` (str): The schema name to validate.
#### Returns:
- `bool`: True if valid, False otherwise.

### `is_valid_teva_schema(schema_name)`
Checks if the given schema is a valid TEVA schema.
#### Parameters:
- `schema_name` (str): The schema name to validate.
#### Returns:
- `bool`: True if valid, False otherwise.

## Usage
This script can be used as a standalone utility for executing SQL queries on a Vertica database or as part of a larger data pipeline.

## Future Enhancements
- Implementing error handling and exception logging.
- Adding a function to execute SQL queries and fetch results.
- Improving security by using a more secure method for handling credentials.
