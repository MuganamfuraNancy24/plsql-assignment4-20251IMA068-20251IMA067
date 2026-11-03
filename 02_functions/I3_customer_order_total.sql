CREATE OR REPLACE FUNCTION get_customer_order_total (
    p_customer_id IN NUMBER
)
RETURN NUMBER
IS
    v_total NUMBER;
BEGIN
    SELECT NVL(SUM(Amount), 0)
    INTO v_total
    FROM Orders
    WHERE CustomerID = p_customer_id;

    RETURN v_total;
END;
/
