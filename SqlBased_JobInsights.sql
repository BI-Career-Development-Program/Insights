SELECT  * from ba;
-- Highest salary BA
select Type_ownership, Sector, Rating, Size, Job_title, (select Max(Salary_Estimate_k) from ba) from ba
WHERE  Job_title='Business Analyst'
Limit 200;

-- Min  BA job salary from Jobs
select Type_ownership, Sector, Rating, Size, Job_title, (select Max(Salary_Estimate_k) from ba) from ba
WHERE  Job_title='Business Analyst'
Limit 200;

-- Avg salary estimate by sector as BA
select Sector, AVG(Salary_Estimate_k) FROM BA WHERE Job_title='Business Analyst'
GROUP BY Sector;

-- The relationship between comapny rating and salary estimate will be illustrated on Python.

