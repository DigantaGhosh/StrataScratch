--Count the number of movies that Abigail Breslin was nominated for an oscar.

select count(*) from oscar_nominees where nominee in ('Abigail Breslin');
