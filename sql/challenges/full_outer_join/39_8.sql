-- In the exercise below, we have an authors table.
-- The column authorId in the books table is a reference to the id in authors table.
-- Write a query to
-- display the name and price of all books that have a valid author, and the names of authors for each of them
-- include authors that don't have a book authored by them. For such authors, leave the book name and price columns blank.
-- include books that don't have a valid author, For such books, leave the author name column blank
-- The headers for the name of books, price of books, and name of author should be bookName, price and authorName respectively.
SELECT
    books.name AS bookName,
    price,
    authors.name AS authorName
FROM
    books
    FULL OUTER JOIN authors ON books.authorId = authors.id