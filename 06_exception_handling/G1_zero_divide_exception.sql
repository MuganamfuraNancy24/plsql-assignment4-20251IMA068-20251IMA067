SET SERVEROUTPUT ON;

DECLARE
    v_number1 NUMBER := 100;
    v_number2 NUMBER := 0;
    v_result NUMBER;

BEGIN
    v_result := v_number1 / v_number2;

    DBMS_OUTPUT.PUT_LINE('Result: ' || v_result);

EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: Division by zero is not allowed.'
        );

END;
/
