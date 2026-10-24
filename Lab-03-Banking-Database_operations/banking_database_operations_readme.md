# Lab 03: Banking Database Operations

This repository contains SQL scripts for managing and manipulating data in the `banking_db` database. The script demonstrates basic Data Manipulation Language (DML) operations including inserting records, updating customer information, and deleting specific database records.

---

## 📌 Features & Workflow

The SQL script performs the following database operations sequentially:

1. **Database Selection**: Sets the active database to `banking_db`.
2. **Data Insertion**:
   * Inserts new customer records into the `Customers` table.
   * Inserts initial account details into the `Accounts` table linked via `CustomerID`.
3. **Data Modification**:
   * Temporarily disables SQL safe updates (`SET SQL_SAFE_UPDATES = 0;`) to allow modification without key restrictions where applicable.
   * Updates customer contact details (`Phone` and `Email`) based on `CustomerID`.
   * Verifies updates after each operation using `SELECT` statements.
4. **Data Deletion**:
   * Removes specific transaction records from the `Transactions` table.
   * Removes specific account records from the `Accounts` table.
   * Verifies table states following deletions.

---

## 📁 Tables Referenced

| Table Name | Description | Key Fields Used |
| :--- | :--- | :--- |
| **`Customers`** | Stores personal contact details for bank clients | `CustomerID`, `FirstName`, `LastName`, `Email`, `Phone`, `DateOfBirth` |
| **`Accounts`** | Holds bank account details associated with customers | `AccountID`, `CustomerID`, `AccountType`, `Balance` |
| **`Transactions`** | Records financial transactions | `TransactionID` |

---

## 🚀 Usage Instructions

### Prerequisites
* MySQL Server or MySQL Workbench (or any compatible SQL RDBMS).
* An existing database named `banking_db` with pre-defined schema structures for `Customers`, `Accounts`, and `Transactions`.

### Execution Steps
1. Open your database management tool (e.g., MySQL Workbench, DBeaver, or command line).
2. Ensure the `banking_db` schema exists:
   ```sql
   CREATE DATABASE IF NOT EXISTS banking_db;
   ```
3. Load and execute the `Lab-03-Banking-Database.sql` file.

---

## 📝 Example Operations Included

* **Inserting a Customer:**
  ```sql
  INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, DateOfBirth)
  VALUES (101, 'Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', '1998-04-15');
  ```

* **Updating Customer Phone:**
  ```sql
  UPDATE Customers 
  SET Phone = '9999999999'
  WHERE CustomerID = 101;
  ```

* **Deleting an Account:**
  ```sql
  DELETE FROM Accounts 
  WHERE AccountID = 202;
  ```

---

## ⚠️ Notes
* **Safe Update Mode:** The script includes `SET SQL_SAFE_UPDATES = 0;`. Remember to re-enable safe updates (`SET SQL_SAFE_UPDATES = 1;`) after executing the script if working in a production environment.