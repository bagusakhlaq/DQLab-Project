SELECT 
	YEAR(order_date) as years,
	product_sub_category,
	SUM(sales)
FROM
	dqlab_sales_store
WHERE
	order_status = "Order Finished" AND
	YEAR(order_date) > 2010
GROUP BY
	1, 2
ORDER BY
	1, 3 DESC;