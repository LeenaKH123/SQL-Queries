SELECT url, username
FROM photos
FULL JOIN users on users.id = photos.user_id;