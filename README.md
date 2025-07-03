# SQL Views Demo

## Objective

Learn to create and use database views for abstraction, security, and logic reusability.

## Tools

- DB Browser for SQLite
- MySQL Workbench

## Files

- `create_views.sql` — SQL script with table, data, view definitions, and usage examples.

## Steps

### 1. Setup and Data

- The script creates a sample `Employees` table and populates it with data.

### 2. Creating Views

- **HighPaidEngineers**: Shows only engineers with salary over 70,000.
- **AvgDepartmentSalary**: Shows the average salary for each department.

### 3. Using Views

- Retrieve data from views as you would from regular tables:
    ```sql
    SELECT * FROM HighPaidEngineers;
    SELECT * FROM AvgDepartmentSalary WHERE AverageSalary > 60000;
    ```

### 4. Why Use Views?

- **Abstraction:** Hide complex queries behind a simple interface.
- **Security:** Restrict access to specific columns/rows.
- **Reusability:** Encapsulate reusable logic for reporting and applications.

## Running the Example

1. Open your database tool (DB Browser for SQLite or MySQL Workbench).
2. Run the content of `create_views.sql`.
3. Query the views as shown above.

---

**Outcome:**  
You will understand how to define and use SQL views for encapsulating logic, abstraction, and enhancing security.