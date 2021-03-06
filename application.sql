USE homecreditloans;
CREATE TABLE application (
sk_id_curr int not null, 
name_contract_type varchar(20) not null, 
code_gender varchar(5) not null, 
flag_own_car varchar(5) not null, 
flag_own_realty varchar(5) not null, 
cnt_children tinyint not null, 
amt_income_total decimal(15,3) not null, 
amt_credit decimal(15,3) not null, 
amt_annuity varchar(20) null, 
amt_goods_price varchar(20) null, 
name_type_suite varchar(20) null, 
name_income_type varchar(30) not null, 
name_education_type varchar(30) not null, 
name_family_status varchar(30) not null, 
name_housing_type varchar(30) not null, 
region_population_relative decimal(7,6) not null, 
days_birth mediumint not null, 
days_employed mediumint not null, 
days_registration mediumint not null, 
days_id_publish mediumint not null, 
own_car_age varchar(5) null, 
flag_mobil tinyint not null, 
flag_emp_phone tinyint not null, 
flag_work_phone tinyint not null, 
flag_cont_mobile tinyint not null, 
flag_phone tinyint not null, 
flag_email tinyint not null, 
occupation_type varchar(30) null, 
cnt_fam_members varchar(5) null, 
region_rating_client tinyint not null, 
region_rating_client_w_city tinyint not null, 
weekday_appr_process_start varchar(10) not null, 
hour_appr_process_start tinyint not null, 
reg_region_not_live_region tinyint not null, 
reg_region_not_work_region tinyint not null, 
live_region_not_work_region tinyint not null, 
reg_city_not_live_city tinyint not null, 
reg_city_not_work_city tinyint not null, 
live_city_not_work_city tinyint not null, 
organization_type varchar(30) not null, 
ext_source_1 varchar(20) null, 
ext_source_2 varchar(20) null, 
ext_source_3 varchar(20) null, 
apartments_avg varchar(10) null, 
basementarea_avg varchar(10) null, 
years_beginexpluatation_avg varchar(10) null, 
years_build_avg varchar(10) null, 
commonarea_avg varchar(10) null, 
elevators_avg varchar(10) null, 
entrances_avg varchar(10) null, 
floorsmax_avg varchar(10) null, 
floorsmin_avg varchar(10) null, 
landarea_avg varchar(10) null, 
livingapartments_avg varchar(10) null, 
livingarea_avg varchar(10) null, 
nonlivingapartments_avg varchar(10) null, 
nonlivingarea_avg varchar(10) null, 
apartments_mode varchar(10) null, 
basementarea_mode varchar(10) null, 
years_beginexpluatation_mode varchar(10) null, 
years_build_mode varchar(10) null, 
commonarea_mode varchar(10) null, 
elevators_mode varchar(10) null, 
entrances_mode varchar(10) null, 
floorsmax_mode varchar(10) null, 
floorsmin_mode varchar(10) null, 
landarea_mode varchar(10) null, 
livingapartments_mode varchar(10) null, 
livingarea_mode varchar(10) null, 
nonlivingapartments_mode varchar(10) null, 
nonlivingarea_mode varchar(10) null, 
apartments_medi varchar(10) null, 
basementarea_medi varchar(10) null, 
years_beginexpluatation_medi varchar(10) null, 
years_build_medi varchar(10) null, 
commonarea_medi varchar(10) null, 
elevators_medi varchar(10) null, 
entrances_medi varchar(10) null, 
floorsmax_medi varchar(10) null, 
floorsmin_medi varchar(10) null, 
landarea_medi varchar(10) null, 
livingapartments_medi varchar(10) null, 
livingarea_medi varchar(10) null, 
nonlivingapartments_medi varchar(10) null, 
nonlivingarea_medi varchar(10) null, 
fondkapremont_mode varchar(30) null, 
housetype_mode varchar(20) null, 
totalarea_mode varchar(10) null, 
wallsmaterial_mode varchar(20) null, 
emergencystate_mode varchar(5) null, 
obs_30_cnt_social_circle varchar(10) null, 
def_30_cnt_social_circle varchar(10) null, 
obs_60_cnt_social_circle varchar(10) null, 
def_60_cnt_social_circle varchar(10) null, 
days_last_phone_change varchar(10) null, 
flag_document_2 tinyint not null, 
flag_document_3 tinyint not null, 
flag_document_4 tinyint not null, 
flag_document_5 tinyint not null, 
flag_document_6 tinyint not null, 
flag_document_7 tinyint not null, 
flag_document_8 tinyint not null, 
flag_document_9 tinyint not null, 
flag_document_10 tinyint not null, 
flag_document_11 tinyint not null, 
flag_document_12 tinyint not null, 
flag_document_13 tinyint not null, 
flag_document_14 tinyint not null, 
flag_document_15 tinyint not null, 
flag_document_16 tinyint not null, 
flag_document_17 tinyint not null, 
flag_document_18 tinyint not null, 
flag_document_19 tinyint not null, 
flag_document_20 tinyint not null, 
flag_document_21 tinyint not null, 
amt_req_credit_bureau_hour varchar(10) null, 
amt_req_credit_bureau_day varchar(10) null, 
amt_req_credit_bureau_week varchar(10) null, 
amt_req_credit_bureau_mon varchar(10) null, 
amt_req_credit_bureau_qrt varchar(10) null, 
amt_req_credit_bureau_year varchar(10) null, 
target varchar(5) null);
ALTER TABLE application ADD CONSTRAINT application_PK PRIMARY KEY (sk_id_curr);

