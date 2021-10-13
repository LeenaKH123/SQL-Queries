select url, username 
FROM photos 
left JOIN users ON users.id = photos.user_id;