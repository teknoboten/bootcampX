SELECT students.name,
AVG(assignment_submissions.duration)
FROM students
JOIN assignment_submissions on students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY AVG(assignment_submissions.duration);
