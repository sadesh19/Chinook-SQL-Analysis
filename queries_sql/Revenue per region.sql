SELECT 
    c.Country, 
    SUM(i.Total) AS Total_Revenue,
    COUNT(i.InvoiceId) AS Transaction_Count
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.Country
ORDER BY Total_Revenue DESC;