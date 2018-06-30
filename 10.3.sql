SELECT a.account_id, a.product_cd, i.fname, i.lname, b.name business_name
FROM account a LEFT OUTER JOIN individual i
ON a.cust_id = i.cust_id
LEFT OUTER JOIN business b
ON a.cust_id = b.cust_id;
