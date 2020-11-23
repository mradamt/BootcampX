-- Get all of the students currently enrolled
  -- Get their name, id, and cohort_id
  -- Order them by cohort_id

SELECT name, id, cohort_id, start_date, end_date
FROM students
WHERE CURRENT_DATE > start_date
AND CURRENT_DATE < end_date
ORDER BY cohort_id;


/* CORRECT ANSWER */
-- SELECT name, id, cohort_id
-- FROM students
-- WHERE end_date IS NULL
-- ORDER BY cohort_id;
