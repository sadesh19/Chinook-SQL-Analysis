SELECT 
    strftime('%Y-%m', InvoiceDate) AS Sales_Month, 
    SUM(Total) AS Monthly_Revenue
FROM Invoice
GROUP BY Sales_Month
ORDER BY Sales_Month ASC;