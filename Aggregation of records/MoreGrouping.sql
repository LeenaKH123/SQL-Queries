select photo_id, count(*)
from comments
group by photo_id