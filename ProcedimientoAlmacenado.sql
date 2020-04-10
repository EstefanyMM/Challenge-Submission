CREATE PROCEDURE examen.clean_challenge
AS

TRUNCATE TABLE examen.DetalleOrden

DELETE FROM examen.Obra
DELETE FROM examen.Orden

DELETE FROM examen.Cliente
DELETE FROM examen.Proveedor
DELETE FROM examen.CategoriaObra


EXEC examen.clean_challenge


ALTER PROCEDURE examen.clean_challenge
AS

DELETE FROM examen.DetalleOrden

DELETE FROM examen.Obra
DELETE FROM examen.Orden

DELETE FROM examen.Cliente
DELETE FROM examen.Proveedor
DELETE FROM examen.CategoriaObra


EXEC examen.clean_challenge
