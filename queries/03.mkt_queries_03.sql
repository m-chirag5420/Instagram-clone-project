-- 3. Inavtive users
 -- searhing for users with 0 posts on the platform

Select users.id, username, COUNT(photo.id) as Posts FROM users
LEFT JOIN photo ON users.id = photo.user_id
GROUP BY users.id
HAVING Posts = 0
ORDER BY Posts;