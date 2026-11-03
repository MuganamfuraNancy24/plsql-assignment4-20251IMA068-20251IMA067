SET SERVEROUTPUT ON;

DECLARE
    CURSOR customer_cursor(p_city VARCHAR2) IS
        SELECT CustomerID, CustomerName, City
        FROM Customers
        WHERE City = p_city;

BEGIN
    DBMS_OUTPUT.PUT_LINE('CUSTOMERS FROM KIGALI');

    FOR customer_record IN customer_cursor('Kigali') LOOP

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || customer_record.CustomerID ||
            ' Name: ' || customer_record.CustomerName ||
            ' City: ' || customer_record.City
        );

    END LOOP;

END;
/
