SELECT table_name, index_name, column_name FROM information_schema.statistics WHERE table_schema = 'bank' ORDER BY table_name, index_name;
