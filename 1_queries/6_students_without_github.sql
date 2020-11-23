-- Get all graduates without a linked Github account
  -- Get their name, email, and phone


SELECT name, email, phone
FROM students
WHERE github IS null
AND end_date IS NOT null;