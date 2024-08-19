# Basic SQL Capabilities

Basic SQL covers essential functions that allow you to interact with and manage data in a relational database. Here’s what you can do with basic SQL:

## 1. Data Retrieval
- **SELECT:** Retrieve data from one or more tables.
  - Example: `SELECT * FROM employees;` retrieves all columns from the "employees" table.
- **WHERE:** Filter data based on conditions.
  - Example: `SELECT * FROM employees WHERE department = 'Sales';` retrieves all employees in the Sales department.
- **ORDER BY:** Sort data by one or more columns.
  - Example: `SELECT * FROM employees ORDER BY last_name;` sorts employees by their last names.

## 2. Data Insertion
- **INSERT INTO:** Add new records to a table.
  - Example: `INSERT INTO employees (first_name, last_name, department) VALUES ('John', 'Doe', 'Sales');` adds a new employee to the Sales department.

## 3. Data Update
- **UPDATE:** Modify existing records in a table.
  - Example: `UPDATE employees SET department = 'Marketing' WHERE last_name = 'Doe';` changes John Doe's department to Marketing.

## 4. Data Deletion
- **DELETE FROM:** Remove records from a table.
  - Example: `DELETE FROM employees WHERE last_name = 'Doe';` deletes John Doe from the employees table.

## 5. Basic Data Filtering and Aggregation
- **DISTINCT:** Retrieve unique values from a column.
  - Example: `SELECT DISTINCT department FROM employees;` returns a list of unique departments.
- **COUNT:** Count the number of rows that meet a condition.
  - Example: `SELECT COUNT(*) FROM employees;` counts the total number of employees.
- **SUM, AVG, MIN, MAX:** Perform basic mathematical operations on data.
  - Example: `SELECT AVG(salary) FROM employees WHERE department = 'Sales';` calculates the average salary of employees in the Sales department.

## 6. Data Sorting
- **ORDER BY:** Sort the retrieved data in ascending or descending order.
  - Example: `SELECT * FROM employees ORDER BY hire_date DESC;` sorts employees by their hire date, showing the most recent hires first.

## 7. Table Management
- **CREATE TABLE:** Create a new table in the database.
  - Example: `CREATE TABLE employees (id INT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50), department VARCHAR(50));`
- **ALTER TABLE:** Modify an existing table, such as adding or removing columns.
  - Example: `ALTER TABLE employees ADD COLUMN salary DECIMAL(10, 2);` adds a salary column to the employees table.
- **DROP TABLE:** Delete a table and all its data from the database.
  - Example: `DROP TABLE employees;` removes the employees table from the database.

## 8. Simple Joins
- **JOIN:** Combine data from two or more tables based on related columns.
  - Example: `SELECT employees.first_name, departments.department_name FROM employees JOIN departments ON employees.department_id = departments.id;` retrieves the first names of employees along with their respective department names.

## 9. Basic Constraints
- **PRIMARY KEY:** Ensure each record in a table is unique.
- **NOT NULL:** Ensure a column cannot have a NULL value.
- **UNIQUE:** Ensure all values in a column are unique.

## 10. Data Types
- Define the type of data that can be stored in a table’s columns, such as `INT`, `VARCHAR`, `DATE`, etc.

These basic SQL capabilities are fundamental for anyone working with relational databases. They allow you to perform essential operations like querying, inserting, updating, and deleting data, as well as managing basic table structures.
