ALTER TABLE account ADD CONSTRAINT constr_product_cust UNIQUE (product_cd, cust_id);
--ALTER TABLE account DROP FOREIGN KEY fk_a_cust_id;
--ALTER TABLE account DROP FOREIGN KEY fk_product_cd;
--ALTER TABLE account DROP INDEX constr_product_cust;
--ALTER TABLE account ADD CONSTRAINT fk_a_cust_id FOREIGN KEY (cust_id) REFERENCES customer (cust_id);
--ALTER TABLE account ADD CONSTRAINT fk_product_cd FOREIGN KEY (product_cd) REFERENCES product (product_cd);
