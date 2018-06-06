DROP DATABASE ynov;

\! echo "\033[0;32m Creating database 'ynov'... \033[0m"
CREATE DATABASE ynov;
\c ynov

\! echo "\033[0;32m Creating tables 'students', 'classes', 'notes'... \033[0m"
CREATE TABLE "students" (
    student_id serial primary key,
    firstname varchar(150),
    lastname varchar(150)
);

CREATE TABLE "classes" (
    class_id serial primary key,
    name varchar(150),
    teacher varchar(150)
);

CREATE TABLE "notes" (
    note_id serial primary key,
    student_id integer references "students"(student_id),
    class_id integer references "classes"(class_id),
    note decimal,
    coefficient decimal
);

\! echo "\033[0;32m Creating fixtures... \033[0m"
INSERT INTO "students" VALUES (default, 'Mathilde', 'Lachapelle');
INSERT INTO "students" VALUES (default, 'Merlin', 'Quirion');
INSERT INTO "students" VALUES (default, 'Fabien', 'Arsenault');
INSERT INTO "students" VALUES (default, 'Olympia', 'Labrecque');
INSERT INTO "students" VALUES (default, 'Maurelle', 'Moquin');

INSERT INTO "classes" VALUES (default, 'Symfony', 'Gabriel PILLET');
INSERT INTO "classes" VALUES (default, 'Node JS', 'Gabin AURÈCHE');
INSERT INTO "classes" VALUES (default, 'Intégration Web', 'Florian TRUCHOT');
INSERT INTO "classes" VALUES (default, 'PostgreSQL', 'Gabriel PILLET');

INSERT INTO "notes" VALUES (default, 1, 2, 18, 2);
INSERT INTO "notes" VALUES (default, 1, 2, 16, 0.5);
INSERT INTO "notes" VALUES (default, 2, 1, 14.25, 1);
INSERT INTO "notes" VALUES (default, 2, 4, 10.5, 2);
INSERT INTO "notes" VALUES (default, 2, 3, 12, 1);
INSERT INTO "notes" VALUES (default, 3, 1, 11, 1);
INSERT INTO "notes" VALUES (default, 3, 2, 9, 2);
INSERT INTO "notes" VALUES (default, 4, 4, 14.5, 1);
INSERT INTO "notes" VALUES (default, 4, 1, 12, 0.5);
INSERT INTO "notes" VALUES (default, 4, 2, 10.75, 2);
INSERT INTO "notes" VALUES (default, 5, 4, 15, 1);
INSERT INTO "notes" VALUES (default, 5, 2, 5, 2);
INSERT INTO "notes" VALUES (default, 5, 3, 16.25, 0.5);
INSERT INTO "notes" VALUES (default, 5, 1, 9, 2);

\! echo "\033[0;32m Creating view 'averages'... \033[0m"
CREATE VIEW "averages" AS
    SELECT st.student_id AS id,
        UPPER(st.lastname) || ' ' || st.firstname AS student,
        ROUND(SUM(nt.note * nt.coefficient) / SUM(nt.coefficient), 2) AS average
    FROM "students" st
    INNER JOIN "notes" nt USING (student_id)
    GROUP BY st.student_id
    ORDER BY st.lastname;

\! echo "\033[0;32m Show view 'averages'... \033[0m"
SELECT * FROM "averages";
