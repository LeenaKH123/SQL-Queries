select user_id, MAX(id)
from comments
group by user_id