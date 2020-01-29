SHOW VARIABLES LIKE 'foreign_key_checks';
SHOW VARIABLES LIKE 'local_infile';
SHOW VARIABLES LIKE 'autocommit';
SHOW VARIABLES LIKE 'secure_file_priv';

SET GLOBAL innodb_buffer_pool_size = 134217728;
SET foreign_key_checks = 0;
SET GLOBAL local_infile = 1;

CREATE DATABASE homecreditloans;
USE homecreditloans;
SHOW PROCESSLIST;
show tables;