\pset pager off

\! echo "\033[0;32m Trying to SELECT in 'episode'... \033[0m"
SELECT * FROM episode LIMIT 5;

\! echo "\033[0;32m Trying to INSERT in 'user'... \033[0m"
INSERT INTO "user" (registration_date, firstname, lastname, email, password) VALUES ('2017-02-18 10:09:26', 'Test', 'Test', 'test@test.com', 'test');
