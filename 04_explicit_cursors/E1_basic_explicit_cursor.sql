SET SERVEROUTPUT ON;

DECLARE
    CURSOR customer_cursor IS
        SELECT CustomerID, CustomerName, City
        FROM Customers;

    v_id Customers.CustomerID%TYPE;
    v_name Customers.CustomerName%TYPE;
    v_city Customers.City%TYPE;

BEGIN
    OPEN customer_cursor;

    LOOP
        FETCH customer_cursor
        INTO v_id, v_name, v_city;

        EXIT WHEN customer_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_id ||
            ' Name: ' || v_name ||
            ' City: ' || v_city
        );
    END LOOP;

    CLOSE customer_cursor;
END;
/
