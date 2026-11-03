SET SERVEROUTPUT ON;

DECLARE
    TYPE customer_id_table IS TABLE OF Customers.CustomerID%TYPE;

    v_customer_ids customer_id_table;

BEGIN
    SELECT CustomerID
    BULK COLLECT INTO v_customer_ids
    FROM Customers;

    FORALL i IN 1 .. v_customer_ids.COUNT
        UPDATE Customers
        SET City = 'Kigali'
        WHERE CustomerID = v_customer_ids(i);

    DBMS_OUTPUT.PUT_LINE(
        'Total rows updated: ' || SQL%ROWCOUNT
    );

    ROLLBACK;

    DBMS_OUTPUT.PUT_LINE('Changes rolled back successfully.');

END;
/
