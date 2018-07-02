START TRANSACTION;

SET @money_account_id = (
SELECT a.account_id FROM account a
INNER JOIN individual i ON a.cust_id = i.cust_id
INNER JOIN product p ON a.product_cd = p.product_cd
WHERE i.fname = 'Frank' AND i.lname = 'Tucker' AND p.name = 'money market account');
SET @checking_account_id = (
SELECT a.account_id FROM account a
INNER JOIN individual i ON a.cust_id = i.cust_id
INNER JOIN product p ON a.product_cd = p.product_cd
WHERE i.fname = 'Frank' AND i.lname = 'Tucker' AND p.name = 'checking account');
SET @amount = 50.00;

SAVEPOINT before_money_transaction;
INSERT INTO transaction (txn_date, account_id, txn_type_cd, amount, funds_avail_date) VALUES (CURRENT_TIMESTAMP(), @money_account_id, 'DBT', @amount, CURRENT_TIMESTAMP());

SAVEPOINT before_update_money_account;
UPDATE account SET avail_balance = avail_balance - @amount, last_activity_date = DATE(CURRENT_TIMESTAMP()) WHERE account_id = @money_account_id;

SAVEPOINT before_check_transaction;
INSERT INTO transaction (txn_date, account_id, txn_type_cd, amount, funds_avail_date) VALUES (CURRENT_TIMESTAMP(), @checking_account_id, 'CDT', @amount, CURRENT_TIMESTAMP());

SAVEPOINT before_update_checking_account;
UPDATE account SET avail_balance = avail_balance + @amount, last_activity_date = DATE(CURRENT_TIMESTAMP()) WHERE account_id = @checking_account_id;

COMMIT;
