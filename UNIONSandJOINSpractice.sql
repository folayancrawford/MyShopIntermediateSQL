--Query the data
SELECT * FROM Shop1
SELECT * FROM Shop2

--Learn more about UNION and JOIN

SELECT * FROM Shop1
UNION 
SELECT * FROM Shop2conv

SELECT *
FROM Shop1
FULL OUTER JOIN shop2conv
ON Shop1.CustomerID = Shop2conv.CustomerID

SELECT * FROM
	(SELECT * FROM Shop1
		UNION 
	SELECT * FROM Shop2conv) t
FULL OUTER JOIN shop2conv
ON t.CustomerID = Shop2conv.CustomerID

SELECT * FROM
	(SELECT * FROM Shop1
		UNION 
	SELECT * FROM Shop2conv) t
FULL OUTER JOIN Shop1
ON t.CustomerID = Shop1.CustomerID

SELECT * FROM
	(SELECT * FROM Shop1
		UNION 
	SELECT * FROM Shop2conv) a
INNER JOIN Shop1
ON a.CustomerID = Shop1.CustomerID

SELECT * FROM
	(SELECT * FROM Shop1
		UNION 
	SELECT * FROM Shop2conv) a
LEFT JOIN Shop1
ON a.CustomerID = Shop1.CustomerID

SELECT * FROM
	(SELECT * FROM Shop1
		UNION 
	SELECT * FROM Shop2conv) a
RIGHT JOIN Shop1
ON a.CustomerID = Shop1.CustomerID

SELECT * FROM Shop1
INNER JOIN Shop2
ON Shop1.CustomerID = Shop2.CustomerID

SELECT * FROM Shop1
LEFT JOIN Shop2
ON Shop1.CustomerID = Shop2.CustomerID

SELECT * FROM Shop1
RIGHT JOIN Shop2
ON Shop1.CustomerID = Shop2.CustomerID


SELECT * FROM Shop1
FULL OUTER JOIN Shop2
ON Shop1.CustomerID = Shop2.CustomerID