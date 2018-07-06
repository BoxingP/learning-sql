SELECT concat('ALTER TABLE ', table_name, ' ADD ',
CASE WHEN index_name = 'PRIMARY' THEN 'UNIQUE ' ELSE '' END,
'INDEX ', index_name, ' (', column_name, ');') add_index
FROM information_schema.statistics WHERE table_schema = 'bank' AND table_name = 'employee';
