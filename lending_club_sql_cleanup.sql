-- some transforms being done on the loan dataset
alter table loan 
rename column loan_amnt to loan_amt; 

alter table loan 
rename column funded_amnt to funded_amt;

alter table loan 
rename column funded_amnt_inv to funded_amt_inv;

alter table loan 
add column issue_dt date;

update loan 
set issue_dt = to_date(issue_d, 'MON'||'-'||'YYYY');

alter table loan 
add column last_pymnt_dt date;

update loan 
set last_pymnt_dt = to_date(last_pymnt_d, 'MON'||'-'||'YYYY');

alter table loan 
add column next_pymnt_dt date;

update loan 
set next_pymnt_dt = to_date(next_pymnt_d, 'MON'||'-'||'YYYY');

alter table loan 
add column last_credit_pull_dt date;

update loan 
set last_credit_pull_dt = to_date(last_credit_pull_d, 'MON'||'-'||'YYYY');

UPDATE loan 
SET next_pymnt_dt = CASE WHEN to_char(next_pymnt_dt, 'YYYY-MM-DD')  = '0001-01-01' THEN TO_DATE('1900-01-01', 'YYYY-MM-DD') else next_pymnt_dt END,
	last_credit_pull_dt = CASE WHEN to_char(last_credit_pull_dt, 'YYYY-MM-DD')  = '0001-01-01' THEN TO_DATE('1900-01-01', 'YYYY-MM-DD')  else last_credit_pull_dt end,
	last_pymnt_dt = CASE WHEN to_char(last_pymnt_dt, 'YYYY-MM-DD')  = '0001-01-01' THEN TO_DATE('1900-01-01', 'YYYY-MM-DD') else last_pymnt_dt end



