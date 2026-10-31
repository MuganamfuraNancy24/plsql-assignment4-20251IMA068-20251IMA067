# Implementation Notes

## 1. Application Scenario

This project uses an Employee Management System to demonstrate Oracle PL/SQL programming concepts.

The system stores employee information, retrieves employee salaries, and updates employee salaries.

## 2. Records

A user-defined record was used to group employee information into a single variable.

The `%ROWTYPE` attribute was also used to declare a record with the same structure as a database table row.

## 3. Collections

An associative array was used to store multiple salary values.

A collection of employee records was used with `BULK COLLECT` to retrieve multiple employee rows.

## 4. Cursors

Implicit cursor attributes were used to check whether SQL statements affected any rows.

Explicit cursors were used to retrieve and display employee information.

## 5. Bulk Processing

`BULK COLLECT` was used to retrieve multiple employee records in one operation.

`FORALL` was used to perform bulk salary updates.

Bulk processing can reduce communication between the PL/SQL engine and the SQL engine when processing multiple rows.

## 6. Stored Procedure

The `update_employee_salary` procedure increases an employee's salary.

It checks that the salary increase is positive and reports an error if the employee does not exist.

## 7. Stored Function

The `get_employee_salary` function returns the salary of an employee identified by employee ID.

It handles the `NO_DATA_FOUND` exception when the employee does not exist.

## 8. Exception Handling

The project demonstrates predefined exceptions, user-defined exceptions, and `RAISE_APPLICATION_ERROR`.

Exception handling helps the program respond to errors instead of allowing unexpected failures to go unhandled.

## 9. Testing

The test scripts cover successful procedure and function calls, missing employees, and invalid salary increases.

Execution results should be verified in Oracle SQL Developer and captured as screenshots.

## 10. Conclusion

The project demonstrates the application of records, collections, cursors, bulk processing, stored procedures, functions, and exception handling in Oracle PL/SQL.
