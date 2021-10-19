select Authorid, count(*)
from Books
group by Authorid

select Authors.Name, count(*)
from Books
join Authors on Authors.Authorid = Books.Authorid
group by Authors.Name