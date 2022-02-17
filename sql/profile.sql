SELECT 'ALTER PROFILE default LIMIT' || 
         ' PASSWORD_LIFE_TIME ' || password_life_time ||
         ' PASSWORD_MIN_LIFE_TIME ' || password_min_life_time ||
         ' PASSWORD_GRACE_TIME ' || password_grace_time ||
         ' FAILED_LOGIN_ATTEMPTS ' || failed_login_attempts ||
         ' PASSWORD_LOCK_TIME ' || password_lock_time ||
         ' PASSWORD_REUSE_MAX ' || password_reuse_max ||
         ' PASSWORD_REUSE_TIME ' || password_reuse_time ||
         ' PASSWORD_MAX_LENGTH ' || password_max_length ||
         ' PASSWORD_MIN_LENGTH ' || password_min_length ||
         ' PASSWORD_MIN_LETTERS ' || password_min_letters ||
         ' PASSWORD_MIN_UPPERCASE_LETTERS ' || password_min_uppercase_letters ||
         ' PASSWORD_MIN_LOWERCASE_LETTERS ' || password_min_lowercase_letters ||
         ' PASSWORD_MIN_DIGITS ' || password_min_digits ||
         ' PASSWORD_MIN_SYMBOLS ' || password_min_symbols ||
         ' PASSWORD_MIN_CHAR_CHANGE ' || password_min_char_change || ';'
  FROM PROFILES
 WHERE profile_name = 'default'
;

SELECT 'CREATE PROFILE ' || profile_name || ' LIMIT' || 
         ' PASSWORD_LIFE_TIME ' || password_life_time ||
         ' PASSWORD_MIN_LIFE_TIME ' || password_min_life_time ||
         ' PASSWORD_GRACE_TIME ' || password_grace_time ||
         ' FAILED_LOGIN_ATTEMPTS ' || failed_login_attempts ||
         ' PASSWORD_LOCK_TIME ' || password_lock_time ||
         ' PASSWORD_REUSE_MAX ' || password_reuse_max ||
         ' PASSWORD_REUSE_TIME ' || password_reuse_time ||
         ' PASSWORD_MAX_LENGTH ' || password_max_length ||
         ' PASSWORD_MIN_LENGTH ' || password_min_length ||
         ' PASSWORD_MIN_LETTERS ' || password_min_letters ||
         ' PASSWORD_MIN_UPPERCASE_LETTERS ' || password_min_uppercase_letters ||
         ' PASSWORD_MIN_LOWERCASE_LETTERS ' || password_min_lowercase_letters ||
         ' PASSWORD_MIN_DIGITS ' || password_min_digits ||
         ' PASSWORD_MIN_SYMBOLS ' || password_min_symbols ||
         ' PASSWORD_MIN_CHAR_CHANGE ' || password_min_char_change || ';'
  FROM PROFILES
 WHERE profile_name <> 'default'
;
