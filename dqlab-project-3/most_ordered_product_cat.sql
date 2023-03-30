SELECT * 
FROM 
    (SELECT
        categoryid,
        COUNT(DISTINCT orderNumber) as total_order,
        SUM(quantity) as total_penjualan
    FROM (
            SELECT
                productCode,
                orderNumber,
                quantity,
                status,
                LEFT(productCode, 3) as categoryid
            FROM
                orders_2
            WHERE
                status = "Shipped"
            ) AS tabel_c
    GROUP BY
        1) AS c
ORDER BY
	2 DESC;