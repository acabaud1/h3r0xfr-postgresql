DROP OWNED BY readonly;

REVOKE ALL PRIVILEGES ON SCHEMA public FROM readonly;
REVOKE ALL ON ALL TABLES IN SCHEMA public FROM readonly;
REVOKE CONNECT ON DATABASE shows FROM readonly;

REVOKE reader FROM readonly;
DROP ROLE reader;
DROP ROLE readonly;

\! echo "\033[0;32m Creating group 'reader' with CONNECT permission on database 'shows'... \033[0m"
CREATE ROLE reader;
GRANT CONNECT ON DATABASE shows TO reader;

\c shows
\! echo "\033[0;32m Grant SELECT permission for group 'reader'... \033[0m"
GRANT USAGE ON SCHEMA public TO reader;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO reader;

\! echo "\033[0;32m Creating user 'readonly' with password 'readonly42' to group 'reader'... \033[0m"
CREATE ROLE readonly LOGIN PASSWORD 'readonly42';
GRANT reader TO readonly;
