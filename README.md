## What is PostgreSQL?

**PostgreSQL** is a powerful, open-source **relational database management system (RDBMS)**.  
It is used to **store, manage, and retrieve data** in an organized way using tables.

- It follows the **SQL (Structured Query Language)** standard.
- It supports **advanced features** like:
  - Transactions
  - Joins
  - Indexes
  - Triggers
  - Stored procedures
- It is highly reliable, fast, and works well for **large applications**.
- Commonly used in **web development, data analysis, and enterprise software**.

---

## What is a Primary Key and Foreign Key in PostgreSQL?

### Primary Key:

- A **Primary Key** is a column (or group of columns) in a table that:
  - **Uniquely identifies each row** in that table.
  - **Cannot have NULL values**.
  - Each value in the primary key **must be unique**.

**Example:**
```sql
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);
