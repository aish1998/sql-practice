SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(TotalAmount) AS MonthlyRevenue
FROM Orders
GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
ORDER BY Month;
