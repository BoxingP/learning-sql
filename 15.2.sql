SELECT concat('ALERT TABLE employee ADD CONSTRAINT PRIMARY KEY (', column_name, ');') add_index
FROM information_schema.key_column_usage WHERE table_schema = 'bank' AND table_name = 'employee' AND constraint_name = 'PRIMARY'
UNION ALL
SELECT concat('ALERT TABLE employee ADD CONSTRAINT ', constraint_name, ' FOREIGH KEY (', column_name, ') REFERENCES ', referenced_table_name, ' (', referenced_column_name, ');')
FROM information_schema.key_column_usage WHERE table_schema = 'bank' AND table_name = 'employee' AND constraint_name <> 'PRIMARY';
