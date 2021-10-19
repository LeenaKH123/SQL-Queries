select user_id, COUNT(id) AS num_comments_created
from comments
group by user_id

select count(*) from photos
select count(user_id) from photos