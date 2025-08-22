SELECT c.Country, c.CustomerID, c.FirstName, SUM(o.TotalAmount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Country, c.CustomerID, c.FirstName
ORDER BY c.Country, TotalSpent DESC;
