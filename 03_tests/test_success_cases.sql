-- Test successful procedure and function operations

SET SERVEROUTPUT ON;

-- Test 1: Update employee 1's salary
BEGIN
    update_employee_salary(1, 20000);
    COMMIT;
END;
/

-- Test 2: Retrieve employee 1's salary
DECLARE
    v_salary NUMBER;
BEGIN
    v_salary := get_employee_salary(1);

    DBMS_OUTPUT.PUT_LINE(
        'Employee 1 salary: ' || v_salary
    );
END;
/
