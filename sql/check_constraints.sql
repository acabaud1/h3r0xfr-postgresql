\! echo "\033[0;32m Trying to insert bad data in 'user'... \033[0m"
INSERT INTO "user" (registration_date, firstname, lastname, email, password) VALUES ('2018-09-26 22:22:57', 'Test', 'Test', 'test@test.com', 'test');

\! echo "\033[0;32m Trying to insert bad data in 'show'... \033[0m"
INSERT INTO "show" (name, description, release_year, genres, network) VALUES ('Test', 'Description de test', '200', 'Test1|Test2|Test3', 'Test');
