--Find the job titles of the employees with the highest salary. If multiple employees have the same highest salary, include the job titles for all such employees.

select distinct worker_title from (
select worker_title,rank() over (order by salary desc) as rn from 
worker 
left join title on worker.worker_id=title.worker_ref_id) a where a.rn =1;
