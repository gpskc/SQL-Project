
select 'application' as table_name,count(*) as rows_count from application
union
select 'previous_application' as table_name,count(*) as rows_count from previous_application
union
select 'bureau' as table_name,count(*) as rows_count from bureau
union
select 'bureau_balance' as table_name,count(*) as rows_count from bureau_balance
union
select 'pos_cash_balance' as table_name,count(*) as rows_count from pos_cash_balance
union
select 'credit_card_balance' as table_name,count(*) as rows_count from credit_card_balance
union
select 'installments_payments' as table_name,count(*) as rows_count from installments_payments;
