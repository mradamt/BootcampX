-- Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.

--     Select the name of the student, their average completion time, and the average suggested completion time.
--     Order by average completion time from smallest to largest.
--     Only get currently enrolled students.
--     This will require data from students, assignment_submissions, and assignments.


-- SELECT  students.name AS student_name,
--         AVG(assignment_submissions.duration) AS average_assignment_duration,
--         AVG(assignments.duration) AS average_estimated_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- JOIN assignments ON assignment_submissions.id = assignments.id
-- -- WHERE end_date IS null
-- GROUP BY students.name


SELECT  students.name AS student,
        AVG(assignment_submissions.duration) AS average_assignment_duration,
        AVG(assignments.duration) AS average_estimated_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignment_id = assignments.id
WHERE end_date IS null
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration;