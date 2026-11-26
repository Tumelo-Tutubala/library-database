USE LibraryDB;
GO

-- 1. All books
SELECT * FROM Books;

-- 2. Specific columns, sorted
SELECT Title, Author, PublishedYear
FROM Books
ORDER BY Title;

-- 3. Filter with WHERE
SELECT Title, Author
FROM Books
WHERE Genre = 'Fiction';

-- 4. Multiple conditions
SELECT Title, PublishedYear
FROM Books
WHERE PublishedYear >= 2000 AND CopiesAvailable > 0;

-- 5. Search by text
SELECT Title, Author
FROM Books
WHERE Title LIKE '%war%';

-- 6. Top 5 newest books
SELECT TOP 5 Title, PublishedYear
FROM Books
ORDER BY PublishedYear DESC;