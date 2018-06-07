CREATE EXTENSION fuzzystrmatch;

\! echo "\033[0;32m Chaîne de caractères 'Me' dans le prénom avec la méthode Soundex : \033[0m"
SELECT firstname, soundex('Me'), soundex(firstname) FROM students;
SELECT firstname, difference('Me', firstname) FROM students;
SELECT firstname FROM students WHERE difference('Me', firstname) >= 2;

\! echo "\033[0;32m Chaîne de caractères 'Ma' dans le prénom avec la méthode Levenshtein : \033[0m"
SELECT firstname, levenshtein('Ma', firstname) FROM students;
SELECT firstname FROM students ORDER BY levenshtein DESC;

\! echo "\033[0;32m Chaîne de caractères 'Mathild' dans le prénom avec la méthode Metaphone : \033[0m"
SELECT firstname, metaphone('Mati', 4), metaphone(firstname, 4) FROM students;
SELECT firstname FROM students WHERE metaphone('Mati', 4) = metaphone(firstname, 4);

\! echo "\033[0;32m Chaîne de caractères 'Mathild' dans le prénom avec la méthode Double Metaphone : \033[0m"
SELECT firstname, dmetaphone('Mati'), dmetaphone(firstname) FROM students;
SELECT firstname FROM students WHERE dmetaphone('Mati') = dmetaphone(firstname);
