SELECT title, name, rating
FROM books
JOIN authors on authors.id = books.author_id
JOIN reviews on reviews.reviewer_id = authors.id and reviews.book_id = books.id