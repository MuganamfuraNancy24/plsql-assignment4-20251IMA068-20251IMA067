CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    department VARCHAR2(50),
    salary NUMBER(10,2),
    hire_date DATE DEFAULT SYSDATE
);
