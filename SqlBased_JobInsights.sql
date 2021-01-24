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

-- More insights for BA jobs

-- How many sectors can we find for BA jobs?
select Sector,Salary_Estimate_k, count(Sector) from ba
where Job_title='Business Analyst'
GROUP BY Salary_Estimate_k
Order by Salary_Estimate_k ASC;

--How many jobs per sector can we find?
Select Sector, count(Job_title)from ba
GROUP BY Salary_Estimate_k
Order by Salary_Estimate_k ASC;

