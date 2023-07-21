use stock;

-- Este SP facilita gestion de la tabla productos. Como parametros recibe la informacion del producto a insertar.
-- En el caso de eliminar, los ultimos 3 parametros se pueden rellenar con letras y numeros, ya que se compara solamente el codigo de producto.
drop procedure if exists gestion_productos;
DELIMITER //
create procedure `gestion_productos` (IN instruccion TEXT,
								   IN codigo INT,
								   IN nombre VARCHAR(20),
                                   IN precio DECIMAL(7,2),
                                   IN stock INT)
BEGIN
	IF instruccion = "eliminar"
		THEN DELETE FROM stock.productos
        WHERE cod_prod = codigo;
	ELSE 
		INSERT INTO 
				productos(cod_prod, prod_nombre, prod_precio, prod_stock)
			VALUES
				(codigo, nombre, precio, stock);
    END IF;        
END //
DELIMITER ;

CALL gestion_productos ("", 119, "lenteja nac 500gr", 750, 10);

CALL gestion_productos("eliminar", 119, "abc", 123, 123);

SELECT * from productos where cod_prod=119;

-- Este SP facilita la creación de un ranking de cualquier tabla del schema, eligiendo columna y orden.
drop procedure if exists ranking_por_tabla;
DELIMITER //
create procedure `ranking_por_tabla`(IN tabla VARCHAR(30),
									IN columna VARCHAR(30),
                                    IN orden TEXT)
BEGIN
	IF columna <> "" THEN
		SET @ordenrank = concat(" ORDER BY ", columna, " ", orden);
    ELSE
		SET @ordenrank = "" ;
    END IF;
    
    SET @consulta = concat("SELECT * FROM ", tabla, @ordenrank);
    PREPARE runSQL FROM @consulta;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END //
DELIMITER ;

-- Por ejemplo, aca se pidio un ranking de productos con el menor stock primero, util para realizar pedidos
call ranking_por_tabla("stock.productos", "prod_stock", "asc");

