/*
select * from loan limit 3;

alter table loan 
rename column funded_amnt to funded_amt;

alter table loan 
rename column funded_amnt_inv to funded_amt_inv;

alter table loan 
add column issue_dt date;

update loan 
set issue_dt = to_date(issue_d, 'MON'||'-'||'YYYY')



select * from loan limit 10 

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
*/

/*

SELECT 
	MAX(issue_dt), MIN(issue_dt),
	MAX(last_pymnt_dt), MIN(last_pymnt_dt),
	MAX(next_pymnt_dt), MIN(next_pymnt_dt),
	MAX(last_credit_pull_dt), MIN(last_credit_pull_dt)
FROM loan 

UPDATE loan 
SET next_pymnt_dt = CASE WHEN to_char(next_pymnt_dt, 'YYYY-MM-DD')  = '0001-01-01' THEN TO_DATE('1900-01-01', 'YYYY-MM-DD') END,
	last_credit_pull_dt = CASE WHEN to_char(last_credit_pull_dt, 'YYYY-MM-DD')  = '0001-01-01' THEN TO_DATE('1900-01-01', 'YYYY-MM-DD') END



SELECT TO_CHAR(TO_DATE('0001-01-01', 'YYYY-MM-DD'), 'DD/MM/YYYY')



*/


SELECT * FROM loan ORDER BY RANDOM() LIMIT 3;




