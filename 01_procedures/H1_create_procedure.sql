SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE get_customer_details (
    p_customer_id IN NUMBER
)
IS
    v_name Customers.CustomerName%TYPE;
    v_city Customers.City%TYPE;

BEGIN
    SELECT CustomerName, City
    INTO v_name, v_city
    FROM Customers
    WHERE CustomerID = p_customer_id;

    DBMS_OUTPUT.PUT_LINE('CUSTOMER DETAILS');
    DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('City: ' || v_city);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Customer not found.');
END;
/
