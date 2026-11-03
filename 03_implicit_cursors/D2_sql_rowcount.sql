SET SERVEROUTPUT ON;

BEGIN
    UPDATE Customers
    SET City = 'Huye'
    WHERE CustomerID = 2;

    DBMS_OUTPUT.PUT_LINE(
        'Number of rows updated: ' || SQL%ROWCOUNT
    );

END;
/
