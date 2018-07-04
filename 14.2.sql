CREATE VIEW branch_account_total_balance (
branch_name,
city,
account_total_balance
) AS SELECT
b.name,
b.city,
SUM( a.avail_balance )
FROM branch b INNER JOIN account a ON b.branch_id = a.open_branch_id
GROUP BY b.name, b.city;

--DROP VIEW branch_account_total_balance;
