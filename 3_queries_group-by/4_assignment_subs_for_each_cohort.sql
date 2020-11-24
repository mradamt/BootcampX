-- Get the total number of assignment submissions for each cohort.

--     Select the cohort name and total submissions.
--     Order the results from greatest to least submissions.


SELECT  cohorts.name AS cohort, 
        COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;