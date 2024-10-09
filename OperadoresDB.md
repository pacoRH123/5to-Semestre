| Operador               | Descripción                                                     | Ejemplo                                                        |
|-----------------------|-----------------------------------------------------------------|---------------------------------------------------------------|
| `=`                    | Compara si dos valores son iguales                              | `SELECT * FROM empleados WHERE salario = 50000;`             |
| `!=` o `<>`           | Compara si dos valores son diferentes                           | `SELECT * FROM empleados WHERE departamento != 'Ventas';`    |
| `>`                    | Compara si un valor es mayor que otro                           | `SELECT * FROM empleados WHERE salario > 40000;`             |
| `<`                    | Compara si un valor es menor que otro                           | `SELECT * FROM empleados WHERE edad < 30;`                   |
| `>=`                   | Compara si un valor es mayor o igual a otro                     | `SELECT * FROM empleados WHERE salario >= 30000;`            |
| `<=`                   | Compara si un valor es menor o igual a otro                     | `SELECT * FROM empleados WHERE edad <= 50;`                  |
| `AND`                  | Devuelve verdadero si ambas condiciones son verdaderas          | `SELECT * FROM empleados WHERE salario > 40000 AND edad < 40;` |
| `OR`                   | Devuelve verdadero si al menos una condición es verdadera       | `SELECT * FROM empleados WHERE departamento = 'Ventas' OR departamento = 'Marketing';` |
| `NOT`                  | Invierte el valor de una condición                               | `SELECT * FROM empleados WHERE NOT departamento = 'RRHH';`   |
| `BETWEEN`              | Verifica si un valor está dentro de un rango                    | `SELECT * FROM empleados WHERE salario BETWEEN 30000 AND 50000;` |
| `IN`                   | Comprueba si un valor está en una lista de valores              | `SELECT * FROM empleados WHERE departamento IN ('Ventas', 'Marketing');` |
| `LIKE`                 | Busca un patrón en un campo de texto                            | `SELECT * FROM empleados WHERE nombre LIKE 'A%';`            |
| `IS NULL`              | Verifica si un valor es nulo                                     | `SELECT * FROM empleados WHERE fecha_salida IS NULL;`        |
| `IS NOT NULL`         | Verifica si un valor no es nulo                                  | `SELECT * FROM empleados WHERE fecha_salida IS NOT NULL;`    |
| `COUNT()`              | Cuenta el número de filas en un conjunto                         | `SELECT COUNT(*) FROM empleados;`                             |
| `SUM()`                | Suma valores de una columna                                      | `SELECT SUM(salario) FROM empleados;`                         |
| `AVG()`                | Calcula el promedio de valores en una columna                   | `SELECT AVG(salario) FROM empleados;`                         |
| `MAX()`                | Devuelve el valor máximo de una columna                          | `SELECT MAX(salario) FROM empleados;`                         |
| `MIN()`                | Devuelve el valor mínimo de una columna                          | `SELECT MIN(salario) FROM empleados;`                         |
| `DISTINCT`            | Elimina duplicados en los resultados                             | `SELECT DISTINCT departamento FROM empleados;`                |
| `GROUP BY`            | Agrupa filas que tienen los mismos valores en columnas especificadas | `SELECT departamento, COUNT(*) FROM empleados GROUP BY departamento;` |
| `HAVING`              | Filtra los resultados de un grupo                                | `SELECT departamento, COUNT(*) FROM empleados GROUP BY departamento HAVING COUNT(*) > 5;` |
| `ORDER BY`            | Ordena los resultados en un orden específico                     | `SELECT * FROM empleados ORDER BY salario DESC;`              |
| `ASC`                  | Ordena en orden ascendente (predeterminado)                     | `SELECT * FROM empleados ORDER BY nombre ASC;`               |
| `DESC`                 | Ordena en orden descendente                                     | `SELECT * FROM empleados ORDER BY salario DESC;`             |
| `UNION`                | Combina los resultados de dos o más consultas                    | `SELECT nombre FROM empleados WHERE departamento = 'Ventas' UNION SELECT nombre FROM empleados WHERE departamento = 'Marketing';` |
| `EXISTS`              | Comprueba si hay filas que cumplen con una condición             | `SELECT * FROM empleados WHERE EXISTS (SELECT * FROM proyectos WHERE empleados.id = proyectos.empleado_id);` |
| `ANY`                  | Compara un valor con cualquier valor de un conjunto              | `SELECT * FROM empleados WHERE salario > ANY (SELECT salario FROM empleados WHERE departamento = 'Ventas');` |
| `ALL`                  | Compara un valor con todos los valores de un conjunto            | `SELECT * FROM empleados WHERE salario > ALL (SELECT salario FROM empleados WHERE departamento = 'Ventas');` |
|`INNER JOIN`||
|`NATURAL JOIN`|es una especificación del InnerJoin. Junta dos tablas donde, la columna que las hace juntables, tiene el mismo nombre en ambas tablas|`SELECT D.Título, D.Año, Concat(P.Nombre, ‘ ‘, P.Apellido) Producer FROM Discos D NATURAL JOIN Productores P `|
