-- 10. FOLLOWERS and Following FOR EVERY USER
	-- Find followers and following for every user to know how things stand and who are the standouts
    
    
SELECT 
  u.username,
  COUNT(DISTINCT f1.follower_id) AS followers,
  COUNT(DISTINCT f2.followee_id) AS following
FROM users u
LEFT JOIN follows f1 ON f1.followee_id = u.id  -- Users who follow "u"
LEFT JOIN follows f2 ON f2.follower_id = u.id  -- Users "u" follows
GROUP BY u.id, u.username
ORDER BY followers DESC, following DESC;