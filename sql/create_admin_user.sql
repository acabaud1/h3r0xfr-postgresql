\! echo "\033[0;32m Creating user 'admin' with password 'admin42'... \033[0m"
CREATE ROLE admin LOGIN PASSWORD 'admin42' SUPERUSER;
CREATE DATABASE admin OWNER admin;
