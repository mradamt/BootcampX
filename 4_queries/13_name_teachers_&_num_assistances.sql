-- Perform the same query as before, but include the number of assistances as well

SELECT DISTINCT   teachers.name AS teacher, 
                  cohorts.name AS cohort,
                  count(*) AS total_assistances
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
JOIN teachers ON teacher_id = teachers.id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;