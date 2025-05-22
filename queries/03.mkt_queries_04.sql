-- 4. Most liked Picture
	-- Searching for the username of user witht he most liked picture.

SELECT 
    p.id AS photo_id,
    COUNT(l.user_id) AS like_count,
    u.username
FROM photo p
JOIN likes l ON l.photo_id = p.id
JOIN users u ON p.user_id = u.id
GROUP BY p.id, u.username
ORDER BY like_count DESC
LIMIT 1;
