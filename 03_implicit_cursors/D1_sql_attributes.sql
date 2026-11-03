SET SERVEROUTPUT ON;

BEGIN
    UPDATE Customers
    SET City = 'Kigali'
    WHERE CustomerID = 1;

    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Customer updated successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No customer found.');
    END IF;

    DBMS_OUTPUT.PUT_LINE(
        'Rows affected: ' || SQL%ROWCOUNT
    );

END;
/
