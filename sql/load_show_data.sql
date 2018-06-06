\pset pager off
\! echo "\033[0;32m importing data from CSV files... \033[0m"

TRUNCATE "show", "episode", "user", "show_follow", "episode_watch", "show_rating" CASCADE;
ALTER TABLE "show_follow" DISABLE TRIGGER ALL;
ALTER TABLE "episode_watch" DISABLE TRIGGER ALL;

\! echo "\033[0;32m importing 'show' (1/6)... \033[0m"
\COPY "show" FROM '../csv/show.csv' WITH CSV HEADER DELIMITER AS ',';
SELECT * FROM "show" ORDER BY show_id DESC LIMIT 1;

\! echo "\033[0;32m importing 'episode' (2/6)... \033[0m"
\COPY "episode" FROM '../csv/episode.csv' WITH CSV HEADER DELIMITER AS ',';
SELECT * FROM "episode" LIMIT 1;

\! echo "\033[0;32m importing 'user' (3/6)... \033[0m"
\COPY "user" FROM '../csv/user.csv' WITH CSV HEADER DELIMITER AS ',';
SELECT * FROM "user" LIMIT 1;

\! echo "\033[0;32m importing 'user_follow_show' (4/6)... \033[0m"
\COPY "show_follow" FROM '../csv/user_follow_show.csv' WITH CSV HEADER DELIMITER AS ',';
SELECT * FROM "show_follow" LIMIT 1;

\! echo "\033[0;32m importing 'user_watch_episode' (5/6)... \033[0m"
\COPY "episode_watch" FROM '../csv/user_watch_episode.csv' WITH CSV HEADER DELIMITER AS ',';
SELECT * FROM "episode_watch" LIMIT 1;

\! echo "\033[0;32m importing 'user_rate_show' (6/6)... \033[0m"
\COPY "show_rating" FROM '../csv/user_rate_show.csv' WITH CSV HEADER DELIMITER AS ',';
SELECT * FROM "show_rating" LIMIT 1;

ALTER TABLE "show_follow" ENABLE TRIGGER ALL;
ALTER TABLE "episode_watch" ENABLE TRIGGER ALL;
