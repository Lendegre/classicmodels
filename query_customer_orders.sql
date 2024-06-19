SELECT 
    o.customerNumber, 
    COUNT(*) AS TotalOrders
FROM 
    orders o
    JOIN orderdetails od ON o.orderNumber = od.orderNumber
    JOIN products p ON od.productCode = p.productCode
    JOIN customers c ON o.customerNumber = c.customerNumber
WHERE 
    p.productLine = 'Classic Cars'
GROUP BY 
    o.customerNumber
HAVING 
    COUNT(*) > 23;