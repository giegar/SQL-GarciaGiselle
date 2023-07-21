use stock;
drop function if exists fn_discriminar_iva;

delimiter $$ 
create function fn_discriminar_iva (p_nro_pedido int,
									p_iva decimal (4.2))
returns decimal(7,2)
deterministic
begin
	declare v_precio_compra decimal (7.2);
    declare v_sin_iva decimal (7,2);
	set v_precio_compra = (SELECT ingr_costo FROM ingreso
								where nro_ingreso = p_nro_pedido);
    set v_sin_iva = (v_precio_compra - ((v_precio_compra * p_iva)/100));
    
    return v_sin_iva;
end $$
delimiter ;

SELECT stock.fn_discriminar_iva(219, 21) as compra_sin_iva ;

drop function if exists fn_avg_compraprod ;

delimiter $$
create function fn_avg_compraprod (p_cod_prod int)
returns decimal(7,2)
deterministic
begin
	declare cant_compras_prod int;
    declare valor_compras_prod decimal(7,2);
    declare promedio_compras_prod decimal(7,2);
    set cant_compras_prod = (SELECT COUNT(ingr_costo) FROM ingreso WHERE cod_prod = p_cod_prod);
    set valor_compras_prod = (SELECT SUM(ingr_costo) FROM ingreso WHERE cod_prod = p_cod_prod);
    set promedio_compras_prod = (valor_compras_prod / cant_compras_prod);
    
    return promedio_compras_prod;
end $$
delimiter ;

SELECT stock.fn_avg_compraprod(113) as promedio_compras ;

drop function if exists ventas_mensual ;
delimiter $$
create function ventas_mensual (mes_elegido int,
								año_elegido int)
returns int
deterministic
begin
	declare cant_ventas int;
    set cant_ventas = (select count(*) from venta
						where month(fecha_venta)= mes_elegido and
                        year(fecha_venta)= año_elegido);
return cant_ventas;
end $$
delimiter ;

SELECT stock.ventas_mensual(05, 2023) as ventas_mayo ;
