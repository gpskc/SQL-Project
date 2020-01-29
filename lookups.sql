/* 
appl: application - name_contract_type*, name_type_suite*, name_income_type, name_education_type, name_family_status, name_housing_type, 
                    code_gender, occupation_type, organization_type, fondkapremont_mode, housetype_mode, wallsmaterial_mode
papp: previous_application - name_contract_type*, name_cash_loan_purpose, name_contract_status*, name_payment_type, code_reject_reason, 
							 name_type_suite*, name_client_type, name_goods_category, name_portfolio, name_product_type, channel_type, 
                             name_seller_industry, name_yield_group, product_combination
buro: bureau - credit_active, credit_currency, credit_type
cbal: credit_card_balance - name_contract_status*
pbal: pos_cash_balance - name_contract_status*
bbal: bureau_balance - status
*/











DROP TABLE IF EXISTS lu_contract_type;
DROP TABLE IF EXISTS lu_type_suite;
DROP TABLE IF EXISTS lu_contract_status;
DROP TABLE IF EXISTS lu_credit_active;
DROP TABLE IF EXISTS lu_credit_currency;
DROP TABLE IF EXISTS lu_credit_type;
DROP TABLE IF EXISTS lu_income_type;
DROP TABLE IF EXISTS lu_education_type;
DROP TABLE IF EXISTS lu_family_status;
DROP TABLE IF EXISTS lu_housing_type;
DROP TABLE IF EXISTS lu_gender;
DROP TABLE IF EXISTS lu_occupation_type;
DROP TABLE IF EXISTS lu_organization_type;
DROP TABLE IF EXISTS lu_fondkapremont_mode;
DROP TABLE IF EXISTS lu_housetype_mode;
DROP TABLE IF EXISTS lu_wallsmaterial_mode;
DROP TABLE IF EXISTS master_application;
DROP TABLE IF EXISTS master_previous_application;
DROP TABLE IF EXISTS master_bureau;
DROP TABLE IF EXISTS master_credit_card_balance;
DROP TABLE IF EXISTS master_pos_cash_balance;
DROP TABLE IF EXISTS master_installments_payments;
DROP TABLE IF EXISTS master_bureau_balance;

CREATE TABLE lu_contract_type (
	code_contract_type int not null auto_increment,
	name_contract_type varchar(40) not null,
    primary key (code_contract_type));
INSERT INTO lu_contract_type (name_contract_type) 
SELECT name_contract_type FROM (
SELECT DISTINCT name_contract_type FROM master_previous_application UNION SELECT DISTINCT name_contract_type FROM master_application) a
WHERE name_contract_type <> '' ORDER BY 1;
SELECT * FROM lu_contract_type;
UPDATE master_previous_application SET name_contract_type = '1' WHERE name_contract_type = 'Cash loans';
UPDATE master_previous_application SET name_contract_type = '2' WHERE name_contract_type = 'Consumer loans';
UPDATE master_previous_application SET name_contract_type = '3' WHERE name_contract_type = 'Revolving loans';
UPDATE master_previous_application SET name_contract_type = '4' WHERE name_contract_type = 'XNA';
UPDATE master_application SET name_contract_type = '1' WHERE name_contract_type = 'Cash loans';
UPDATE master_application SET name_contract_type = '2' WHERE name_contract_type = 'Consumer loans';
UPDATE master_application SET name_contract_type = '3' WHERE name_contract_type = 'Revolving loans';
UPDATE master_application SET name_contract_type = '4' WHERE name_contract_type = 'XNA';

CREATE TABLE lu_type_suite (
	code_type_suite int not null auto_increment,
	name_type_suite varchar(40) not null,
    primary key (code_type_suite));
