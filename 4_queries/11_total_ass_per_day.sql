SELECT day, 
COUNT(assignments.*) AS number_of_assignments, 
SUM(duration) AS duation
FROM assignments
GROUP BY day
ORDER BY day;