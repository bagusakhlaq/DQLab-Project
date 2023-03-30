SELECT
	YEAR(order_date) as years,
	product_sub_category,
	product_category,
	SUM(sales) as sales,
	SUM(discount_value) as promotion_value,
	ROUND((SUM(discount_value)/SUM(sales))*100, 2) as burn_rate_percentage
FROM
	dqlab_sales_store
WHERE
	order_status = "Order Finished" AND
	YEAR(order_date) = 2012
GROUP BY
	1, 2, 3
ORDER BY
	4 DESC;