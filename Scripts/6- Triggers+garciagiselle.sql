USE stock;

DROP TABLE IF EXISTS LOG_prod;
CREATE TABLE LOG_prod (
	id_logP INT auto_increment primary key,
	cod_prod INT,
    prod_nombre VARCHAR(20),
    usuario VARCHAR(30),
    accion VARCHAR(10),
    fecha date,
    hora time
    );

DROP TRIGGER IF EXISTS nuevo_prod;
DELIMITER //
	CREATE TRIGGER `nuevo_prod`
	AFTER INSERT ON `productos`
	FOR EACH ROW
	BEGIN
		INSERT INTO `LOG_prod` (cod_prod, prod_nombre, usuario, accion, fecha, hora)
        VALUES (NEW.cod_prod, NEW.prod_nombre, current_user(), "INSERT", current_date(), current_time());
	END //
DELIMITER ;

DROP TRIGGER IF EXISTS del_prod;
DELIMITER //
	CREATE TRIGGER `del_prod`
	BEFORE DELETE ON `productos`
	FOR EACH ROW
	BEGIN
		INSERT INTO `LOG_prod` (cod_prod, prod_nombre, usuario, accion, fecha, hora)
        VALUES (OLD.cod_prod, OLD.prod_nombre, current_user(), "DELETE", current_date(), current_timestamp());
	END //
DELIMITER ;

-- EJEMPLOS DE IMPLEMENTACIÓN
INSERT INTO productos (cod_prod, prod_nombre, prod_precio, prod_stock)
VALUES (120, "lenteja nar 500gr", 1500, 15);

DELETE FROM productos WHERE cod_prod = 120;

DROP TABLE IF EXISTS LOG_ventas;
CREATE TABLE LOG_ventas (
	id_logV INT auto_increment primary key,
	id_venta INT,
    valor_ventatotal VARCHAR(20),
    usuario VARCHAR(30),
    accion VARCHAR(10),
    fecha date,
    hora time
    );

DROP TRIGGER IF EXISTS nueva_venta;    
DELIMITER //
	CREATE TRIGGER `nueva_venta`
	AFTER INSERT ON `venta`
	FOR EACH ROW
	BEGIN
		INSERT INTO `LOG_ventas` (id_venta, valor_ventatotal, usuario, accion, fecha, hora)
        VALUES (NEW.id_venta, NEW.valor_ventatotal, current_user(), "INSERT", current_date(), current_time());
	END //
DELIMITER ;

DROP TRIGGER IF EXISTS upd_venta_bef;
DELIMITER //
	CREATE TRIGGER `upd_venta_bef`
	BEFORE UPDATE ON `venta`
	FOR EACH ROW
	BEGIN
		INSERT INTO `LOG_ventas` (id_venta, valor_ventatotal, usuario, accion, fecha, hora)
        VALUES (OLD.id_venta, OLD.valor_ventatotal, current_user(), "BEF UPDATE", current_date(), current_timestamp());
	END //
DELIMITER ;

DROP TRIGGER IF EXISTS upd_venta_aft;
DELIMITER //
	CREATE TRIGGER `upd_venta_aft`
	AFTER UPDATE ON `venta`
	FOR EACH ROW
	BEGIN
		INSERT INTO `LOG_ventas` (id_venta, valor_ventatotal, usuario, accion, fecha, hora)
        VALUES (NEW.id_venta, NEW.valor_ventatotal, current_user(), "AFT UPDATE", current_date(), current_timestamp());
	END //
DELIMITER ;

-- EJEMPLOS DE IMPLEMENTACIÓN
DELETE FROM venta WHERE id_venta = 1015;

INSERT INTO venta (id_venta, cond_venta, cond_cliente, valor_ventatotal, fecha_venta)
VALUES (1015, "contado", "consumidor final", 5000, "2023-10-05");

UPDATE venta
SET valor_ventatotal = 4000
WHERE id_venta = 1015;

