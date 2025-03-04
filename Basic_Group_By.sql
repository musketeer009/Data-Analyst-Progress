

SELECT brand_name, COUNT(*) AS product_count
FROM myntra
GROUP BY brand_name;


SELECT brand_name, AVG(rating) AS avg_rating
FROM myntra
GROUP BY brand_name;


SELECT brand_name, SUM(discounted_price) AS total_revenue
FROM myntra
GROUP BY brand_name;


SELECT product_name, MAX(rating) AS max_rating, MIN(rating) AS min_rating
FROM myntra
GROUP BY product_name;



SELECT rating, COUNT(*) AS product_count
FROM myntra
GROUP BY rating;


SELECT brand_name, SUM(marked_price - discounted_price) AS total_discount
FROM myntra
GROUP BY brand_name;


SELECT brand_name, AVG((marked_price - discounted_price) * 100.0 / marked_price) AS avg_discount_percent
FROM myntra
GROUP BY brand_name;


SELECT product_name, SUM(rating_count) AS total_ratings
FROM myntra
GROUP BY product_name;


SELECT product_name, SUM(rating_count) AS total_ratings
FROM myntra
GROUP BY product_name
HAVING SUM(rating_count) > 1000;

SELECT brand_name, COUNT(*) AS product_count
FROM myntra WHERE discounted_price > 2000
GROUP BY brand_name;

SELECT product_name, brand_name, AVG(rating) AS avg_rating
FROM myntra
GROUP BY product_name, brand_name;

SELECT brand_name, product_name, MAX(rating) AS max_rating
FROM myntra
GROUP BY brand_name, product_name;

SELECT brand_name, COUNT(*) AS five_star_count
FROM myntra WHERE rating = 5
GROUP BY brand_name;


SELECT brand_name, SUM(discounted_price) AS total_revenue
FROM myntra
GROUP BY brand_name;


SELECT brand_name, AVG(rating) AS avg_rating
FROM myntra GROUP BY brand_name
ORDER BY avg_rating DESC LIMIT 1;