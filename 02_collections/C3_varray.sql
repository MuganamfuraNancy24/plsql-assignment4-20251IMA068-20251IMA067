SET SERVEROUTPUT ON;

DECLARE
    -- Declare a VARRAY with maximum 5 elements
    TYPE subject_array IS VARRAY(5) OF VARCHAR2(30);

    subjects subject_array :=
        subject_array('Database', 'Programming', 'Networking');

BEGIN
    DBMS_OUTPUT.PUT_LINE('STUDENT SUBJECTS');

    FOR i IN 1 .. subjects.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Subject ' || i || ': ' || subjects(i)
        );
    END LOOP;

    DBMS_OUTPUT.PUT_LINE(
        'Total Subjects: ' || subjects.COUNT
    );

    DBMS_OUTPUT.PUT_LINE(
        'Maximum Capacity: ' || subjects.LIMIT
    );
END;
/
