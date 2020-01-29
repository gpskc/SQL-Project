USE homecreditloans;
CREATE TABLE pos_cash_balance (
sk_id_prev int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
cnt_instalment varchar(10) null, 
cnt_instalment_future varchar(10) null, 
name_contract_status varchar(30) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
ALTER TABLE pos_cash_balance ADD CONSTRAINT pos_cash_balance_PK PRIMARY KEY (sk_id_prev,months_balance);
CREATE INDEX pos_cash_balance_INDX1 ON pos_cash_balance (sk_id_prev);
CREATE INDEX pos_cash_balance_INDX2 ON pos_cash_balance (sk_id_curr);
ALTER TABLE pos_cash_balance ADD CONSTRAINT pos_cash_balance_FK1 FOREIGN KEY (sk_id_prev) REFERENCES previous_application (sk_id_prev);
ALTER TABLE pos_cash_balance ADD CONSTRAINT pos_cash_balance_FK2 FOREIGN KEY (sk_id_curr) REFERENCES application (sk_id_curr);

CREATE TABLE pos_cash_balance_raw1 (
sk_id_prev int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
cnt_instalment varchar(10) null, 
cnt_instalment_future varchar(10) null, 
name_contract_status varchar(30) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
CREATE TABLE pos_cash_balance_raw2 (
sk_id_prev int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
cnt_instalment varchar(10) null, 
cnt_instalment_future varchar(10) null, 
name_contract_status varchar(30) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
CREATE TABLE pos_cash_balance_raw3 (
sk_id_prev int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
cnt_instalment varchar(10) null, 
cnt_instalment_future varchar(10) null, 
name_contract_status varchar(30) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
CREATE TABLE pos_cash_balance_raw4 (
sk_id_prev int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
cnt_instalment varchar(10) null, 
cnt_instalment_future varchar(10) null, 
name_contract_status varchar(30) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
CREATE TABLE pos_cash_balance_raw5 (
sk_id_prev int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
cnt_instalment varchar(10) null, 
cnt_instalment_future varchar(10) null, 
name_contract_status varchar(30) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
CREATE TABLE pos_cash_balance_raw6 (
sk_id_prev int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
cnt_instalment varchar(10) null, 
cnt_instalment_future varchar(10) null, 
name_contract_status varchar(30) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
CREATE TABLE pos_cash_balance_raw7 (
sk_id_prev int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
cnt_instalment varchar(10) null, 
cnt_instalment_future varchar(10) null, 
name_contract_status varchar(30) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
CREATE TABLE pos_cash_balance_raw8 (
sk_id_prev int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
cnt_instalment varchar(10) null, 
cnt_instalment_future varchar(10) null, 
name_contract_status varchar(30) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
CREATE TABLE pos_cash_balance_raw9 (
sk_id_prev int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
cnt_instalment varchar(10) null, 
cnt_instalment_future varchar(10) null, 
name_contract_status varchar(30) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
CREATE TABLE pos_cash_balance_raw10 (
sk_id_prev int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
cnt_instalment varchar(10) null, 
cnt_instalment_future varchar(10) null, 
name_contract_status varchar(30) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pos_cash_balance_chunk1.csv' INTO TABLE pos_cash_balance_raw1 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pos_cash_balance_chunk2.csv' INTO TABLE pos_cash_balance_raw2 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pos_cash_balance_chunk3.csv' INTO TABLE pos_cash_balance_raw3 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pos_cash_balance_chunk4.csv' INTO TABLE pos_cash_balance_raw4 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pos_cash_balance_chunk5.csv' INTO TABLE pos_cash_balance_raw5 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pos_cash_balance_chunk6.csv' INTO TABLE pos_cash_balance_raw6 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pos_cash_balance_chunk7.csv' INTO TABLE pos_cash_balance_raw7 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pos_cash_balance_chunk8.csv' INTO TABLE pos_cash_balance_raw8 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pos_cash_balance_chunk9.csv' INTO TABLE pos_cash_balance_raw9 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pos_cash_balance_chunk10.csv' INTO TABLE pos_cash_balance_raw10 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;

CREATE TABLE master_pos_cash_balance AS (
SELECT * FROM pos_cash_balance_raw1 UNION 
SELECT * FROM pos_cash_balance_raw2 UNION 
SELECT * FROM pos_cash_balance_raw3 UNION 
SELECT * FROM pos_cash_balance_raw4 UNION 
SELECT * FROM pos_cash_balance_raw5 UNION 
SELECT * FROM pos_cash_balance_raw6 UNION 
SELECT * FROM pos_cash_balance_raw7 UNION 
SELECT * FROM pos_cash_balance_raw8 UNION 
SELECT * FROM pos_cash_balance_raw9 UNION 
SELECT * FROM pos_cash_balance_raw10);
DROP TABLE IF EXISTS pos_cash_balance_raw1;
DROP TABLE IF EXISTS pos_cash_balance_raw2;
DROP TABLE IF EXISTS pos_cash_balance_raw3;
DROP TABLE IF EXISTS pos_cash_balance_raw4;
DROP TABLE IF EXISTS pos_cash_balance_raw5;
DROP TABLE IF EXISTS pos_cash_balance_raw6;
DROP TABLE IF EXISTS pos_cash_balance_raw7;
DROP TABLE IF EXISTS pos_cash_balance_raw8;
DROP TABLE IF EXISTS pos_cash_balance_raw9;
DROP TABLE IF EXISTS pos_cash_balance_raw10;

INSERT INTO pos_cash_balance SELECT * FROM master_pos_cash_balance;
DROP TABLE IF EXISTS master_pos_cash_balance;
