SELECT
	quarter,
	COUNT(DISTINCT customerID) as total_customers
FROM ( 
		SELECT
	  		customerID,
	  		createDate,
	  		QUARTER(createDate) as quarter
	  	FROM
	  		customer
	  	WHERE
	  		createDate BETWEEN '2004-01-01' AND '2004-06-30'
	) AS tabel_b
WHERE
	customerID IN (
					SELECT
						DISTINCT customerID
					FROM orders_1
					UNION
					SELECT
						DISTINCT customerID
					FROM orders_2
					)
GROUP BY
	1
ORDER BY
	1 ASC;