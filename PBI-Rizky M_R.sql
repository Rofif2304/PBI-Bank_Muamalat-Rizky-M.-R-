SELECT
  o.Date AS order_date,
  pc.CategoryName AS category_name,
  p.ProdName AS product_name,
  p.Price AS product_price,
  o.Quantity AS order_qty,
  (p.Price * o.Quantity) AS total_sales,
  c.CustomerEmail AS cust_email,
  c.CustomerCity AS cust_city
FROM
  Bank_Muamalat.Orders AS o
JOIN
  Bank_Muamalat.Customers AS c
  ON o.CustomerID = c.CustomerID
JOIN
  Bank_Muamalat.Products AS p
  ON o.ProdNumber = p.ProdNumber
JOIN
  Bank_Muamalat.ProductCategory AS pc
  ON p.Category = pc.CategoryID
ORDER BY
  order_date ASC;
