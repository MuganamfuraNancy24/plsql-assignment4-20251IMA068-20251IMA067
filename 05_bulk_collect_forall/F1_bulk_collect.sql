SET SERVEROUTPUT ON;

DECLARE
    TYPE customer_id_table IS TABLE OF Customers.CustomerID%TYPE;

    v_customer_ids customer_id_table;

BEGIN
    SELECT CustomerID
    BULK COLLECT INTO v_customer_ids
    FROM Customers;

    DBMS_OUTPUT.PUT_LINE('CUSTOMER IDS');

    FOR i IN 1 .. v_customer_ids.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Customer ID: ' || v_customer_ids(i)
        );
    END LOOP;

    DBMS_OUTPUT.PUT_LINE(
        'Total Customers: ' || v_customer_ids.COUNT
    );

END;
/
