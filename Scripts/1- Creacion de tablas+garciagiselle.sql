drop schema if exists stock;
create schema stock;
use stock;

drop table if exists PRODUCTOS;
create table PRODUCTOS
(
cod_prod INT NOT NULL auto_increment,
prod_nombre VARCHAR(20),
prod_precio INT NOT NULL,
prod_stock INT NOT NULL,
primary key (cod_prod)
);
ALTER TABLE productos AUTO_INCREMENT=100;

drop table if exists VENTA;
create table VENTA
(
id_venta INT NOT NULL auto_increment,
cond_venta VARCHAR(7) NOT NULL,
cond_cliente VARCHAR(21) NOT NULL,
valor_ventatotal DECIMAL(7,2) NOT NULL,
fecha_venta DATE NOT NULL,
primary key (id_venta)
);
ALTER TABLE venta AUTO_INCREMENT=1000;

drop table if exists EGRESOS;
create table EGRESOS
(
id_egreso INT NOT NULL auto_increment,
id_venta INT NOT NULL,
cod_prod INT NOT NULL,
cant_egr INT NOT NULL,
egreso_fecha DATE NOT NULL,
primary key (id_egreso),
constraint id_venta_egreso foreign key (id_venta) REFERENCES VENTA (id_venta),
constraint producto_egr foreign key (cod_prod) REFERENCES PRODUCTOS (cod_prod)
);
ALTER TABLE egresos AUTO_INCREMENT=2000;

drop table if exists PROVEEDORES;
create table PROVEEDORES
(
cod_proveedor INT NOT NULL auto_increment,
prov_nombre VARCHAR(20) NOT NULL,
prov_rubro TEXT(15),
prov_telefono INT NOT NULL,
prov_email VARCHAR(50),
prov_mediopago VARCHAR(22) NOT NULL,
primary key (cod_proveedor)
);

drop table if exists PEDIDOS;
create table PEDIDOS
(
id_pedido INT NOT NULL auto_increment,
cod_proveedor INT NOT NULL,
valor_total INT NOT NULL,
pago_pedido BOOLEAN NOT NULL,
fecha_pedido DATE NOT NULL,
primary key (id_pedido),
constraint cod_proveedor_pedidos foreign key (cod_proveedor) REFERENCES PROVEEDORES (cod_proveedor)
);
ALTER TABLE pedidos AUTO_INCREMENT=500;

drop table if exists INGRESO;
create table INGRESO
(
nro_ingreso INT NOT NULL auto_increment,
id_pedido INT NOT NULL,
cod_prod INT NOT NULL,
ingr_cant INT NOT NULL,
ingr_costo DECIMAL(7,2) NOT NULL,
ingr_fecha DATE,

primary key (nro_ingreso),
constraint ingreso_producto foreign key (cod_prod) REFERENCES PRODUCTOS (cod_prod),
constraint id_pedido_ingresos foreign key (id_pedido) REFERENCES PEDIDOS (id_pedido)
);			
ALTER TABLE ingreso AUTO_INCREMENT=200;
		
drop table if exists DETALLE_PEDIDO;        
create table DETALLE_PEDIDO
(
nro_detalle_pedido INT NOT NULL auto_increment,
id_pedido INT NOT NULL,
cod_prod INT NOT NULL,
cant_pedido INT NOT NULL,

primary key (nro_detalle_pedido),
constraint producto_detalle_pedido foreign key (cod_prod) REFERENCES PRODUCTOS (cod_prod),
constraint origen_detalle_pedido foreign key (id_pedido) REFERENCES PEDIDOS (id_pedido)
);
ALTER TABLE detalle_pedido AUTO_INCREMENT=700;

drop table if exists DETALLE_VENTA;
create table DETALLE_VENTA
(
nro_detalle_venta INT NOT NULL auto_increment,
id_venta INT NOT NULL,
cod_prod INT NOT NULL,
dV_cant INT NOT NULL,
precio_venta DECIMAL(7,2) NOT NULL,

primary key (nro_detalle_venta ),
constraint producto_detalle_venta foreign key (cod_prod) REFERENCES PRODUCTOS (cod_prod),
constraint origen_detalle_venta foreign key (id_venta) REFERENCES VENTA (id_venta)
);		
ALTER TABLE detalle_venta AUTO_INCREMENT=1500;
