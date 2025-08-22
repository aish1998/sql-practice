SELECT YEAR(JoinDate) AS YearJoined, COUNT(*) AS NewCustomers
FROM Customers
GROUP BY YEAR(JoinDate)
ORDER BY YearJoined;
