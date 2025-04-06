-- Write a query to display the name and price of all books which are in the price range 100 and 600, written by a female author (gender 'F'), and belong either to the Java course or the PHP course. Also include the name of the course and the name of the author.
-- The headers for the name of books, price, name of the course, and name of the author should be bookName, price, courseName and authorName respectively, and the results should be in this order.
SELECT
    books.name AS bookName,
    price,
    courses.name AS courseName,
    authors.name AS authorName
FROM
    books
    JOIN courses
    JOIN authors ON books.courseId = courses.id
    AND books.authorID = authors.id
WHERE
    (price BETWEEN 100 AND 600)
    AND gender = 'F'
    AND courses.name IN ('Java', 'PHP')