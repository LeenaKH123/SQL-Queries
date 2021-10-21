--A HAVING clause in SQL specifies that an SQL SELECT statement must only return rows where aggregate values meet
-- the specified conditions
select photo_id, count(*)
from comments
where photo_id < 3 -- photo id < 3
group by photo_id
HAVING count(*) > 2; -- the photo has more than two comments

-- another having example
-- find all the users(user_ids) where the user has commented on the first 50 photos -- meaning find the users with photo_id < 50
-- and the user added more than two comments on those photos
SELECT user_id, COUNT(*)
FROM comments
where photo_id < 50
group by user_id
having count(*) > 20;