--las 5 obras más demandadas

SELECT TOP 5 Cantidad, IdObra
FROM examen.DetalleOrden
GROUP BY Cantidad, IdObra
ORDER BY COUNT(5) DESC


--los top 5 clientes más frecuentes
         
SELECT TOP 5
    p.IdCliente, 
    s.NombreCliente,
    COUNT(IdOrden) AS ConteoOrdenes
FROM examen.Orden as p
INNER JOIN examen.Cliente as s
ON p.IdCliente = s.IdCliente
GROUP BY     p.IdCliente,
             s.NombreCliente
ORDER BY COUNT(IdOrden) DESC     

--los nombres de proveedores con mas obras registradas.  
select top 3
           p.IdProveedor,
		   s.NombreProveedor, 
		   count(IdObra) as ObrasRegistradas
from examen.Obra as p
inner join examen.Proveedor as s
on p.IdProveedor = s.IdProveedor
group by p.IdProveedor,
         s.NombreProveedor        
order by count(IdObra) desc
