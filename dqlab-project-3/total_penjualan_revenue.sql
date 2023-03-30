SELECT
	SUM(quantity) as total_penjualan,
	SUM(quantity * priceeach) as revenue
FROM
	orders_1
WHERE
	status = "Shipped";
	
SELECT
	SUM(quantity) as total_penjualan,
	SUM(quantity * priceeach) as revenue
FROM
	orders_2
WHERE
	status = "Shipped";