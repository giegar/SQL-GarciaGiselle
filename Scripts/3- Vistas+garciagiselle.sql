use stock;

-- muestra productos con precio mas alto primero
CREATE OR REPLACE VIEW lista_productos AS
	(SELECT cod_prod, prod_nombre, prod_precio
    FROM productos
    ORDER BY prod_precio desc );
    SELECT * FROM productos;

-- muestra la informacion completa por cada producto pedido
CREATE OR REPLACE VIEW pedidos_completos AS
	(SELECT P.*, DP.cod_prod, DP.cant_pedido
    FROM pedidos as P JOIN detalle_pedido as DP
    ON P.id_pedido = DP.id_pedido
    ORDER BY id_pedido desc);

-- muestra los pedidos realizados agrupados por proveedor
CREATE OR REPLACE VIEW pedidos_por_proveedor AS
	(SELECT PR.cod_proveedor, PR.prov_nombre, PR.prov_telefono, P.id_pedido, P.pago_pedido, P.fecha_pedido
    FROM proveedores AS PR JOIN pedidos AS P
    ON PR.cod_proveedor = P.cod_proveedor
    ORDER BY prov_nombre asc);

-- muestra la informacion completa por cada producto vendido
CREATE OR REPLACE VIEW venta_productos AS
	(SELECT V.*, DV.cod_prod, DV.dV_cant, DV.precio_venta
    FROM venta AS V JOIN detalle_venta AS DV
    ON V.id_venta = DV.id_venta
    ORDER BY id_venta asc);

-- muestra las ventas que superan un monto con la informacion relevante de cada una
CREATE OR REPLACE VIEW ventas_importantes AS
    (SELECT V.*, DV.cod_prod, DV.dV_cant, DV.precio_venta
    FROM venta AS V JOIN detalle_venta AS DV
    ON V.id_venta = DV.id_venta
    WHERE valor_ventatotal > 10000);
    
SELECT * from lista_productos;
SELECT * from pedidos_completos;
SELECT * from pedidos_por_proveedor;
SELECT * from venta_productos;
SELECT * from ventas_importantes;
