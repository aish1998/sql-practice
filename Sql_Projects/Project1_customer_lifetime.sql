SELECT c.CustomerID, c.FirstName, c.LastName, SUM(o.TotalAmount) AS LifetimeValue
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY LifetimeValue DESC;
