SELECT *
FROM sales_log;


SELECT *,
       price * quantity_sold AS sales_revenue
FROM sales_log;


SELECT *,
       price * quantity_sold AS sales_revenue,
       CASE
           WHEN (price * quantity_sold) > 50 THEN 'TOP SELLER'
           ELSE 'STANDARD'
       END AS sales_remark
FROM sales_log;


SELECT SUM(price * quantity_sold) AS sales_sum
FROM sales_log;


SELECT AVG(price * quantity_sold) AS sales_ave
FROM sales_log;


SELECT category,
       SUM(price * quantity_sold) AS sales_sum
FROM sales_log
GROUP BY category;


SELECT category,
       AVG(price * quantity_sold) AS sales_avg
FROM sales_log
GROUP BY category;
