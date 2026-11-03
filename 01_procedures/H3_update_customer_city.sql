SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE update_customer_city (
    p_customer_id IN NUMBER,
    p_new_city IN VARCHAR2
)
IS
BEGIN
    UPDATE Customers
    SET City = p_new_city
    WHERE CustomerID = p_customer_id;

    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE(
            'Customer city updated successfully.'
        );
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            'Customer not found.'
        );
    END IF;

    DBMS_OUTPUT.PUT_LINE(
        'Rows updated: ' || SQL%ROWCOUNT
    );

END;
/