CREATE TABLE application_test_raw (
sk_id_curr int not null, 
name_contract_type varchar(20) not null, 
code_gender varchar(5) not null, 
flag_own_car varchar(5) not null, 
flag_own_realty varchar(5) not null, 
cnt_children tinyint not null, 
amt_income_total decimal(15,3) not null, 
amt_credit decimal(15,3) not null, 
amt_annuity varchar(20) null, 
amt_goods_price varchar(20) null, 
name_type_suite varchar(20) null, 
name_income_type varchar(30) not null, 
name_education_type varchar(30) not null, 
name_family_status varchar(30) not null, 
name_housing_type varchar(30) not null, 
region_population_relative decimal(7,6) not null, 
days_birth mediumint not null, 
days_employed mediumint not null, 
days_registration mediumint not null, 
days_id_publish mediumint not null, 
own_car_age varchar(5) null, 
flag_mobil tinyint not null, 
flag_emp_phone tinyint not null, 
flag_work_phone tinyint not null, 
flag_cont_mobile tinyint not null, 
flag_phone tinyint not null, 
flag_email tinyint not null, 
occupation_type varchar(30) null, 
cnt_fam_members varchar(5) null, 
region_rating_client tinyint not null, 
region_rating_client_w_city tinyint not null, 
weekday_appr_process_start varchar(10) not null, 
hour_appr_process_start tinyint not null, 
reg_region_not_live_region tinyint not null, 
reg_region_not_work_region tinyint not null, 
live_region_not_work_region tinyint not null, 
reg_city_not_live_city tinyint not null, 
reg_city_not_work_city tinyint not null, 
live_city_not_work_city tinyint not null, 
organization_type varchar(30) not null, 
ext_source_1 varchar(20) null, 
ext_source_2 varchar(20) null, 
ext_source_3 varchar(20) null, 
apartments_avg varchar(10) null, 
basementarea_avg varchar(10) null, 
years_beginexpluatation_avg varchar(10) null, 
years_build_avg varchar(10) null, 
commonarea_avg varchar(10) null, 
elevators_avg varchar(10) null, 
entrances_avg varchar(10) null, 
floorsmax_avg varchar(10) null, 
floorsmin_avg varchar(10) null, 
landarea_avg varchar(10) null, 
livingapartments_avg varchar(10) null, 
livingarea_avg varchar(10) null, 
nonlivingapartments_avg varchar(10) null, 
nonlivingarea_avg varchar(10) null, 
apartments_mode varchar(10) null, 
basementarea_mode varchar(10) null, 
years_beginexpluatation_mode varchar(10) null, 
years_build_mode varchar(10) null, 
commonarea_mode varchar(10) null, 
elevators_mode varchar(10) null, 
entrances_mode varchar(10) null, 
floorsmax_mode varchar(10) null, 
floorsmin_mode varchar(10) null, 
landarea_mode varchar(10) null, 
livingapartments_mode varchar(10) null, 
livingarea_mode varchar(10) null, 
nonlivingapartments_mode varchar(10) null, 
nonlivingarea_mode varchar(10) null, 
apartments_medi varchar(10) null, 
basementarea_medi varchar(10) null, 
years_beginexpluatation_medi varchar(10) null, 
years_build_medi varchar(10) null, 
commonarea_medi varchar(10) null, 
elevators_medi varchar(10) null, 
entrances_medi varchar(10) null, 
floorsmax_medi varchar(10) null, 
floorsmin_medi varchar(10) null, 
landarea_medi varchar(10) null, 
livingapartments_medi varchar(10) null, 
livingarea_medi varchar(10) null, 
nonlivingapartments_medi varchar(10) null, 
nonlivingarea_medi varchar(10) null, 
fondkapremont_mode varchar(30) null, 
housetype_mode varchar(20) null, 
totalarea_mode varchar(10) null, 
wallsmaterial_mode varchar(20) null, 
emergencystate_mode varchar(5) null, 
obs_30_cnt_social_circle varchar(10) null, 
def_30_cnt_social_circle varchar(10) null, 
obs_60_cnt_social_circle varchar(10) null, 
def_60_cnt_social_circle varchar(10) null, 
days_last_phone_change varchar(10) null, 
flag_document_2 tinyint not null, 
flag_document_3 tinyint not null, 
flag_document_4 tinyint not null, 
flag_document_5 tinyint not null, 
flag_document_6 tinyint not null, 
flag_document_7 tinyint not null, 
flag_document_8 tinyint not null, 
flag_document_9 tinyint not null, 
flag_document_10 tinyint not null, 
flag_document_11 tinyint not null, 
flag_document_12 tinyint not null, 
flag_document_13 tinyint not null, 
flag_document_14 tinyint not null, 
flag_document_15 tinyint not null, 
flag_document_16 tinyint not null, 
flag_document_17 tinyint not null, 
flag_document_18 tinyint not null, 
flag_document_19 tinyint not null, 
flag_document_20 tinyint not null, 
flag_document_21 tinyint not null, 
amt_req_credit_bureau_hour varchar(10) null, 
amt_req_credit_bureau_day varchar(10) null, 
amt_req_credit_bureau_week varchar(10) null, 
amt_req_credit_bureau_mon varchar(10) null, 
amt_req_credit_bureau_qrt varchar(10) null, 
amt_req_credit_bureau_year varchar(10) null, 
target varchar(5) null);
CREATE TABLE application_train_raw (
sk_id_curr int not null, 
name_contract_type varchar(20) not null, 
code_gender varchar(5) not null, 
flag_own_car varchar(5) not null, 
flag_own_realty varchar(5) not null, 
cnt_children tinyint not null, 
amt_income_total decimal(15,3) not null, 
amt_credit decimal(15,3) not null, 
amt_annuity varchar(20) null, 
amt_goods_price varchar(20) null, 
name_type_suite varchar(20) null, 
name_income_type varchar(30) not null, 
name_education_type varchar(30) not null, 
name_family_status varchar(30) not null, 
name_housing_type varchar(30) not null, 
region_population_relative decimal(7,6) not null, 
days_birth mediumint not null, 
days_employed mediumint not null, 
days_registration mediumint not null, 
days_id_publish mediumint not null, 
own_car_age varchar(5) null, 
flag_mobil tinyint not null, 
flag_emp_phone tinyint not null, 
flag_work_phone tinyint not null, 
flag_cont_mobile tinyint not null, 
flag_phone tinyint not null, 
flag_email tinyint not null, 
occupation_type varchar(30) null, 
cnt_fam_members varchar(5) null, 
region_rating_client tinyint not null, 
region_rating_client_w_city tinyint not null, 
weekday_appr_process_start varchar(10) not null, 
hour_appr_process_start tinyint not null, 
reg_region_not_live_region tinyint not null, 
reg_region_not_work_region tinyint not null, 
live_region_not_work_region tinyint not null, 
reg_city_not_live_city tinyint not null, 
reg_city_not_work_city tinyint not null, 
live_city_not_work_city tinyint not null, 
organization_type varchar(30) not null, 
ext_source_1 varchar(20) null, 
ext_source_2 varchar(20) null, 
ext_source_3 varchar(20) null, 
apartments_avg varchar(10) null, 
basementarea_avg varchar(10) null, 
years_beginexpluatation_avg varchar(10) null, 
years_build_avg varchar(10) null, 
commonarea_avg varchar(10) null, 
elevators_avg varchar(10) null, 
entrances_avg varchar(10) null, 
floorsmax_avg varchar(10) null, 
floorsmin_avg varchar(10) null, 
landarea_avg varchar(10) null, 
livingapartments_avg varchar(10) null, 
livingarea_avg varchar(10) null, 
nonlivingapartments_avg varchar(10) null, 
nonlivingarea_avg varchar(10) null, 
apartments_mode varchar(10) null, 
basementarea_mode varchar(10) null, 
years_beginexpluatation_mode varchar(10) null, 
years_build_mode varchar(10) null, 
commonarea_mode varchar(10) null, 
elevators_mode varchar(10) null, 
entrances_mode varchar(10) null, 
floorsmax_mode varchar(10) null, 
floorsmin_mode varchar(10) null, 
landarea_mode varchar(10) null, 
livingapartments_mode varchar(10) null, 
livingarea_mode varchar(10) null, 
nonlivingapartments_mode varchar(10) null, 
nonlivingarea_mode varchar(10) null, 
apartments_medi varchar(10) null, 
basementarea_medi varchar(10) null, 
years_beginexpluatation_medi varchar(10) null, 
years_build_medi varchar(10) null, 
commonarea_medi varchar(10) null, 
elevators_medi varchar(10) null, 
entrances_medi varchar(10) null, 
floorsmax_medi varchar(10) null, 
floorsmin_medi varchar(10) null, 
landarea_medi varchar(10) null, 
livingapartments_medi varchar(10) null, 
livingarea_medi varchar(10) null, 
nonlivingapartments_medi varchar(10) null, 
nonlivingarea_medi varchar(10) null, 
fondkapremont_mode varchar(30) null, 
housetype_mode varchar(20) null, 
totalarea_mode varchar(10) null, 
wallsmaterial_mode varchar(20) null, 
emergencystate_mode varchar(5) null, 
obs_30_cnt_social_circle varchar(10) null, 
def_30_cnt_social_circle varchar(10) null, 
obs_60_cnt_social_circle varchar(10) null, 
def_60_cnt_social_circle varchar(10) null, 
days_last_phone_change varchar(10) null, 
flag_document_2 tinyint not null, 
flag_document_3 tinyint not null, 
flag_document_4 tinyint not null, 
flag_document_5 tinyint not null, 
flag_document_6 tinyint not null, 
flag_document_7 tinyint not null, 
flag_document_8 tinyint not null, 
flag_document_9 tinyint not null, 
flag_document_10 tinyint not null, 
flag_document_11 tinyint not null, 
flag_document_12 tinyint not null, 
flag_document_13 tinyint not null, 
flag_document_14 tinyint not null, 
flag_document_15 tinyint not null, 
flag_document_16 tinyint not null, 
flag_document_17 tinyint not null, 
flag_document_18 tinyint not null, 
flag_document_19 tinyint not null, 
flag_document_20 tinyint not null, 
flag_document_21 tinyint not null, 
amt_req_credit_bureau_hour varchar(10) null, 
amt_req_credit_bureau_day varchar(10) null, 
amt_req_credit_bureau_week varchar(10) null, 
amt_req_credit_bureau_mon varchar(10) null, 
amt_req_credit_bureau_qrt varchar(10) null, 
amt_req_credit_bureau_year varchar(10) null, 
target varchar(5) null);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/application_test.csv' INTO TABLE application_test_raw 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/application_train.csv' INTO TABLE application_train_raw 
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;

CREATE TABLE master_application AS (select * from application_test_raw union select * from application_train_raw);
DROP TABLE IF EXISTS application_test_raw;
DROP TABLE IF EXISTS application_train_raw;

INSERT INTO application SELECT * FROM master_application;
DROP TABLE IF EXISTS master_application;
