USE homecreditloans;
CREATE TABLE credit_card_balance (
sk_id_prev  int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
amt_balance decimal(15,3) not null, 
amt_credit_limit_actual decimal(15,3) not null, 
amt_drawings_atm_current varchar(20) null, 
amt_drawings_current decimal(15,3) not null, 
amt_drawings_other_current varchar(20) null, 
amt_drawings_pos_current varchar(20) null, 
amt_inst_min_regularity varchar(20) null, 
amt_payment_current varchar(20) null, 
amt_payment_total_current decimal(15,3) not null, 
amt_receivable_principal decimal(15,3) not null, 
amt_recivable decimal(15,3) not null, 
amt_total_receivable decimal(15,3) not null, 
cnt_drawings_atm_current varchar(10) null, 
cnt_drawings_current smallint not null, 
cnt_drawings_other_current varchar(10) null, 
cnt_drawings_pos_current varchar(10) null, 
cnt_instalment_mature_cum varchar(10) null, 
name_contract_status varchar(20) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
ALTER TABLE credit_card_balance ADD CONSTRAINT credit_card_balance_PK PRIMARY KEY (sk_id_prev,months_balance);
CREATE INDEX credit_card_balance_INDX1 ON credit_card_balance (sk_id_prev);
CREATE INDEX credit_card_balance_INDX2 ON credit_card_balance (sk_id_curr);
ALTER TABLE credit_card_balance ADD CONSTRAINT credit_card_balance_FK1 FOREIGN KEY (sk_id_prev) REFERENCES previous_application (sk_id_prev);
ALTER TABLE credit_card_balance ADD CONSTRAINT credit_card_balance_FK2 FOREIGN KEY (sk_id_curr) REFERENCES application (sk_id_curr);

CREATE TABLE credit_card_balance_raw1 (
sk_id_prev  int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
amt_balance decimal(15,3) not null, 
amt_credit_limit_actual decimal(15,3) not null, 
amt_drawings_atm_current varchar(20) null, 
amt_drawings_current decimal(15,3) not null, 
amt_drawings_other_current varchar(20) null, 
amt_drawings_pos_current varchar(20) null, 
amt_inst_min_regularity varchar(20) null, 
amt_payment_current varchar(20) null, 
amt_payment_total_current decimal(15,3) not null, 
amt_receivable_principal decimal(15,3) not null, 
amt_recivable decimal(15,3) not null, 
amt_total_receivable decimal(15,3) not null, 
cnt_drawings_atm_current varchar(10) null, 
cnt_drawings_current smallint not null, 
cnt_drawings_other_current varchar(10) null, 
cnt_drawings_pos_current varchar(10) null, 
cnt_instalment_mature_cum varchar(10) null, 
name_contract_status varchar(20) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
CREATE TABLE credit_card_balance_raw2 (
sk_id_prev  int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
amt_balance decimal(15,3) not null, 
amt_credit_limit_actual decimal(15,3) not null, 
amt_drawings_atm_current varchar(20) null, 
amt_drawings_current decimal(15,3) not null, 
amt_drawings_other_current varchar(20) null, 
amt_drawings_pos_current varchar(20) null, 
amt_inst_min_regularity varchar(20) null, 
amt_payment_current varchar(20) null, 
amt_payment_total_current decimal(15,3) not null, 
amt_receivable_principal decimal(15,3) not null, 
amt_recivable decimal(15,3) not null, 
amt_total_receivable decimal(15,3) not null, 
cnt_drawings_atm_current varchar(10) null, 
cnt_drawings_current smallint not null, 
cnt_drawings_other_current varchar(10) null, 
cnt_drawings_pos_current varchar(10) null, 
cnt_instalment_mature_cum varchar(10) null, 
name_contract_status varchar(20) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
CREATE TABLE credit_card_balance_raw3 (
sk_id_prev  int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
amt_balance decimal(15,3) not null, 
amt_credit_limit_actual decimal(15,3) not null, 
amt_drawings_atm_current varchar(20) null, 
amt_drawings_current decimal(15,3) not null, 
amt_drawings_other_current varchar(20) null, 
amt_drawings_pos_current varchar(20) null, 
amt_inst_min_regularity varchar(20) null, 
amt_payment_current varchar(20) null, 
amt_payment_total_current decimal(15,3) not null, 
amt_receivable_principal decimal(15,3) not null, 
amt_recivable decimal(15,3) not null, 
amt_total_receivable decimal(15,3) not null, 
cnt_drawings_atm_current varchar(10) null, 
cnt_drawings_current smallint not null, 
cnt_drawings_other_current varchar(10) null, 
cnt_drawings_pos_current varchar(10) null, 
cnt_instalment_mature_cum varchar(10) null, 
name_contract_status varchar(20) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);
CREATE TABLE credit_card_balance_raw4 (
sk_id_prev  int not null, 
sk_id_curr int not null, 
months_balance smallint not null, 
amt_balance decimal(15,3) not null, 
amt_credit_limit_actual decimal(15,3) not null, 
amt_drawings_atm_current varchar(20) null, 
amt_drawings_current decimal(15,3) not null, 
amt_drawings_other_current varchar(20) null, 
amt_drawings_pos_current varchar(20) null, 
amt_inst_min_regularity varchar(20) null, 
amt_payment_current varchar(20) null, 
amt_payment_total_current decimal(15,3) not null, 
amt_receivable_principal decimal(15,3) not null, 
amt_recivable decimal(15,3) not null, 
amt_total_receivable decimal(15,3) not null, 
cnt_drawings_atm_current varchar(10) null, 
cnt_drawings_current smallint not null, 
cnt_drawings_other_current varchar(10) null, 
cnt_drawings_pos_current varchar(10) null, 
cnt_instalment_mature_cum varchar(10) null, 
name_contract_status varchar(20) not null, 
sk_dpd mediumint not null, 
sk_dpd_def mediumint not null);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit_card_balance_chunk1.csv' INTO TABLE credit_card_balance_raw1 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit_card_balance_chunk2.csv' INTO TABLE credit_card_balance_raw2 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit_card_balance_chunk3.csv' INTO TABLE credit_card_balance_raw3 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit_card_balance_chunk4.csv' INTO TABLE credit_card_balance_raw4 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;

CREATE TABLE master_credit_card_balance AS (
SELECT * FROM credit_card_balance_raw1 UNION 
SELECT * FROM credit_card_balance_raw2 UNION 
SELECT * FROM credit_card_balance_raw3 UNION 
SELECT * FROM credit_card_balance_raw4);
DROP TABLE IF EXISTS credit_card_balance_raw1;
DROP TABLE IF EXISTS credit_card_balance_raw2;
DROP TABLE IF EXISTS credit_card_balance_raw3;
DROP TABLE IF EXISTS credit_card_balance_raw4;

INSERT INTO credit_card_balance SELECT * FROM master_credit_card_balance;
DROP TABLE IF EXISTS master_credit_card_balance;
