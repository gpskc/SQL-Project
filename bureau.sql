USE homecreditloans;
CREATE TABLE bureau (
sk_id_curr int not null, 
sk_id_bureau int not null, 
credit_active varchar(10) not null, 
credit_currency varchar(10) not null, 
days_credit mediumint not null, 
credit_day_overdue mediumint not null, 
days_credit_enddate varchar(10) null, 
days_enddate_fact varchar(10) null, 
amt_credit_max_overdue varchar(20) null, 
cnt_credit_prolong tinyint not null, 
amt_credit_sum varchar(20) null, 
amt_credit_sum_debt varchar(20) null, 
amt_credit_sum_limit varchar(20) null, 
amt_credit_sum_overdue decimal(15,3) not null, 
credit_type varchar(50) not null, 
days_credit_update mediumint not null, 
amt_annuity varchar(20) null);
ALTER TABLE bureau ADD CONSTRAINT bureau_PK PRIMARY KEY (sk_id_bureau);
CREATE INDEX bureau_INDX ON bureau (sk_id_curr);
ALTER TABLE bureau ADD CONSTRAINT bureau_FK FOREIGN KEY (sk_id_curr) REFERENCES application (sk_id_curr);

CREATE TABLE bureau_raw1 (
sk_id_curr int not null, 
sk_id_bureau int not null, 
credit_active varchar(10) not null, 
credit_currency varchar(10) not null, 
days_credit mediumint not null, 
credit_day_overdue mediumint not null, 
days_credit_enddate varchar(10) null, 
days_enddate_fact varchar(10) null, 
amt_credit_max_overdue varchar(20) null, 
cnt_credit_prolong tinyint not null, 
amt_credit_sum varchar(20) null, 
amt_credit_sum_debt varchar(20) null, 
amt_credit_sum_limit varchar(20) null, 
amt_credit_sum_overdue decimal(15,3) not null, 
credit_type varchar(50) not null, 
days_credit_update mediumint not null, 
amt_annuity varchar(20) null);
CREATE TABLE bureau_raw2 (
sk_id_curr int not null, 
sk_id_bureau int not null, 
credit_active varchar(10) not null, 
credit_currency varchar(10) not null, 
days_credit mediumint not null, 
credit_day_overdue mediumint not null, 
days_credit_enddate varchar(10) null, 
days_enddate_fact varchar(10) null, 
amt_credit_max_overdue varchar(20) null, 
cnt_credit_prolong tinyint not null, 
amt_credit_sum varchar(20) null, 
amt_credit_sum_debt varchar(20) null, 
amt_credit_sum_limit varchar(20) null, 
amt_credit_sum_overdue decimal(15,3) not null, 
credit_type varchar(50) not null, 
days_credit_update mediumint not null, 
amt_annuity varchar(20) null);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_chunk1.csv' INTO TABLE bureau_raw1 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/bureau_chunk2.csv' INTO TABLE bureau_raw2 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;

CREATE TABLE master_bureau AS (SELECT * FROM bureau_raw1 UNION SELECT * FROM bureau_raw2);
DROP TABLE IF EXISTS bureau_raw1;
DROP TABLE IF EXISTS bureau_raw2;

INSERT INTO bureau SELECT * FROM master_bureau;
DROP TABLE IF EXISTS master_bureau;

