--Find the 3 most profitable companies in the world. Sort the result based on profits in descending order. If multiple companies have the same profit, assign them the same rank and include all tied companies in the top results. Output the result along with the corresponding company name.

select company,profits from 
  ( select company,profits,dense_rank() over (order by profits desc) as dn 
  from forbes_global_2010_2014) a 
  where a.dn in (1,2,3) 
  order by profits desc;
