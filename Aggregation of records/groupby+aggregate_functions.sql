select user_id, COUNT(id) AS num_comments_created
from comments
group by user_id