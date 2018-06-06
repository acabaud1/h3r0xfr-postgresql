\! echo "\033[0;32m Backup users in '/backup/backup_users.csv'... \033[0m"
\COPY "user" TO '../backup/backup_users.csv' WITH CSV HEADER DELIMITER AS ',';
