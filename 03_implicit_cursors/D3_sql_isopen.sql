SET SERVEROUTPUT ON;

BEGIN
    UPDATE Customers
    SET City = 'Musanze'
    WHERE CustomerID = 3;

    IF SQL%ISOPEN THEN
        DBMS_OUTPUT.PUT_LINE('Cursor is open.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Implicit cursor is automatically closed.');
    END IF;

    DBMS_OUTPUT.PUT_LINE(
        'Rows updated: ' || SQL%ROWCOUNT
    );

END;
/
