CREATE TABLE examen.CategoriaObra(
    IdCategoriaObra INT NOT NULL PRIMARY KEY ,
    Tipo NVARCHAR (100),
    Descripcion NVARCHAR (200)
    )
    
    CREATE TABLE examen.DetalleOrden(
    IdDetalle INT NOT NULL PRIMARY KEY ,
    IdObra int,
    Cantidad int,
    IdOrden int,
    Multa INT
    )
    
    CREATE TABLE examen.Obra(
    IdObra INT NOT NULL PRIMARY KEY ,
    IdCategoriaObra int,
    Precio int,
    IdProveedor int,
    Photo NVARCHAR (100)
    )
