CREATE OR REPLACE FUNCTION get_employee_salary (
    p_employee_id IN employees.employee_id%TYPE
)
RETURN NUMBER
AS
    v_salary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE employee_id = p_employee_id;

    RETURN v_salary;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Employee not found.'
        );

    WHEN TOO_MANY_ROWS THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Multiple employees found.'
        );
END;
/
