SET SERVEROUTPUT ON;

DECLARE
    -- Declare a nested table type
    TYPE marks_table IS TABLE OF NUMBER;

    -- Create a collection variable
    student_marks marks_table := marks_table(75, 80, 90, 85);

BEGIN
    DBMS_OUTPUT.PUT_LINE('STUDENT MARKS');

    -- Display collection elements
    FOR i IN 1 .. student_marks.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Mark ' || i || ': ' || student_marks(i)
        );
    END LOOP;

    DBMS_OUTPUT.PUT_LINE(
        'Total Marks: ' || student_marks.COUNT
    );
END;
/
