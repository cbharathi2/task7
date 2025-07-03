USE library_db;
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
SELECT * FROM view_books_info
ORDER BY publication_year DESC;
CREATE VIEW view_borrowed_books AS
SELECT 
    m.name AS member_name,
    b.title AS book_title,
    l.loan_date,
    l.return_date
FROM loans l
JOIN members m ON l.member_id = m.member_id
JOIN books b ON l.book_id = b.book_id;
-- Get all unreturned books
SELECT *
FROM view_borrowed_books
WHERE return_date IS NULL;
DROP VIEW IF EXISTS view_books_info;
DROP VIEW IF EXISTS view_borrowed_books;
