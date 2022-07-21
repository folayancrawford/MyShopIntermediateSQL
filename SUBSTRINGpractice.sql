--STRING FUNCTION practice
SELECT * FROM Shop1
SELECT * FROM Shop2

SELECT *, 
	SUBSTRING(LTRIM(Shop1.CustomerName), 1,CHARINDEX(' ',LTRIM(Shop1.CustomerName),1))
		AS FirstName, 
	SUBSTRING(RTRIM(Shop1.CustomerName), 
			CHARINDEX(' ', RTRIM(Shop1.CustomerName), (CHARINDEX(' ', RTRIM(Shop1.CustomerName)))+2),
			LEN(TRIM(Shop1.CustomerName))) AS LastName
FROM Shop1 

SELECT * FROM Shop2

SELECT UPPER(LEFT(Shop2.CustomerName,1)) + LOWER(SUBSTRING(Shop2.CustomerName,
		2, CHARINDEX(' ', Shop2.CustomerName, 1)-1)) AS FirstName,
		UPPER(LEFT(SUBSTRING(Shop2.CustomerName, CHARINDEX(' ', Shop2.CustomerName, 1)+1, 
		LEN(TRIM(Shop2.CustomerName))),1))
			+ LOWER(SUBSTRING(Shop2.CustomerName, 
			CHARINDEX(' ', Shop2.CustomerName, 1)+2, LEN(TRIM(Shop2.CustomerName))))
		AS LastName
FROM Shop2 



SELECT * FROM Shop2
--similary we use 

SELECT 
		SUBSTRING (Shop1.CustomerAddress, 1, CHARINDEX(',', Shop1.CustomerAddress)-1) AS CustomerCity,
		SUBSTRING (Shop1.CustomerAddress, CHARINDEX(',', Shop1.CustomerAddress)+1, 3) AS CustomerState,
		RIGHT(TRIM(Shop1.CustomerAddress),5) AS CustomerZip
FROM Shop1

ALTER TABLE Shop1
	ADD FirstName varchar(255),
	LastName varchar(255)
	
	SELECT * FROM Shop1

UPDATE Shop1
	SET FirstName = SUBSTRING(LTRIM(Shop1.CustomerName), 1,CHARINDEX(' ',LTRIM(Shop1.CustomerName),1)),
		
		LastName = 	SUBSTRING(RTRIM(Shop1.CustomerName), 
			CHARINDEX(' ', RTRIM(Shop1.CustomerName), (CHARINDEX(' ', RTRIM(Shop1.CustomerName)))+2),
			LEN(TRIM(Shop1.CustomerName))) 