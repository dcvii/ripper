-- useralter

insert into migration.odd_parms_src   
SELECT 8,
		'ALTER USER ' || user_name || ' PROFILE ' ||  profile_name || ';',
		'User', null
  FROM users
 WHERE profile_name <> 'default'
   AND ldap_dn = ''
 ORDER BY 2
;
