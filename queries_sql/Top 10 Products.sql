SELECT 
    t.Name AS Track_Name, 
    at.Name AS Artist_Name,
    SUM(il.UnitPrice * il.Quantity) AS Total_Revenue,
    COUNT(il.InvoiceLineId) AS Total_Units_Sold
FROM Track t
JOIN InvoiceLine il ON t.TrackId = il.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist at ON al.ArtistId = at.ArtistId
GROUP BY t.TrackId
ORDER BY Total_Revenue DESC
LIMIT 10;