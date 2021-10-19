select Authors.Authorid, count(Books.Bookid)
from Authors
join Books on Books.Authorid = Authors.Authorid
group by Books.Authorid