SELECT SUM(assignment_submissions.duration) AS total_duration
FROM students 
INNER JOIN assignment_submissions
ON student_id = students.id
INNER JOIN cohorts
ON cohort_id = cohorts.id
WHERE cohort_id = 1;
