-- Get currently enrolled students' average assignment completion time.

--     Select the students name and average time from assignment submissions.
--     Order the results from greatest duration to least greatest duration.
--     A student will have a null end_date if they are currently enrolled


SELECT  students.name AS student,
        AVG(assignment_submissions.duration) AS average_assignment_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS null
GROUP BY students.name, student_id
ORDER BY average_assignment_duration DESC;


-- Rearrange the above query. 
-- Since most of our filters relate to 'students' table, use that as base and join assignment_submissions to that. Just to save time.
SELECT  students.name AS student,
        AVG(assignment_submissions.duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS null
GROUP BY name
ORDER BY average_assignment_duration DESC;