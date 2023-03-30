SELECT
	YEAR(order_date) as years,
	SUM(sales) as sales,
	COUNT(DISTINCT order_id) as number_of_order
FROM
	dqlab_sales_store
WHERE
	order_status = 'Order Finished'
GROUP BY
	1
ORDER BY
	1 ASC;