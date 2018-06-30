SELECT a.account_id, a.product_cd, a.cust_id, a.avail_balance FROM account a WHERE (SELECT product_type_cd FROM product p WHERE p.product_cd = a.product_cd) = 'LOAN';
