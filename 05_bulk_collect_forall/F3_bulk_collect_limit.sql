SET SERVEROUTPUT ON;

DECLARE
    CURSOR customer_cursor IS
        SELECT CustomerID, CustomerName
        FROM Customers;

    TYPE customer_table IS TABLE OF customer_cursor%ROWTYPE;

    v_customers customer_table;

BEGIN
    OPEN customer_cursor;

    LOOP
        FETCH customer_cursor
        BULK COLLECT INTO v_customers
        LIMIT 2;

        EXIT WHEN v_customers.COUNT = 0;

        DBMS_OUTPUT.PUT_LINE('BATCH OF CUSTOMERS');

        FOR i IN 1 .. v_customers.COUNT LOOP
            DBMS_OUTPUT.PUT_LINE(
                'ID: ' || v_customers(i).CustomerID ||
                ' Name: ' || v_customers(i).CustomerName
            );
        END LOOP;

    END LOOP;

    CLOSE customer_cursor;

END;
/
