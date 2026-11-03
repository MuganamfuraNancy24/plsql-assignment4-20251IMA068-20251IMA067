SET SERVEROUTPUT ON;

DECLARE
    v_customer_name Customers.CustomerName%TYPE;

BEGIN
    SELECT CustomerName
    INTO v_customer_name
    FROM Customers
    WHERE CustomerID = 999;

    DBMS_OUTPUT.PUT_LINE(
        'Customer Name: ' || v_customer_name
    );

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: No customer found with this ID.'
        );

END;
/
