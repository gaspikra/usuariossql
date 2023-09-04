-- aca creo el usuario 'Sololectura' con permisos de solo lectura
CREATE USER 'SoloLectura'@'localhost' IDENTIFIED BY 'gaspi';
-- Asignar permisos de lectura a todas las tablas existentes en una base de datos
GRANT SELECT ON hoteles.* TO 'SoloLectura'@'localhost';
-- aca creo el usuario 'ModificacionYinsercion' con permisos de lectura, insercion y modificacion
CREATE USER 'ModificacionYinsercion'@'localhost' IDENTIFIED BY 'gaspí2';
-- aca asigno permisos de lectura, insercion y modificacion a todas las tablas existentes en una base de datos 
GRANT SELECT, INSERT, UPDATE ON hoteles.* TO 'ModificacionYinsercion'@'localhost';
-- aca no permito que puedan eliminar datos
REVOKE DELETE ON hoteles.* FROM 'SoloLectura'@'localhost';
REVOKE DELETE ON hoteles.* FROM 'ModificacionYinsercion'@'localhost';