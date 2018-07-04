ALTER TABLE account ADD CONSTRAINT constr_product_cust UNIQUE (product_cd, cust_id);
