-- 2. Which day is the best for a Marketing Campaign?
	-- searching for the days with the most enrollment/registrations.

SELECT DATE_FORMAT(created_at,'%W') AS week_day, COUNT(id) as N_of_registration FROM Users
GROUP BY Week_day;

-- OR

SELECT DAYNAME(created_at) AS week_day, COUNT(id) as N_of_registration FROM Users
GROUP BY Week_day;