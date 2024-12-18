--Find the number of rows for each review score earned by 'Hotel Arena'. Output the hotel name (which should be 'Hotel Arena'), review score along with the corresponding number of rows with that score for the specified hotel.

select hotel_name,reviewer_score,count(*) from hotel_reviews 
where hotel_name like '%Hotel Arena%' group by hotel_name,reviewer_score;
