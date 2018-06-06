\pset pager off
CREATE EXTENSION pgcrypto;

\! echo "\033[0;32m Finding user with password 'adaliquid667'... \033[0m"
SELECT * FROM "user" WHERE password = 'adaliquid667';

\! echo "\033[0;32m Crypting all passwords... \033[0m"
UPDATE "user" SET password = crypt(password, gen_salt('bf'));

\! echo "\033[0;32m Trying to find the same user with encrypted password... \033[0m"
SELECT * FROM "user" WHERE password = crypt('adaliquid667', password);
