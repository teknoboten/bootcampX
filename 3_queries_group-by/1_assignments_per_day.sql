SELECT day, count(id) as assignments 
FROM assignments
GROUP BY day
ORDER BY day ASC, count(id);