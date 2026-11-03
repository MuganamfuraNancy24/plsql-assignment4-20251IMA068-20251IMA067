SET SERVEROUTPUT ON;

DECLARE
    v_annual_salary NUMBER;

BEGIN
    v_annual_salary := calculate_annual_salary(500000);

    DBMS_OUTPUT.PUT_LINE(
        'Annual Salary: ' || v_annual_salary
    );
END;
/
