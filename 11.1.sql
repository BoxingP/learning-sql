SELECT emp_id,
CASE 
WHEN title IN ('President', 'Vice President', 'Treasurer', 'Loan Manager') THEN 'Management'
WHEN title IN ('Operations Manager', 'Head Teller', 'Teller') THEN 'Operations'
ELSE 'Unknown'
END title
FROM employee;
