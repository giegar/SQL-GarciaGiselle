USE STOCK;

CREATE USER IF NOT EXISTS 'usuario1'@'localhost' IDENTIFIED BY 'coderhouse1';
-- En esta sentencia cree un nuevo usuario con host local llamado usuario1
FLUSH PRIVILEGES;
GRANT SELECT ON stock.* TO 'usuario1'@'localhost';
-- En esta sentencia al usuario1 le otorgue permisos de solo lectura en para todas las tablas del schema

SHOW GRANTS FOR 'usuario1'@'localhost';
-- En esta sentencia se visualizan los permisos otorgados al usuario1

CREATE USER IF NOT EXISTS 'usuario2'@'localhost' IDENTIFIED BY 'coderhouse2';
-- En esta sentencia cree un nuevo usuario con host local llamado usuario2
FLUSH PRIVILEGES;
GRANT SELECT, INSERT, UPDATE ON stock.* TO 'usuario2'@'localhost';
-- En esta sentencia al usuario1 le otorgue permisos de lectura, modificacion e insercion para todas las tablas del schema

SHOW GRANTS FOR 'usuario2'@'localhost';
-- En esta sentencia se visualizan los permisos otorgados al usuario1