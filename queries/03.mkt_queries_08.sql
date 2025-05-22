-- 8. Users with highest AVG LIKES
	-- Finding the top 10 users with highest average likes on their posts
    -- Shows the user engagement and pointing out the users with he most engagement of all

SELECT * FROM likes;

SELECT u.username, FORMAT(AVG(total_likes),2) AS AVG_likes FROM 
(SELECT p.user_id, COUNT(l.user_id) AS total_likes FROM photo p
LEFT JOIN likes l ON p.id = l.photo_id
GROUP BY p.user_id, p.id
ORDER BY total_likes DESC) AS Likes_count
JOIN users u ON likes_count.user_id = u.id
GROUP BY u.username
ORDER BY AVG_likes DESC
LIMIT 10;
