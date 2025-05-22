-- 6. TOP 5 HASHTAGS
	-- Finding top 5 most used hashtags 
SELECT * from PHOTO_TAGS;

SELECT (t.tag_name), COUNT(pt.Photo_id) AS Posts FROM PHOTO_TAGS pt
JOIN tags t ON pt.tag_id = t.id 
GROUP BY t.tag_name
ORDER BY Posts DESC
LIMIT 5;
