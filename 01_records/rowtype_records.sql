SET SERVEROUTPUT ON;

DECLARE
    -- Create a record using the structure of CURSOR_TEST
    v_student CURSOR_TEST%ROWTYPE;

BEGIN
    -- Retrieve one student's complete row
    SELECT *
    INTO v_student
    FROM CURSOR_TEST
    WHERE STUDENT_ID = 1;

    DBMS_OUTPUT.PUT_LINE('ROWTYPE RECORD TEST');
    DBMS_OUTPUT.PUT_LINE('-------------------');

    DBMS_OUTPUT.PUT_LINE('Student ID: ' || v_student.STUDENT_ID);
    DBMS_OUTPUT.PUT_LINE('Student Name: ' || v_student.STUDENT_NAME);
    DBMS_OUTPUT.PUT_LINE('Marks: ' || v_student.MARKS);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student not found.');

    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More than one student was found.');
END;
/
