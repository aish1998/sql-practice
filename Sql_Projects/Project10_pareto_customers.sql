SELECT c.CustomerID, c.FirstName, SUM(o.TotalAmount) AS Revenue
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName
ORDER BY Revenue DESC
LIMIT 2;  -- top 2 customers in this dataset
