ALTER TABLE examen.Obra
ADD CONSTRAINT FK_Proveedor
FOREIGN KEY (IdProveedor)
REFERENCES examen.Proveedor(IdProveedor)

ALTER TABLE examen.Obra
ADD CONSTRAINT FK_CategoriaObra
FOREIGN KEY (IdCategoriaObra)
REFERENCES examen.CategoriaObra(IdCategoriaObra)

ALTER TABLE examen.DetalleOrden
ADD CONSTRAINT FK_Obra
FOREIGN KEY (IdObra)
REFERENCES examen.Obra(IdObra)

ALTER TABLE examen.DetalleOrden
ADD CONSTRAINT FK_Orden
FOREIGN KEY (IdOrden)
REFERENCES examen.Orden(IdOrden)


ALTER TABLE examen.Orden
ADD CONSTRAINT FK_Cliente
FOREIGN KEY (IdCliente)
REFERENCES examen.Cliente(IdCliente)

