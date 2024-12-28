-- userpwd

insert into migration.odd_parms_src   
SELECT 7,
		'ALTER USER ' || user_name || ' IDENTIFIED BY ''' ||
        password || '''' || ' SALT ''' || salt || '''' || ';',
		'User', null

  FROM passwords
 WHERE password <> ''
   AND user_name <> 'dbadmin'
 ORDER BY 2
;
