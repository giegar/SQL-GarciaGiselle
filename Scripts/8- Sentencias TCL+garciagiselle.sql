USE stock;

SELECT @@autocommit;
SET @@autocommit=0;
START transaction;

INSERT INTO productos (prod_nombre, prod_precio, prod_stock) VALUES("Kanawa Pomelo 500ml", 650, 10);
INSERT INTO productos (prod_nombre, prod_precio, prod_stock) VALUES("Kanawa Sandia 500ml", 650, 10);
INSERT INTO productos (prod_nombre, prod_precio, prod_stock) VALUES("Kanawa Pomelo 250ml", 550, 15);
INSERT INTO productos (prod_nombre, prod_precio, prod_stock) VALUES("Kanawa Sandia 250ml", 550, 15);
SAVEPOINT bloque1;
INSERT INTO productos (prod_nombre, prod_precio, prod_stock) VALUES("Chipa baston Un", 70, 60);
INSERT INTO productos (prod_nombre, prod_precio, prod_stock) VALUES("Chipa Bolita Un", 60, 60);
INSERT INTO productos (prod_nombre, prod_precio, prod_stock) VALUES("Toques veg garb", 800, 10);
INSERT INTO productos (prod_nombre, prod_precio, prod_stock) VALUES("Toques veg lentej", 800, 10);
SAVEPOINT bloque2;

commit;
-- rollback to bloque1;
-- release savepoint bloque1;

select * from productos;

SELECT @@autocommit;
SET @@autocommit=0;
START transaction;

DELETE from pedidos
where valor_total = 5000;

-- rollback;
-- commit;
-- INSERT INTO pedidos (id_pedido, cod_proveedor, valor_total, pago_pedido, fecha_pedido) VALUES(510, 2, 5000, true, "2023-05-07");
