-- Idem al anterior pero mostrando los resultados paginados 
-- en paginas de 5 resultados cada una, devolviendo la 
-- segunda pagina.

SELECT n.padron, n.codigo, n.numero, n.fecha, n.nota * 10
FROM notas n
ORDER BY n.padron, n.codigo, n.numero, n.fecha
LIMIT 5 OFFSET 5;