-- 8. BOTS ON THE SITE 
	-- finding users who have liked all the pictures on the platform
SELECT * FROM likes;

SELECT 
    username, 
    COUNT(l.photo_id) as likes 
FROM likes l
    JOIN users u ON l.user_id = u.id
GROUP BY u.username
HAVING likes = 
    (SELECT COUNT(*) FROM PHOTO)
ORDER BY likes DESC;