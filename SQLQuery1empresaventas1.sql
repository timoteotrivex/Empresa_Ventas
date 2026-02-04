SELECT * FROM Clientes; 
SELECT * FROM Productos; 
SELECT * FROM Vendedores; 
SELECT * FROM Ventas; 
SELECT * FROM DetalleVentas; 

--Cantidad total de clientes registrados

--8️⃣ Cantidad de clientes por ciudad

--9️⃣ Precio promedio de los productos

--🔟 Stock total por categoría

--1️⃣1️⃣ Cantidad de ventas realizadas por vendedor

--1️⃣2️⃣ Total facturado por vendedor

--1️⃣3️⃣ Precio promedio de productos por categoría

--📌 Comparar categorías (Tecnología vs Muebles)

--1️⃣4️⃣ Vendedores que realizaron más de una venta

--📌 Usar HAVING (clave del nivel)

--COUNT, SUM, AVG, GROUP BY, HAVING


--1
SELECT COUNT(ClienteID ) FROM CLIENTES;
--2
SELECT COUNT(Ciudad) as clientescantidad_porciudad FROM CLIENTES
GROUP BY(Ciudad) ;
--3
SELECT avg(Precio) as precio_promedio_productos FROM Productos; 
--4
SELECT Categoria, SUM(Stock) as total FROM Productos
GROUP BY (Categoria);
--5
SELECT COUNT(VendedorID)as cadauno FROM Ventas 
GROUP BY (VENDEDORID);
--6
SELECT (VendedorID), (Total) FROM Ventas ;
--7
SELECT Categoria , SUM(PRECIO) FROM Productos
GROUP BY(Categoria )
; 
--8Vendedores que realizaron más de una venta

SELECT VendedorID, COUNT(*) AS CantidadVentas
FROM Ventas
GROUP BY VendedorID
HAVING COUNT(*) > 1;





