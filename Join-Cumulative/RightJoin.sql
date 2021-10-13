SELECT url, username
FROM photos
RIGHT JOIN users on users.id = photos.user_id;