INSERT INTO lu_type_suite (name_type_suite) 
SELECT name_type_suite FROM (
SELECT DISTINCT name_type_suite FROM application UNION SELECT DISTINCT name_type_suite FROM previous_application) b
WHERE name_type_suite <> '' ORDER BY 1;
SELECT * FROM lu_type_suite;
UPDATE master_previous_application SET name_type_suite = '1' WHERE name_type_suite = 'Children';
UPDATE master_previous_application SET name_type_suite = '2' WHERE name_type_suite = 'Family';
UPDATE master_previous_application SET name_type_suite = '3' WHERE name_type_suite = 'Group of people';
UPDATE master_previous_application SET name_type_suite = '4' WHERE name_type_suite = 'Other_A';
UPDATE master_previous_application SET name_type_suite = '5' WHERE name_type_suite = 'Other_B';
UPDATE master_previous_application SET name_type_suite = '6' WHERE name_type_suite = 'Spouse; partner';
UPDATE master_previous_application SET name_type_suite = '7' WHERE name_type_suite = 'Unaccompanied';
UPDATE master_application SET name_type_suite = '1' WHERE name_type_suite = 'Children';
UPDATE master_application SET name_type_suite = '2' WHERE name_type_suite = 'Family';
UPDATE master_application SET name_type_suite = '3' WHERE name_type_suite = 'Group of people';
UPDATE master_application SET name_type_suite = '4' WHERE name_type_suite = 'Other_A';
UPDATE master_application SET name_type_suite = '5' WHERE name_type_suite = 'Other_B';
UPDATE master_application SET name_type_suite = '6' WHERE name_type_suite = 'Spouse; partner';
UPDATE master_application SET name_type_suite = '7' WHERE name_type_suite = 'Unaccompanied';

CREATE TABLE lu_contract_status (
	code_contract_status int not null auto_increment,
	name_contract_status varchar(50) not null,
    primary key (code_contract_status));
INSERT INTO lu_contract_status (name_contract_status) 
SELECT name_contract_status FROM (
SELECT DISTINCT name_contract_status FROM master_previous_application UNION 
SELECT DISTINCT name_contract_status FROM master_credit_card_balance UNION 
SELECT DISTINCT name_contract_status FROM master_pos_cash_balance) c
WHERE name_contract_status <> '' ORDER BY 1;
SELECT * FROM lu_contract_status;
UPDATE master_previous_application SET name_contract_status = '1' WHERE name_contract_status = 'Active';
UPDATE master_previous_application SET name_contract_status = '2' WHERE name_contract_status = 'Amortized debt';
UPDATE master_previous_application SET name_contract_status = '3' WHERE name_contract_status = 'Approved';
UPDATE master_previous_application SET name_contract_status = '4' WHERE name_contract_status = 'Canceled';
UPDATE master_previous_application SET name_contract_status = '5' WHERE name_contract_status = 'Completed';
UPDATE master_previous_application SET name_contract_status = '6' WHERE name_contract_status = 'Demand';
UPDATE master_previous_application SET name_contract_status = '7' WHERE name_contract_status = 'Refused';
UPDATE master_previous_application SET name_contract_status = '8' WHERE name_contract_status = 'Returned to the store';
UPDATE master_previous_application SET name_contract_status = '9' WHERE name_contract_status = 'Sent proposal';
UPDATE master_previous_application SET name_contract_status = '10' WHERE name_contract_status = 'Signed';
UPDATE master_previous_application SET name_contract_status = '11' WHERE name_contract_status = 'Unused offer';
UPDATE master_previous_application SET name_contract_status = '12' WHERE name_contract_status = 'XNA';
UPDATE master_credit_card_balance SET name_contract_status = '1' WHERE name_contract_status = 'Active';
UPDATE master_credit_card_balance SET name_contract_status = '2' WHERE name_contract_status = 'Amortized debt';
UPDATE master_credit_card_balance SET name_contract_status = '3' WHERE name_contract_status = 'Approved';
UPDATE master_credit_card_balance SET name_contract_status = '4' WHERE name_contract_status = 'Canceled';
UPDATE master_credit_card_balance SET name_contract_status = '5' WHERE name_contract_status = 'Completed';
UPDATE master_credit_card_balance SET name_contract_status = '6' WHERE name_contract_status = 'Demand';
UPDATE master_credit_card_balance SET name_contract_status = '7' WHERE name_contract_status = 'Refused';
UPDATE master_credit_card_balance SET name_contract_status = '8' WHERE name_contract_status = 'Returned to the store';
UPDATE master_credit_card_balance SET name_contract_status = '9' WHERE name_contract_status = 'Sent proposal';
UPDATE master_credit_card_balance SET name_contract_status = '10' WHERE name_contract_status = 'Signed';
UPDATE master_credit_card_balance SET name_contract_status = '11' WHERE name_contract_status = 'Unused offer';
UPDATE master_credit_card_balance SET name_contract_status = '12' WHERE name_contract_status = 'XNA';
UPDATE master_pos_cash_balance SET name_contract_status = '1' WHERE name_contract_status = 'Active';
UPDATE master_pos_cash_balance SET name_contract_status = '2' WHERE name_contract_status = 'Amortized debt';
UPDATE master_pos_cash_balance SET name_contract_status = '3' WHERE name_contract_status = 'Approved';
UPDATE master_pos_cash_balance SET name_contract_status = '4' WHERE name_contract_status = 'Canceled';
UPDATE master_pos_cash_balance SET name_contract_status = '5' WHERE name_contract_status = 'Completed';
UPDATE master_pos_cash_balance SET name_contract_status = '6' WHERE name_contract_status = 'Demand';
UPDATE master_pos_cash_balance SET name_contract_status = '7' WHERE name_contract_status = 'Refused';
UPDATE master_pos_cash_balance SET name_contract_status = '8' WHERE name_contract_status = 'Returned to the store';
UPDATE master_pos_cash_balance SET name_contract_status = '9' WHERE name_contract_status = 'Sent proposal';
UPDATE master_pos_cash_balance SET name_contract_status = '10' WHERE name_contract_status = 'Signed';
UPDATE master_pos_cash_balance SET name_contract_status = '11' WHERE name_contract_status = 'Unused offer';
UPDATE master_pos_cash_balance SET name_contract_status = '12' WHERE name_contract_status = 'XNA';

