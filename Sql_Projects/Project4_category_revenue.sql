SELECT p.Category, SUM(od.Quantity * p.Price) AS CategoryRevenue
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY CategoryRevenue DESC;
