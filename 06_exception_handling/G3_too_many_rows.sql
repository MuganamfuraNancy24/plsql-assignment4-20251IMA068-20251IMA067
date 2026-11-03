SET SERVEROUTPUT ON;

DECLARE
    v_city Customers.City%TYPE;

BEGIN
    SELECT City
    INTO v_city
    FROM Customers;

    DBMS_OUTPUT.PUT_LINE('City: ' || v_city);

EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: More than one customer was found.'
        );

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: No customer records found.'
        );

END;
/
