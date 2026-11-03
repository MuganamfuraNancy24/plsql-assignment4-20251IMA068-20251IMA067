SET SERVEROUTPUT ON;

DECLARE
    v_number1 NUMBER := 100;
    v_number2 NUMBER := 0;
    v_result NUMBER;

BEGIN
    v_result := v_number1 / v_number2;

    DBMS_OUTPUT.PUT_LINE('Result: ' || v_result);

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(
            'An unexpected error occurred.'
        );

        DBMS_OUTPUT.PUT_LINE(
            'Error Code: ' || SQLCODE
        );

        DBMS_OUTPUT.PUT_LINE(
            'Error Message: ' || SQLERRM
        );

END;
/
