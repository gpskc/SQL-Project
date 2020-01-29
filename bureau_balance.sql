USE homecreditloans;
CREATE TABLE bureau_balance (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
ALTER TABLE bureau_balance ADD CONSTRAINT bureau_balance_PK PRIMARY KEY (sk_id_bureau,months_balance);
CREATE INDEX bureau_balance_INDX ON bureau_balance (sk_id_bureau);
ALTER TABLE bureau_balance ADD CONSTRAINT bureau_balance_FK FOREIGN KEY (sk_id_bureau) REFERENCES bureau (sk_id_bureau);

CREATE TABLE bureau_balance_raw1 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw2 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw3 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw4 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw5 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw6 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw7 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw8 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw9 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw10 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw11 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw12 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw13 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw14 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw15 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw16 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw17 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw18 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw19 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw20 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw21 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw22 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw23 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw24 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw25 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw26 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);
CREATE TABLE bureau_balance_raw27 (
	sk_id_bureau int not null,
	months_balance smallint not null,
	status varchar(5) not null);    

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk1.csv' INTO TABLE bureau_balance_raw1 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk2.csv' INTO TABLE bureau_balance_raw2 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk3.csv' INTO TABLE bureau_balance_raw3 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk4.csv' INTO TABLE bureau_balance_raw4 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk5.csv' INTO TABLE bureau_balance_raw5 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk6.csv' INTO TABLE bureau_balance_raw6 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk7.csv' INTO TABLE bureau_balance_raw7 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk8.csv' INTO TABLE bureau_balance_raw8 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk9.csv' INTO TABLE bureau_balance_raw9 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk10.csv' INTO TABLE bureau_balance_raw10 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk11.csv' INTO TABLE bureau_balance_raw11 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk12.csv' INTO TABLE bureau_balance_raw12 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk13.csv' INTO TABLE bureau_balance_raw13 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk14.csv' INTO TABLE bureau_balance_raw14 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk15.csv' INTO TABLE bureau_balance_raw15 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk16.csv' INTO TABLE bureau_balance_raw16 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk17.csv' INTO TABLE bureau_balance_raw17 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk18.csv' INTO TABLE bureau_balance_raw18 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk19.csv' INTO TABLE bureau_balance_raw19 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk20.csv' INTO TABLE bureau_balance_raw20 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk21.csv' INTO TABLE bureau_balance_raw21 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk22.csv' INTO TABLE bureau_balance_raw22 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk23.csv' INTO TABLE bureau_balance_raw23 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk24.csv' INTO TABLE bureau_balance_raw24 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk25.csv' INTO TABLE bureau_balance_raw25 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk26.csv' INTO TABLE bureau_balance_raw26 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_balance_chunk27.csv' INTO TABLE bureau_balance_raw27 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;

CREATE TABLE master_bureau_balance AS (
SELECT * FROM bureau_balance_raw1 UNION 
SELECT * FROM bureau_balance_raw2 UNION 
SELECT * FROM bureau_balance_raw3 UNION 
SELECT * FROM bureau_balance_raw4 UNION 
SELECT * FROM bureau_balance_raw5 UNION 
SELECT * FROM bureau_balance_raw6 UNION 
SELECT * FROM bureau_balance_raw7 UNION 
SELECT * FROM bureau_balance_raw8 UNION 
SELECT * FROM bureau_balance_raw9 UNION 
SELECT * FROM bureau_balance_raw10 UNION 
SELECT * FROM bureau_balance_raw11 UNION 
SELECT * FROM bureau_balance_raw12 UNION 
SELECT * FROM bureau_balance_raw13 UNION 
SELECT * FROM bureau_balance_raw14 UNION 
SELECT * FROM bureau_balance_raw15 UNION 
SELECT * FROM bureau_balance_raw16 UNION 
SELECT * FROM bureau_balance_raw17 UNION 
SELECT * FROM bureau_balance_raw18 UNION 
SELECT * FROM bureau_balance_raw19 UNION 
SELECT * FROM bureau_balance_raw20 UNION 
SELECT * FROM bureau_balance_raw21 UNION 
SELECT * FROM bureau_balance_raw22 UNION 
SELECT * FROM bureau_balance_raw23 UNION 
SELECT * FROM bureau_balance_raw24 UNION 
SELECT * FROM bureau_balance_raw25 UNION 
SELECT * FROM bureau_balance_raw26 UNION 
SELECT * FROM bureau_balance_raw27);
DROP TABLE IF EXISTS bureau_balance_raw1;
DROP TABLE IF EXISTS bureau_balance_raw2;
DROP TABLE IF EXISTS bureau_balance_raw3;
DROP TABLE IF EXISTS bureau_balance_raw4;
DROP TABLE IF EXISTS bureau_balance_raw5;
DROP TABLE IF EXISTS bureau_balance_raw6;
DROP TABLE IF EXISTS bureau_balance_raw7;
DROP TABLE IF EXISTS bureau_balance_raw8;
DROP TABLE IF EXISTS bureau_balance_raw9;
DROP TABLE IF EXISTS bureau_balance_raw10;
DROP TABLE IF EXISTS bureau_balance_raw11;
DROP TABLE IF EXISTS bureau_balance_raw12;
DROP TABLE IF EXISTS bureau_balance_raw13;
DROP TABLE IF EXISTS bureau_balance_raw14;
DROP TABLE IF EXISTS bureau_balance_raw15;
DROP TABLE IF EXISTS bureau_balance_raw16;
DROP TABLE IF EXISTS bureau_balance_raw17;
DROP TABLE IF EXISTS bureau_balance_raw18;
DROP TABLE IF EXISTS bureau_balance_raw19;
DROP TABLE IF EXISTS bureau_balance_raw20;
DROP TABLE IF EXISTS bureau_balance_raw21;
DROP TABLE IF EXISTS bureau_balance_raw22;
DROP TABLE IF EXISTS bureau_balance_raw23;
DROP TABLE IF EXISTS bureau_balance_raw24;
DROP TABLE IF EXISTS bureau_balance_raw25;
DROP TABLE IF EXISTS bureau_balance_raw26;
DROP TABLE IF EXISTS bureau_balance_raw27;

INSERT INTO bureau_balance SELECT * FROM master_bureau_balance;
DROP TABLE IF EXISTS master_bureau_balance;
