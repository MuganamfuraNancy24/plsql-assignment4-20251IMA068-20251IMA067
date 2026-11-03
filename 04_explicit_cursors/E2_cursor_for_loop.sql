SET SERVEROUTPUT ON;

DECLARE
    CURSOR customer_cursor IS
        SELECT CustomerID, CustomerName, City
        FROM Customers;

BEGIN
    DBMS_OUTPUT.PUT_LINE('CUSTOMER INFORMATION');

    FOR customer_record IN customer_cursor LOOP

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || customer_record.CustomerID ||
            ' Name: ' || customer_record.CustomerName ||
            ' City: ' || customer_record.City
        );

    END LOOP;

END;
/