CREATE TABLE lu_credit_active (
	code_credit_active int not null auto_increment,
	name_credit_active varchar(20) not null,
    primary key (code_credit_active));
INSERT INTO lu_credit_active (name_credit_active) 
SELECT DISTINCT credit_active FROM (SELECT DISTINCT credit_active FROM master_bureau WHERE credit_active <> '') d ORDER BY 1;
SELECT * FROM lu_credit_active;
UPDATE master_bureau SET credit_active = '1' WHERE credit_active = 'Active';
UPDATE master_bureau SET credit_active = '2' WHERE credit_active = 'Bad debt';
UPDATE master_bureau SET credit_active = '3' WHERE credit_active = 'Closed';
UPDATE master_bureau SET credit_active = '4' WHERE credit_active = 'Sold';

CREATE TABLE lu_credit_currency (
	code_credit_currency int not null auto_increment,
	name_credit_currency varchar(20) not null,
    primary key (code_credit_currency));
INSERT INTO lu_credit_currency (name_credit_currency) 
SELECT credit_currency FROM (SELECT DISTINCT credit_currency FROM master_bureau WHERE credit_currency <> '') e ORDER BY 1;
SELECT * FROM lu_credit_currency;
UPDATE master_bureau SET credit_currency = '1' WHERE credit_currency = 'currency 1';
UPDATE master_bureau SET credit_currency = '2' WHERE credit_currency = 'currency 2';
UPDATE master_bureau SET credit_currency = '3' WHERE credit_currency = 'currency 3';
UPDATE master_bureau SET credit_currency = '4' WHERE credit_currency = 'currency 4';

CREATE TABLE lu_credit_type (
	code_credit_type int not null auto_increment,
	name_credit_type varchar(100) not null,
    primary key (code_credit_type));
INSERT INTO lu_credit_type (name_credit_type) 
SELECT credit_type FROM (SELECT DISTINCT credit_type FROM master_bureau WHERE credit_type <> '') f ORDER BY 1;
SELECT * FROM lu_credit_type;
UPDATE master_bureau SET credit_type = '1' WHERE credit_type = 'Another type of loan';
UPDATE master_bureau SET credit_type = '2' WHERE credit_type = 'Car loan';
UPDATE master_bureau SET credit_type = '3' WHERE credit_type = 'Cash loan (non-earmarked)';
UPDATE master_bureau SET credit_type = '4' WHERE credit_type = 'Consumer credit';
UPDATE master_bureau SET credit_type = '5' WHERE credit_type = 'Credit card';
UPDATE master_bureau SET credit_type = '6' WHERE credit_type = 'Interbank credit';
UPDATE master_bureau SET credit_type = '7' WHERE credit_type = 'Loan for business development';
UPDATE master_bureau SET credit_type = '8' WHERE credit_type = 'Loan for purchase of shares (margin lending)';
UPDATE master_bureau SET credit_type = '9' WHERE credit_type = 'Loan for the purchase of equipment';
UPDATE master_bureau SET credit_type = '10' WHERE credit_type = 'Loan for working capital replenishment';
UPDATE master_bureau SET credit_type = '11' WHERE credit_type = 'Microloan';
UPDATE master_bureau SET credit_type = '12' WHERE credit_type = 'Mobile operator loan';
UPDATE master_bureau SET credit_type = '13' WHERE credit_type = 'Mortgage';
UPDATE master_bureau SET credit_type = '14' WHERE credit_type = 'Real estate loan';
UPDATE master_bureau SET credit_type = '15' WHERE credit_type = 'Unknown type of loan';

