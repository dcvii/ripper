SELECT 'ALTER USER ' || user_name || ' IDENTIFIED BY ''' ||
        password || '''' || ' SALT ''' || salt || '''' || ';'
  FROM passwords
 WHERE password <> ''
   AND user_name <> 'dbadmin'
 ORDER BY 1
;

