BEGIN;

-- 1. Crear el pedido
INSERT INTO pedidos (usuario_id, total) 
VALUES (3, 350.00);

-- 2. Registrar el detalle (usamos currval para obtener el ID del pedido recién creado)
INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad, precio_unitario)
VALUES (currval('pedidos_id_seq'), 4, 1, 350.00);

-- 3. Actualizar el stock
UPDATE stock 
SET cantidad = cantidad - 1, 
    ultima_actualizacion = CURRENT_TIMESTAMP
WHERE producto_id = 4;

COMMIT;