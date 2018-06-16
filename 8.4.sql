SELECT product_cd, open_branch_id, SUM(avail_balance) AS total_balance FROM account GROUP BY product_cd, open_branch_id HAVING COUNT(account_id) >= 1 ORDER BY total_balance DESC;
