SELECT COUNT(assistance_requests.*) AS total_requests, 
assignments.id, assignments.name, assignments.day, assignments.chapter
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;