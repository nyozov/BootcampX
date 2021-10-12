SELECT cohorts.name, avg(assistance_requests.completed_at - assistance_requests.started_at) asaverage_assistance_time
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assistance_requests ON students.id = assistance_requests.student_id
GROUP BY cohorts.name;