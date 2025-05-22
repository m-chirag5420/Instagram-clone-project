-- 5. AVERAGE NUMBER OF POSTS
	-- Division to find avg number of posts (old school method)

SELECT FORMAT((SELECT COUNT(*) FROM photo)/(SELECT COUNT(*) FROM users), 2) AS AVG;

SELECT (SELECT Count(*) 
FROM   photo) / (SELECT Count(*) 
FROM   users) AS avg; 