/*
DATA EXPLORATION
	Performs basic exploration on the data to understand connections and how to derive information from the data 
    follwing are some queries.
		1. FOLLOWERS OF EACH USER
        2. POSTS BY EACH USER
        3. AVERAGE NUMBER OF POSTS 
*/
SELECT * FROM users;
SELECT * FROM photo;


-- FOLLOWERS OF EACH USER
SELECT username, COUNT(follows.follower_id) AS number_of_followers FROM users
LEFT JOIN instagram_clone.follows ON follower_id = users.id
GROUP BY username
ORDER BY number_of_followers DESC;


-- POSTS BY EACH USER
SELECT username, users.id, COUNT(photo.id) AS number_of_posts FROM users
JOIN instagram_clone.photo ON photo.user_id = users.id
GROUP BY users.id
ORDER BY users.created_at;

-- AVG NUMBER OF POSTS
SELECT FORMAT(AVG(number_of_posts),1) AS Average_posts
FROM (
    SELECT username, users.id, COUNT(photo.id) AS number_of_posts
    FROM users
    JOIN instagram_clone.photo ON photo.user_id = users.id
    GROUP BY users.id, username
) AS user_post_counts;