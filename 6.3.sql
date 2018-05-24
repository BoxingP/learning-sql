SELECT lname AS last_name, fname AS first_name FROM individual
UNION
SELECT lname, fname FROM employee
ORDER BY last_name;
