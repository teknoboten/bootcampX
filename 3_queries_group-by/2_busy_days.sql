SELECT day, count(id) as assignments 
FROM assignments
GROUP BY day
HAVING count(id) >= 10
ORDER BY day ASC;