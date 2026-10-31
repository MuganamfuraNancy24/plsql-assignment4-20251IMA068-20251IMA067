-- Test error handling in procedures and functions

SET SERVEROUTPUT ON;

-- Test 1: Employee does not exist
BEGIN
    update_employee_salary(999, 20000);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Expected error: ' || SQLERRM);
END;
/

-- Test 2: Invalid salary increase
BEGIN
    update_employee_salary(1, -5000);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Expected error: ' || SQLERRM);
END;
/

-- Test 3: Function called with a nonexistent employee
DECLARE
    v_salary NUMBER;
BEGIN
    v_salary := get_employee_salary(999);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Expected error: ' || SQLERRM);
END;
/
