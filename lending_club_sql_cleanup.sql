-- Preview the columns
select * from loan limit 3;

-- Renaming some cols
alter table loan 
rename column funded_amnt to funded_amt;

alter table loan 
rename column funded_amnt_inv to funded_amt_inv;

-- Adding new attribute
alter table loan 
add column issue_dt date;

-- Creating date attribute from issue_d string.
update loan 
set issue_dt = to_date(issue_d, 'MON'||'-'||'YYYY')

