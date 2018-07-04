CREATE VIEW supervisor_employee (
supervisor_name,
employee_name
) AS
SELECT concat( superior.fname, ' ', superior.lname ),
concat( e.fname, ' ', e.lname )
FROM employee e 
LEFT OUTER JOIN employee superior ON e.superior_emp_id = superior.emp_id;

--DROP VIEW supervisor_employee;
