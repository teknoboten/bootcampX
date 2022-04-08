SELECT cohorts.name, COUNT(cohort_id) as student_count
FROM students
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING COUNT(cohort_id) >= 18;