SELECT 'ALTER USER ' || user_name || ' PROFILE ' ||
        profile_name || ';'
  FROM users
 WHERE profile_name <> 'default'
   AND ldap_dn = ''
 ORDER BY 1
;
