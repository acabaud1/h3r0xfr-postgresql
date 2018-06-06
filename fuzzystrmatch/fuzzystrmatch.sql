CREATE EXTENSION fuzzystrmatch;

SELECT firstname, difference('Ma', firstname) FROM students ORDER BY student_id;
