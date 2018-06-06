CREATE EXTENSION fuzzystrmatch;

SELECT difference('Ma', firstname) FROM students ORDER BY student_id;
