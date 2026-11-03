SET SERVEROUTPUT ON;

DECLARE
    TYPE id_table IS TABLE OF NUMBER;

    v_ids id_table := id_table(1, 2, 999);

BEGIN
    BEGIN
        FORALL i IN 1 .. v_ids.COUNT SAVE EXCEPTIONS
            UPDATE Customers
            SET City = 'Kigali'
            WHERE CustomerID = v_ids(i);

    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(
                'Errors occurred: ' || SQL%BULK_EXCEPTIONS.COUNT
            );

            FOR i IN 1 .. SQL%BULK_EXCEPTIONS.COUNT LOOP
                DBMS_OUTPUT.PUT_LINE(
                    'Error index: ' ||
                    SQL%BULK_EXCEPTIONS(i).ERROR_INDEX
                );
            END LOOP;
    END;

    ROLLBACK;

    DBMS_OUTPUT.PUT_LINE('Changes rolled back.');

END;
/
