SELECT 
    c.FirstName, 
    c.LastName, 
    c.Country, 
    SUM(i.Total) AS Total_Spent,
    RANK() OVER (ORDER BY SUM(i.Total) DESC) AS Customer_Rank
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId;