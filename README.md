# 👁️ Task 7: Creating and Using Views – Library Management System

## 🎯 Objective

Learn to create and use **SQL Views** to simplify complex queries and improve code readability.

---

## 🛠️ Tools Used

- MySQL Workbench  
- MySQL Database (`library_db`)  
- DB Browser for SQLite (alternative)

---

## 📚 Domain: Library Management System

Tables involved:
- `books`
- `authors`
- `categories`
- `members`
- `loans`

---

## 🏗️ SQL View Definitions

### 1️⃣ View: Books with Author and Category

CREATE VIEW view_books_info AS
SELECT 
    b.title,
    a.name AS author_name,
    c.category_name,
    b.publication_year,
    b.copies_available
FROM books b
JOIN authors a ON b.author_id = a.author_id
JOIN categories c ON b.category_id = c.category_id;

✅ Outcome
Created reusable views for frequent queries
Simplified SELECT statements using virtual tables
Practiced advanced SQL concepts in a real-world database scenario
![view](https://github.com/user-attachments/assets/8c68b4cd-ced6-4bf0-ad6d-8772d71005a6)
