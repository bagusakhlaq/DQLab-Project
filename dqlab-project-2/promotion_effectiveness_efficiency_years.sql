SELECT
	YEAR(order_date) as years,
	SUM(sales) as sales,
	SUM(discount_value) as promotion_value,
	ROUND((SUM(discount_value)/SUM(sales))*100, 2) as burn_rate_percentage
FROM
	dqlab_sales_store
WHERE
	order_status = "Order Finished"
GROUP BY
	1
ORDER BY
	1 ASC;