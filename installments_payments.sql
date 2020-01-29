USE homecreditloans;
CREATE TABLE installments_payments (
sk_id_payment int not null auto_increment,
sk_id_prev  int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null,
primary key (sk_id_payment));
CREATE INDEX installments_payments_INDX1 ON installments_payments (sk_id_prev);
CREATE INDEX installments_payments_INDX2 ON installments_payments (sk_id_curr);
ALTER TABLE installments_payments ADD CONSTRAINT installments_payments_FK1 FOREIGN KEY (sk_id_prev) REFERENCES previous_application (sk_id_prev);
ALTER TABLE installments_payments ADD CONSTRAINT installments_payments_FK2 FOREIGN KEY (sk_id_curr) REFERENCES application (sk_id_curr);

CREATE TABLE installments_payments_raw1 (
sk_id_prev int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null);
CREATE TABLE installments_payments_raw2 (
sk_id_prev int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null);
CREATE TABLE installments_payments_raw3 (
sk_id_prev int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null);
CREATE TABLE installments_payments_raw4 (
sk_id_prev int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null);
CREATE TABLE installments_payments_raw5 (
sk_id_prev int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null);
CREATE TABLE installments_payments_raw6 (
sk_id_prev int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null);
CREATE TABLE installments_payments_raw7 (
sk_id_prev int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null);
CREATE TABLE installments_payments_raw8 (
sk_id_prev int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null);
CREATE TABLE installments_payments_raw9 (
sk_id_prev int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null);
CREATE TABLE installments_payments_raw10 (
sk_id_prev int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null);
CREATE TABLE installments_payments_raw11 (
sk_id_prev int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null);
CREATE TABLE installments_payments_raw12 (
sk_id_prev int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null);
CREATE TABLE installments_payments_raw13 (
sk_id_prev int not null, 
sk_id_curr int not null, 
num_instalment_version smallint not null, 
num_instalment_number smallint not null, 
days_instalment mediumint not null, 
days_entry_payment varchar(10) null, 
amt_instalment decimal(15,3) not null, 
amt_payment varchar(20) null);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/installments_payments_chunk1.csv' INTO TABLE installments_payments_raw1 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/installments_payments_chunk2.csv' INTO TABLE installments_payments_raw2 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/installments_payments_chunk3.csv' INTO TABLE installments_payments_raw3 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/installments_payments_chunk4.csv' INTO TABLE installments_payments_raw4 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/installments_payments_chunk5.csv' INTO TABLE installments_payments_raw5 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/installments_payments_chunk6.csv' INTO TABLE installments_payments_raw6 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/installments_payments_chunk7.csv' INTO TABLE installments_payments_raw7 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/installments_payments_chunk8.csv' INTO TABLE installments_payments_raw8 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/installments_payments_chunk9.csv' INTO TABLE installments_payments_raw9 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/installments_payments_chunk10.csv' INTO TABLE installments_payments_raw10 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/installments_payments_chunk11.csv' INTO TABLE installments_payments_raw11 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/installments_payments_chunk12.csv' INTO TABLE installments_payments_raw12 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/installments_payments_chunk13.csv' INTO TABLE installments_payments_raw13 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;

CREATE TABLE master_installments_payments AS (
SELECT * FROM installments_payments_raw1 UNION 
SELECT * FROM installments_payments_raw2 UNION 
SELECT * FROM installments_payments_raw3 UNION 
SELECT * FROM installments_payments_raw4 UNION 
SELECT * FROM installments_payments_raw5 UNION 
SELECT * FROM installments_payments_raw6 UNION 
SELECT * FROM installments_payments_raw7 UNION 
SELECT * FROM installments_payments_raw8 UNION 
SELECT * FROM installments_payments_raw9 UNION 
SELECT * FROM installments_payments_raw10 UNION 
SELECT * FROM installments_payments_raw11 UNION 
SELECT * FROM installments_payments_raw12 UNION 
SELECT * FROM installments_payments_raw13);
DROP TABLE IF EXISTS installments_payments_raw1;
DROP TABLE IF EXISTS installments_payments_raw2;
DROP TABLE IF EXISTS installments_payments_raw3;
DROP TABLE IF EXISTS installments_payments_raw4;
DROP TABLE IF EXISTS installments_payments_raw5;
DROP TABLE IF EXISTS installments_payments_raw6;
DROP TABLE IF EXISTS installments_payments_raw7;
DROP TABLE IF EXISTS installments_payments_raw8;
DROP TABLE IF EXISTS installments_payments_raw9;
DROP TABLE IF EXISTS installments_payments_raw10;
DROP TABLE IF EXISTS installments_payments_raw11;
DROP TABLE IF EXISTS installments_payments_raw12;
DROP TABLE IF EXISTS installments_payments_raw13;

INSERT INTO installments_payments SELECT * FROM master_installments_payments;
DROP TABLE IF EXISTS master_installments_payments;
