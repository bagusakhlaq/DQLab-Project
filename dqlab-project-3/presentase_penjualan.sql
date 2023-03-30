SELECT
	quarter,
	SUM(quantity) as total_penjualan,
	SUM(quantity*priceeach) as revenue
FROM (
        SELECT
            orderNumber,
            status,
            quantity,
            priceeach,
            '1' as quarter
        FROM
            orders_1
        UNION
        SELECT
            orderNumber,
            status,
            quantity,
            priceeach,
            '2' as quarter
        FROM
            orders_2
    ) AS tabel_a
WHERE
	status = "Shipped"
GROUP BY
	1
ORDER BY
	1 ASC;