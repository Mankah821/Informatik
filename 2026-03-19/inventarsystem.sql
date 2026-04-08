PS C:\Schule htl 2024_2025\Htl 2025_2026\infi\Git Hub Repo\Informatik-1\2026-03-19> sqlite3 Inventarsystem.db                                                        
SQLite version 3.50.4 2025-07-30 19:33:53
Enter ".help" for usage hints.
sqlite> CREATE TABLE categories (id INTEGER PRIMARY KEY,name TEXT NOT NULL);        
sqlite> CREATE TABLE products ( id INTEGER PRIMARY KEY, name TEXT NOT NULL, price REAL DEFAULT 0.0, category_id INTEGER NOT NULL, FOREIGN KEY (category_id) REFERENCE
S categories(id));               
sqlite> 



CREATE TABLE products ( id INTEGER PRIMARY KEY, name TEXT NOT NULL, price REAL DEFAULT 0.0 CHECK (price >= 0), category_id INTEGER NOT NULL, FOREIGN KEY (category_id) REFERENCE
S categories(id));               

pragma foreign_keys= ON;
sqlite> INSERT INTO products (name, price, category_id) VALUES ('Laptop', 999.99, 1);

