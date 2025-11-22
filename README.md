# SQL-e-commerce-table-projects

This SQL project is organized into DDL, DML, and TCL categories. It includes table creation, data insertion, and transaction control operations. The project demonstrates essential database concepts such as constraints, joins, and rollback/commit for hands-on SQL learning and practicing core SQL concepts in a structured, real-world example.

# E-commerce SQL Project (DDL / DML / TCL split)

## Files
- create_tables.sql  (DDL)
- insert_data.sql   (DML)
- transactions.sql  (TCL examples)
- queries.sql       (SELECT tests)

## Run locally (SQLite easiest)
1. Install sqlite3
2. In terminal:
   sqlite3 ecommerce.db
   sqlite> .read create_tables.sql
   sqlite> .read insert_data.sql
   sqlite> .read queries.sql

## Run in GitHub Codespaces
1. Open repo in Codespaces (Code → Open with Codespaces)
2. In terminal inside codespace:
   sudo apt update
   sudo apt install sqlite3 -y
   sqlite3 ecommerce.db
   .read create_tables.sql
   .read insert_data.sql

## Notes
- Transaction examples are in transactions.sql
- For MySQL/Postgres some syntax changes may be required (use START TRANSACTION / SERIAL / sequences).
