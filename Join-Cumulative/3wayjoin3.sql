select title, name, rating
from reviews
join Books on Books.Bookid = reviews.book_id
join Authors on Authors.Authorid = Books.Bookid and Authors.Authorid = reviews.reviewer_id