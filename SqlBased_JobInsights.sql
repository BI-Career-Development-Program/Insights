SELECT  * from ba;
-- Highest salary BA
select Type_ownership, Sector, Rating, Size, Job_title, (select Max(Salary_Estimate_k) from ba) from ba
WHERE  Job_title='Business Analyst'
Limit 200;

-- Min salary from Jobs
select Type_ownership, Sector, Rating, Size, Job_title, (select Max(Salary_Estimate_k) from ba) from ba
WHERE  Job_title='Business Analyst'
Limit 200;


