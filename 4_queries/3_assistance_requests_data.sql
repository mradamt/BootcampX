-- Get important data about each assistance request.

--     Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
--     Subtract completed_at by started_at to find the duration.
--     Order by the duration of the request.


SELECT  teachers.name AS teacher,
        students.name AS student,
        assignments.name AS assignment,
        (completed_at - started_at) AS duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;
