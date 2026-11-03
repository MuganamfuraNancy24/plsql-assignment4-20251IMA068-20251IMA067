SET SERVEROUTPUT ON;

DECLARE
    v_age NUMBER := 15;

    invalid_age EXCEPTION;

BEGIN
    IF v_age < 18 THEN
        RAISE invalid_age;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Age accepted.');

EXCEPTION
    WHEN invalid_age THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: Age must be 18 or above.'
        );

END;
/
