create database Cirrhosis;
use Cirrhosis;
select * from cirrhosis_data;
alter table Cirrhosis rename to Cirrhosis_data;
select * from Cirrhosis_data;
-- 1. Retrieve all the columns for patients who were censored (Status = 'C').
select * from Cirrhosis_data where status='c';
-- 2. Calculate the average age of male patients.
select round((age),2) as avg_age,Sex from Cirrhosis_data where Sex in ('M') ; 
-- 3. Count the number of patients with ascites and hepatomegaly.
select * from Cirrhosis_data;
select count(Status),Ascites,Hepatomegaly from Cirrhosis_data group by Ascites,Hepatomegaly;
-- 4. Find the maximum bilirubin level recorded in the dataset.
select max(Bilirubin) from Cirrhosis_data;
-- 5. Calculate the average cholesterol level for patients who received D-penicillamine.
 select avg(Cholesterol) from  Cirrhosis_data where Drug='D-penicillamine'; 
-- 6. Retrieve the ID and N_Days for patients with edema despite diuretic therapy (Edema = 'Y').
select id,n_days,edema from Cirrhosis_data where Edema='Y';
-- 7. Find the number of male and female patients in each stage of the disease.
select * from Cirrhosis_data;
select count(stage),Sex from Cirrhosis_data group by sex order by sex desc;
select sex,stage from Cirrhosis_data where stage;
-- 8. Calculate the average prothrombin time for patients who died (Status = 'D').
select round(Avg(Prothrombin),6) from Cirrhosis_data  where Status='D';
-- 9. Retrieve the ID and Status for patients who had spiders (Spiders = 'Y') and hepatomegaly (Hepatomegaly = 'Y').
select id,status,Hepatomegaly,spiders from Cirrhosis_data where Spiders = 'Y' and Hepatomegaly = 'Y';
-- 10. Find the minimum and maximum platelet counts recorded in the dataset.
select min(Platelets),max(Platelets),count(Platelets)from Cirrhosis_data;
-- 11. Retrieve the ID and N_Days for patients who died (Status = 'D').
select id,n_days,status from Cirrhosis_data where status='D';
-- 12. Calculate the maximum and minimum Triglycerides levels in the dataset.
select * from Cirrhosis_data;
select max(Tryglicerides),min(Tryglicerides) from Cirrhosis_data;
-- 13. Find the average Albumin level for each histologic stage of the disease.
 select round(avg(Albumin),9) as avg_Albumin,stage from Cirrhosis_data group by stage;
 -- 14. Calculate the total number of male and female patients in the dataset.
 select count(sex),sex,status from Cirrhosis_data group by sex,status;
 -- 15. Find the average Platelets count for patients with and without ascites.
 select avg(Platelets) from Cirrhosis_data where Ascites in (select count(Platelets) from Cirrhosis_data);
 -- 16. Retrieve the ID, Age, and Status of patients whose age is greater than 50 and have hepatomegaly.
 select id,age,status,Hepatomegaly from Cirrhosis_data where age>50;
 -- 17. Retrieve the ID and Drug of patients who were prescribed a drug containing the term "penicillamine" in its name.
 select * from Cirrhosis_data;
 select id,Drug from Cirrhosis_data where Drug like '%penicillamine%';
 -- 18. Retrieve the ID, Age, and Bilirubin levels of patients, ordered by increasing age.
 select id,age,bilirubin,status from Cirrhosis_data order by age asc; 
 -- 19. Retrieve the ID, N_Days, and Status of patients, ordered by descending N_Days.
select id,n_days,status from Cirrhosis_data order by N_days desc;
-- 20. Retrieve the ID, Age, and Cholesterol levels of patients younger than 50 years old, ordered by increasing Cholesterol levels.
select id,age,Cholesterol from Cirrhosis_data where age<50 order by Cholesterol asc;

