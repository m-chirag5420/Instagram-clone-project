-- 1. Rewarding the oldest members on platform
	-- searching for the members who registered on the platform at the very start.

SELECT * FROM users
ORDER BY created_at
LIMIT 5;