SELECT CustomerID, COUNT(OrderID) AS OrdersCount
FROM Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 1;
