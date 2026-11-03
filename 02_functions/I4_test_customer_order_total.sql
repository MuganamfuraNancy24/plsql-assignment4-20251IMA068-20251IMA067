SET SERVEROUTPUT ON;

DECLARE
    v_total NUMBER;
BEGIN
    v_total := get_customer_order_total(1);

    DBMS_OUTPUT.PUT_LINE(
        'Total Order Amount: ' || v_total
    );
END;
/
