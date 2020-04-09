CREATE SCHEMA examen
CREATE TABLE examen.Cliente(
    IdCliente INT NOT NULL PRIMARY KEY ,
    NombreCliente NVARCHAR (200),
    Direccion NVARCHAR (200),
    Telefono NUMERIC,
    Correo NVARCHAR (200)
   
    )
    
    CREATE TABLE examen.Proveedor(
    IdProveedor INT NOT NULL PRIMARY KEY ,
    NombreProveedor NVARCHAR (200),
    Direccion NVARCHAR (200),
    Telefono NUMERIC,
    IdCategoriaObra INT 
   
    )
    
    CREATE TABLE examen.Orden(
    IdOrden INT NOT NULL PRIMARY KEY ,
    IdCliente INT,
    FechaIngreso DATE,
    FechaFinal Date,
    NombreEvento NVARCHAR (200),
    DireccionEvento NVARCHAR (200),
    NPersonas INT
    )
