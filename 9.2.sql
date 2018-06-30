SELECT account_id, product_cd, cust_id, avail_balance FROM account a WHERE (SELECT product_type_cd FROM product p WHERE p.product_cd = a.product_cd) = 'LOAN';
