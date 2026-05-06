INSERT INTO categorias (nombre) VALUES ('Electrónica'), ('Hogar'), ('Ropa');

INSERT INTO usuarios (nombre, email, password, rol) VALUES 
('Admin General', 'admin@tienda.com', '1234', 'admin'),
('Juan Perez', 'juan@gmail.com', '1234', 'cliente'),
('Maria Lopez', 'maria@gmail.com', '1234', 'cliente'),
('Carlos Ruiz', 'carlos@gmail.com', '1234', 'cliente'),
('Ana Sosa', 'ana@gmail.com', '1234', 'cliente');

INSERT INTO productos (nombre, descripcion, precio, categoria_id) VALUES 
('Laptop Pro', 'Potente para desarrollo', 1200000, 1),
('Mouse Inalámbrico', 'Ergonómico', 25.000, 1),
('Teclado Mecánico', 'RGB', 80.000, 1),
('Monitor 4K', '27 pulgadas', 350.000, 1),
('Silla Oficina', 'Ergonómica', 150.000, 2),
('Lámpara LED', 'Luz cálida', 15.000, 2),
('Cafetera', 'Express', 60.000, 2),
('Camiseta Algodón', 'Talla L', 12.000, 3),
('Jeans Azules', 'Slim fit', 45.000, 3),
('Zapatillas Running', 'Deportivas', 75.000, 3);


INSERT INTO stock (producto_id, cantidad) 
SELECT id, 50 FROM productos;

INSERT INTO pedidos (usuario_id, total) VALUES (2, 122500), (3, 60.000), (4, 120.000);

INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad, precio_unitario) VALUES 
(1, 1, 1, 1200000), (1, 2, 1, 25.000),
(2, 7, 1, 60.000),
(3, 10, 1, 75.000), (3, 9, 1, 45.000);

select * from categorias;
select * from usuarios;
select * from productos;
select * from stock;
select * from pedidos;
select * from detalle_pedidos;