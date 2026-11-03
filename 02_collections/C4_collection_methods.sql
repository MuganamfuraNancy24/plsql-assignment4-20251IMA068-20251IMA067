SET SERVEROUTPUT ON;

DECLARE
    TYPE marks_table IS TABLE OF NUMBER;

    marks marks_table := marks_table(70, 80, 90);

BEGIN
    DBMS_OUTPUT.PUT_LINE('COLLECTION METHODS');

    -- Display initial count
    DBMS_OUTPUT.PUT_LINE('Initial Count: ' || marks.COUNT);

    -- Add a new mark
    marks.EXTEND;
    marks(4) := 95;

    DBMS_OUTPUT.PUT_LINE('After Adding: ' || marks.COUNT);

    -- Display first mark
    DBMS_OUTPUT.PUT_LINE('First Mark: ' || marks.FIRST);

    -- Display last mark
    DBMS_OUTPUT.PUT_LINE('Last Mark: ' || marks.LAST);

    -- Remove last mark
    marks.DELETE(4);

    DBMS_OUTPUT.PUT_LINE('After Deleting: ' || marks.COUNT);

END;
/
