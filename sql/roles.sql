SELECT 
       'CREATE ROLE "' || name || '"' ||    ';' AS sql
  FROM v_internal.vs_roles vr
 WHERE NOT vr.predefined_role -- Exclude system roles
   AND ldapdn = ''  ;           -- Limit to NON-LDAP created roles