SELECT p.nombre, p.precio, c.nombre AS categoria 
FROM productos p 
JOIN categorias c ON p.categoria_id = c.id;

SELECT * FROM productos WHERE nombre ILIKE '%Laptop%';

SELECT p.nombre FROM productos p 
JOIN categorias c ON p.categoria_id = c.id 
WHERE c.nombre = 'Electrónica';

SELECT p.nombre, dp.cantidad, dp.precio_unitario 
FROM detalle_pedidos dp 
JOIN productos p ON dp.producto_id = p.id 
WHERE dp.pedido_id = 1;

SELECT SUM(cantidad * precio_unitario) as total_pedido 
FROM detalle_pedidos 
WHERE pedido_id = 1;

SELECT p.nombre, s.cantidad 
FROM productos p 
JOIN stock s ON p.id = s.producto_id 
WHERE s.cantidad < 10;