CREATE TABLE lu_income_type (
	code_income_type int not null auto_increment,
	name_income_type varchar(60) not null,
    primary key (code_income_type));
INSERT INTO lu_income_type (name_income_type) 
SELECT name_income_type FROM (SELECT DISTINCT name_income_type FROM master_application WHERE name_income_type <> '') g ORDER BY 1;
SELECT * FROM lu_income_type;

CREATE TABLE lu_education_type (
	code_education_type int not null auto_increment,
	name_education_type varchar(60) not null,
    primary key (code_education_type));
INSERT INTO lu_education_type (name_education_type) 
SELECT name_education_type FROM (SELECT DISTINCT name_education_type FROM master_application WHERE name_education_type <> '') h ORDER BY 1;
SELECT * FROM lu_education_type;

CREATE TABLE lu_family_status (
	code_family_status int not null auto_increment,
	name_family_status varchar(60) not null,
    primary key (code_family_status));
INSERT INTO lu_family_status (name_family_status) 
SELECT name_family_status FROM (SELECT DISTINCT name_family_status FROM master_application WHERE name_family_status <> '') i ORDER BY 1;
SELECT * FROM lu_family_status;

CREATE TABLE lu_housing_type (
	code_housing_type int not null auto_increment,
	name_housing_type varchar(60) not null,
    primary key (code_housing_type));
INSERT INTO lu_housing_type (name_housing_type) 
SELECT name_housing_type FROM (SELECT DISTINCT name_housing_type FROM master_application WHERE name_housing_type <> '') j ORDER BY 1;
SELECT * FROM lu_housing_type;

CREATE TABLE lu_gender (
	code_gender int not null auto_increment,
	name_gender varchar(10) not null,
    primary key (code_gender));
INSERT INTO lu_gender (name_gender) 
SELECT code_gender FROM (SELECT DISTINCT code_gender FROM master_application WHERE code_gender <> '') k ORDER BY 1;
SELECT * FROM lu_gender;

CREATE TABLE lu_occupation_type (
	code_occupation_type int not null auto_increment,
	name_occupation_type varchar(60) not null,
    primary key (code_occupation_type));
INSERT INTO lu_occupation_type (name_occupation_type) 
SELECT occupation_type FROM (SELECT DISTINCT occupation_type FROM master_application WHERE occupation_type <> '') l ORDER BY 1;
SELECT * FROM lu_occupation_type;

CREATE TABLE lu_organization_type (
	code_organization_type int not null auto_increment,
	name_organization_type varchar(60) not null,
    primary key (code_organization_type));
INSERT INTO lu_organization_type (name_organization_type) 
SELECT organization_type FROM (SELECT DISTINCT organization_type FROM master_application WHERE organization_type <> '') m ORDER BY 1;
SELECT * FROM lu_organization_type;

CREATE TABLE lu_fondkapremont_mode (
	code_fondkapremont_mode int not null auto_increment,
	name_fondkapremont_mode varchar(60) not null,
    primary key (code_fondkapremont_mode));
INSERT INTO lu_fondkapremont_mode (name_fondkapremont_mode) 
SELECT fondkapremont_mode FROM (SELECT DISTINCT fondkapremont_mode FROM master_application WHERE fondkapremont_mode <> '') n ORDER BY 1;
SELECT * FROM lu_fondkapremont_mode;

CREATE TABLE lu_housetype_mode (
	code_housetype_mode int not null auto_increment,
	name_housetype_mode varchar(40) not null,
    primary key (code_housetype_mode));
INSERT INTO lu_housetype_mode (name_housetype_mode) 
SELECT housetype_mode FROM (SELECT DISTINCT housetype_mode FROM master_application WHERE housetype_mode <> '') o ORDER BY 1;
SELECT * FROM lu_housetype_mode;

CREATE TABLE lu_wallsmaterial_mode (
	code_wallsmaterial_mode int not null auto_increment,
	name_wallsmaterial_mode varchar(40) not null,
    primary key (code_wallsmaterial_mode));
INSERT INTO lu_wallsmaterial_mode (name_wallsmaterial_mode) 
SELECT wallsmaterial_mode FROM (SELECT DISTINCT wallsmaterial_mode FROM master_application WHERE wallsmaterial_mode <> '') p ORDER BY 1;
SELECT * FROM lu_wallsmaterial_mode;
