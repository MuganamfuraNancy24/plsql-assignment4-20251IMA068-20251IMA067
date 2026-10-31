CREATE OR REPLACE PROCEDURE update_employee_salary (
    p_employee_id IN employees.employee_id%TYPE,
    p_increase IN NUMBER
)
AS
BEGIN
    IF p_increase <= 0 THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Salary increase must be greater than zero.'
        );
    END IF;

    UPDATE employees
    SET salary = salary + p_increase
    WHERE employee_id = p_employee_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Employee not found.'
        );
    END IF;

    DBMS_OUTPUT.PUT_LINE(
        'Salary updated successfully for employee ID: '
        || p_employee_id
    );

END;
/
