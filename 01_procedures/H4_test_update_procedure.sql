SET SERVEROUTPUT ON;

BEGIN
    update_customer_city(1, 'Kigali');
    ROLLBACK;
END;
/
