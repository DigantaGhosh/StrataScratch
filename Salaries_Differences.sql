'''Calculates the difference between the highest salaries in the marketing and engineering departments. Output just the absolute difference in salaries.'''


select abs(max(case when d2.department = 'marketing' then d1.salary end)-max(case when d2.department = 'engineering' then d1.salary end)) as salary_diff 
from db_employee d1
left join 
db_dept d2 on d1.department_id=d2.id 
where d2.department in ('marketing','engineering');
