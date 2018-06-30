SELECT p.name product_name, a.account_id FROM account a RIGHT OUTER JOIN product p ON a.product_cd = p.product_cd;
