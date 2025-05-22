-- 9. AVG Followers
	-- Gives you the comparision between the Average and number of followers of each user


SELECT COUNT(*) FROM users;

SELECT COUNT(*) FROM follows;

SELECT FORMAT((SELECT COUNT(*) FROM follows) * 1.0/(SELECT COUNT(*) FROM users),2) AS AVERAGE_FOLLOWER_PER_USER;