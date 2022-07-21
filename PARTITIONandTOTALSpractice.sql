-- Practice with these queries to see what they do and don't do.
--See what comes up and how they produce different results

SELECT *, ROW_NUMBER() OVER( ORDER BY FirstName ) AS PurchaseID
FROM CustomerPurchases

SELECT *, RANK() OVER( PARTITION BY StoreLocation ORDER BY LastName ) AS StorePurchaseID
FROM CustomerPurchases

SELECT *, ROW_NUMBER() OVER( PARTITION BY StoreLocation ORDER BY PricePaid ) AS StorePurchaseID
FROM CustomerPurchases

SELECT *, DENSE_RANK() OVER( ORDER BY ProductName) AS ProductID
FROM CustomerPurchases

SELECT *, RANK() OVER( ORDER BY ProductName) AS ProductID
FROM CustomerPurchases

SELECT *, DENSE_RANK() OVER( ORDER BY StoreLocation) AS LocationID
FROM CustomerPurchases

SELECT *, RANK() OVER( ORDER BY StoreLocation) AS LocationID
FROM CustomerPurchases

SELECT *, SUM(PricePaid) OVER (ORDER BY Purchase_Date) AS DailyRevenue
FROM CustomerPurchases

SELECT *, SUM(PricePaid) OVER (PARTITION BY Purchase_Date ORDER BY Purchase_Date)
	AS DailyTotal
FROM CustomerPurchases

SELECT *, SUM(PricePaid) OVER (PARTITION BY Purchase_Date ORDER BY Purchase_Date, FirstName)
	AS RunningRevenue
FROM CustomerPurchases

SELECT *, SUM(PricePaid) OVER (ORDER BY Purchase_Date, FirstName)
	AS RunningRevenue
FROM CustomerPurchases

SELECT *, ROW_NUMBER() OVER( ORDER BY FirstName ) AS MasterCustomerID, ROW_NUMBER() OVER( ORDER BY FirstName ) AS PurchaseID, 
	DENSE_RANK() OVER( ORDER BY StoreLocation) AS LocationID, DENSE_RANK() OVER( ORDER BY ProductName) AS ProductID, 
	SUM(PricePaid) OVER ( ORDER BY Purchase_Date, FirstName) AS RunningRevenueTotal
FROM CustomerPurchases;