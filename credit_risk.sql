create database credit_risk;
use credit_risk;
select * from credit;

-- Total Amount by Loan_Intent
select Loan_Intent, sum(Loan_Amt) as Total_Amt from credit
group by Loan_Intent
order by Total_Amt desc;

-- Loan Amount by Age where Loan_Intent = 'EDUCATION'
select Age, sum(Loan_Amt) as Total_Amt from credit
where Loan_Intent = 'EDUCATION'
group by Age
order by Total_Amt desc limit 5;

-- customers count as per age
select age, count(age) as count from credit
group by age
order by count desc limit 10;

-- Loan Amount by Emp_Length
select Emp_Length, round(avg(Loan_Amt),0) as avg_loan_amt from credit
group by Emp_Length
order by avg_loan_amt desc;

-- Avg Loan Amt by Home_Ownership 
select Home_Ownership, round(avg(Loan_Amt),0) as Avg_Amt from credit
group by Home_Ownership
order by  Avg_Amt desc;

-- Avg Loan Amt by Loan_Grade
select Loan_Grade, round(avg(Loan_Amt),0) as Avg_Amt from credit
group by Loan_Grade
order by  Avg_Amt desc;

-- count of loan status
select Loan_Status, count(Loan_Status) as count from credit
group by Loan_Status;
