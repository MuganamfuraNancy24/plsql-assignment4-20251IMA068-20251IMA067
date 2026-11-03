SET SERVEROUTPUT ON;

DECLARE
    TYPE student_record IS RECORD (
        student_id NUMBER,
        student_name VARCHAR2(100),
        marks NUMBER
    );

    v_student student_record;

BEGIN
    v_student.student_id := 1;
    v_student.student_name := 'Ange';
    v_student.marks := 85;

    DBMS_OUTPUT.PUT_LINE('USER DEFINED RECORD TEST');
    DBMS_OUTPUT.PUT_LINE('-------------------------');

    DBMS_OUTPUT.PUT_LINE('Student ID: ' || v_student.student_id);
    DBMS_OUTPUT.PUT_LINE('Student Name: ' || v_student.student_name);
    DBMS_OUTPUT.PUT_LINE('Marks: ' || v_student.marks);

END;
/
