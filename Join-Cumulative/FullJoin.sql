SELECT url, username
FROM photos
FULL OUTER JOIN users on users.id = photos.user_id;