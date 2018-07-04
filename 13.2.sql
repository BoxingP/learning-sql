ALTER TABLE transaction ADD INDEX trans_date_amount_inx (txn_date, amount);
--ALTER TABLE transaction DROP INDEX trans_date_amount_inx;
