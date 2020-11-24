-- Total Assignment Duration
-- This should work for any student but use 'Ibrahim Schimmel' for now.
-- Select only the total amount of time as a single column

SELECT SUM(duration) AS total_duration
FROM assignment_submissions JOIN students on students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';