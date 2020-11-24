-- List each assignment with the total number of assistance requests with it.

--     Select the assignment's id, day, chapter, name and the total assistances.
--     Order by total assistances in order of most to least.


-- SELECT  assignment_id AS id,
--         assignments.name AS name,
--         day,
--         chapter,
--         COUNT(assistance_requests.*) AS total_requests
-- FROM assistance_requests
-- JOIN assignments ON assignment_id = assignments.id
-- GROUP BY assignment_id, assignments.name, day, chapter
-- HAVING assignment_id IS NOT null
-- ORDER BY total_requests DESC;

SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;
