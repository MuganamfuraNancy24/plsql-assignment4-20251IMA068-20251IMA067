SET SERVEROUTPUT ON;

DECLARE
    -- Declare associative array
    TYPE student_table IS TABLE OF VARCHAR2(50)
    INDEX BY PLS_INTEGER;

    students student_table;

BEGIN
    -- Store student names
    students(1) := 'Alice';
    students(2) := 'Bob';
    students(3) := 'Charlie';
    students(4) := 'David';

    -- Display student names
    DBMS_OUTPUT.PUT_LINE('STUDENT LIST');

    FOR i IN 1 .. students.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Student ' || i || ': ' || students(i)
        );
    END LOOP;

    DBMS_OUTPUT.PUT_LINE(
        'Total Students: ' || students.COUNT
    );
END;
/
