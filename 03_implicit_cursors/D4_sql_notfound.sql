SET SERVEROUTPUT ON;

BEGIN
    UPDATE Customers
    SET City = 'Rubavu'
    WHERE CustomerID = 999;

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No customer was found.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Customer updated successfully.');
    END IF;

    DBMS_OUTPUT.PUT_LINE(
        'Rows affected: ' || SQL%ROWCOUNT
    );

END;
/
