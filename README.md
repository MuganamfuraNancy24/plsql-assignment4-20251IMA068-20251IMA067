# plsql-assignment4-20251IMA068-20251IMA067
 # Group members,
 -MUGANAMFURA Biazimana Nancy 20251IMA068
 -NINZIZA Jenny Deborah 20251IMA067
# PL/SQL Assignment IV: Records and Collections

## 1. Project Description
This project demonstrates the use of records, collections, cursors, bulk processing, stored procedures, functions, and exception handling in Oracle PL/SQL.The project uses an Employee Management System as its application scenario.
## 2. Technologies Used
- Oracle Database 21c
- Oracle SQL Developer
- PL/SQL
- GitHub
## 3. Database Table
The project uses an `employees` table containing:
- `employee_id`
- `first_name`
- `last_name`
- `department`
- `salary`
- `hire_date`

## 4. Project Structure

- `00_schema/` — Creates the employees table and inserts sample data.
- `01_procedures/` — Contains the employee salary update procedure.
- `02_functions/` — Contains the employee salary retrieval function.
- `03_tests/` — Contains successful and error test cases.
- `screenshots/` — Stores screenshots of code execution and results.
- `docs/` — Contains implementation notes.

## 5. Main Features

- User-defined records and `%ROWTYPE`.
- Associative arrays and collections.
- Implicit and explicit cursors.
- `SQL%ROWCOUNT`, `SQL%FOUND`, and `SQL%NOTFOUND`.
- `BULK COLLECT` and `FORALL`.
- Stored procedures and functions.
- Exception handling using predefined exceptions and `RAISE_APPLICATION_ERROR`.

## 6. How to Run the Project

1. Open Oracle SQL Developer and connect to your database.
2. Run `00_schema/01_create_tables.sql`.
3. Run `00_schema/02_insert_sample_data.sql`.
4. Run the procedure script in `01_procedures/`.
5. Run the function script in `02_functions/`.
6. Execute the test scripts in 03_tests/.
7. Review the output and save screenshots of the results.

## 7. Conclusion

This project demonstrates how Oracle PL/SQL records, collections, cursors, bulk processing, procedures, functions, and exception handling can be used in an Employee Management System.
