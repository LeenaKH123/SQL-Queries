--A HAVING clause in SQL specifies that an SQL SELECT statement must only return rows where aggregate values meet
-- the specified conditions
select photo_id, count(*)
from comments
where photo_id < 3 -- photo id < 3
group by photo_id
HAVING count(*) > 2; -- the photo has more than two comments