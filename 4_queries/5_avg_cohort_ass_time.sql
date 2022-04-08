-- my solution which worked:
-- SELECT cohorts.name,
-- AVG(completed_at-started_at) as average_ass_request_duration
-- FROM cohorts
-- JOIN students ON students.cohort_id = cohorts.id
-- JOIN assistance_requests ON students.id = student_id
-- GROUP BY cohorts.name
-- ORDER BY average_ass_request_duration;



SELECT cohorts.name,
AVG(completed_at-started_at) as average_ass_request_duration
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_ass_request_duration;



