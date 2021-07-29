DESCRIBE ab_nyc_2019;

SELECT COUNT(*) FROM ab_nyc_2019;
--Research Question 1 a)
SELECT COUNT(neighbourhood_group) AS number_of_listings, ROUND(AVG(price),2) AS average_price, neighbourhood_group AS borough 
FROM ab_nyc_2019
WHERE neighbourhood_group = 'Brooklyn' OR neighbourhood_group = 'Manhattan' OR neighbourhood_group = 'Queens' 
OR neighbourhood_group = "Staten Island" OR neighbourhood_group = 'Bronx'
GROUP BY neighbourhood_group;
--Research Question 1 b)
SELECT COUNT(neighbourhood_group) AS number_of_listings, ROUND(AVG(price),2) AS average_price, neighbourhood_group AS borough FROM ab_nyc_2019
WHERE neighbourhood_group = 'Brooklyn' OR neighbourhood_group = 'Manhattan' OR neighbourhood_group = 'Queens' 
OR neighbourhood_group = "Staten Island" OR neighbourhood_group = 'Bronx'
GROUP BY neighbourhood_group
ORDER BY (AVG(price)) DESC
LIMIT 1;


--Research Question 2 
SELECT ROUND(AVG(price),2) AS average_price, COUNT(host_id) AS properties, host_id FROM ab_nyc_2019
WHERE host_id <> 0
GROUP BY host_id
ORDER BY properties DESC LIMIT 10;

SELECT ROUND(AVG(price),2) AS average_price, COUNT(host_id) AS properties, host_id FROM ab_nyc_2019
WHERE host_id <> 0
GROUP BY host_id
ORDER BY properties LIMIT 10;


--Research Question 3
SELECT COUNT(room_type) AS availability, neighbourhood, neighbourhood_group FROM ab_nyc_2019
WHERE room_type= 'Entire home/apt'
GROUP BY neighbourhood
ORDER BY availability DESC LIMIT 5; 

SELECT COUNT(room_type) AS availability, neighbourhood, neighbourhood_group FROM ab_nyc_2019
WHERE room_type= 'Private room'
GROUP BY neighbourhood
ORDER BY availability DESC limit 5;

SELECT COUNT(room_type) AS availability, neighbourhood, neighbourhood_group FROM ab_nyc_2019
WHERE room_type= 'Shared room'
GROUP BY neighbourhood
ORDER BY availability DESC limit 5;
