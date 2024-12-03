INSERT INTO Direccion (ID_direccion, Estado, Municipio, Calle, Codigo_postal)
VALUES
(1, 'Ciudad de México', 'Roma Norte', 'Av. Oaxaca', '06700'),
(2, 'Guadalajara', 'Zapopan', 'Av. Vallarta', '45000'),
(3, 'Monterrey', 'Centro', 'Calle 5', '64000'),
(4, 'Ciudad de México', 'Polanco', 'Av. Presidente Masaryk', '11560'),
(5, 'Guadalajara', 'La Estancia', 'Calle Mariano Otero', '45050'),
(6, 'Monterrey', 'San Nicolás', 'Avenida Universidad', '66480'),
(7, 'Ciudad de México', 'Santa Fe', 'Av. Vasco de Quiroga', '01210'),
(8, 'Guadalajara', 'Zapopan', 'Calle Hidalgo', '45030');

INSERT INTO Tipo_Gas (ID_gas, Nombre, Descripcion)
VALUES
(1, 'Gas LP', 'Gas licuado de petróleo'),
(2, 'Gas Natural', 'Gas obtenido de fuentes naturales'),
(3, 'Gas Industrial', 'Gas utilizado para procesos industriales'),
(4, 'Gas Butano', 'Gas utilizado para cocinas y calefacción'),
(5, 'Gas Propano', 'Gas utilizado para calefacción y cocinas domésticas'),
(6, 'Gas Etileno', 'Gas utilizado en la industria química'),
(7, 'Gas Argón', 'Gas utilizado en soldaduras y otros procesos industriales');

INSERT INTO Capacidad_Contenedor (ID_capacidad, Capacidad)
VALUES
(1, '1 Toneladas'),
(2, '2 Toneladas'),
(3, '3 Toneladas'),
(4, '4 Toneladas'),
(5, '5 Toneladas'),
(6, '10 Toneladas'),
(7, '15 Toneladas'),
(8, '20 Toneladas');

INSERT INTO Sucursal (ID_sucursal, ID_direccion, Nombre, Telefono)
VALUES
(1, 1, 'Sucursal Roma', '5551234567'),
(2, 2, 'Sucursal Zapopan', '3331234567'),
(3, 3, 'Sucursal Monterrey', '8181234567'),
(4, 4, 'Sucursal Polanco', '5558765432'),
(5, 5, 'Sucursal Estancia', '3338765432'),
(6, 6, 'Sucursal San Nicolás', '8188765432'),
(7, 7, 'Sucursal Santa Fe', '5556543210'),
(8, 8, 'Sucursal Zapopan', '3336543210');

INSERT INTO Compra (ID_compra, ID_sucursal, Fecha)
VALUES
(1, 1, '2024-11-01'),
(2, 2, '2024-11-05'),
(3, 2, '2024-11-10'),
(4, 4, '2024-11-20'),
(5, 5, '2024-11-22'),
(6, 6, '2024-11-24'),
(7, 7, '2024-11-28'),
(8, 8, '2024-11-30');

INSERT INTO Vendedor (ID_vendedor, ID_direccion, ID_sucursal, Nombre, Apellido_P, Apellido_M, Telefono, Correo)
VALUES
(1, 1, 1, 'Juan', 'Pérez', 'González', '5559876543', 'juanperez@gmail.com'),
(2, 2, 2, 'Ana', 'López', 'Martínez', '3339876543', 'analopes@gmail.com'),
(3, 3, 3, 'Carlos', 'Ramírez', 'Hernández', '8189876543', 'carlosramirez@gmail.com'),
(4, 4, 4, 'David', 'Jiménez', 'Flores', '5552345678', 'davidjimenez@gmail.com'),
(5, 5, 5, 'Laura', 'García', 'Pérez', '3332345678', 'lauragarcia@gmail.com'),
(6, 6, 6, 'Felipe', 'Sánchez', 'Morales', '8182345678', 'felipesanchez@gmail.com'),
(7, 7, 7, 'Marta', 'Vázquez', 'Gutiérrez', '5553456789', 'martavazquez@gmail.com'),
(8, 8, 8, 'Luis', 'Martínez', 'Alvarado', '3333456789', 'luismartinez@gmail.com');

INSERT INTO Cliente (ID_cliente, Nombre, Apellido_P, Apellido_M, Tipo_persona)
VALUES
(1, 'Pedro', 'Gómez', 'Sánchez', 'Fisica'),
(2, 'Corporativo XYZ', NULL, NULL, 'Moral'),
(3, 'María', 'López', 'Castro', 'Fisica'),
(4, 'José', 'Ramírez', 'López', 'Fisica'),
(5, 'Comercial ABC', NULL, NULL, 'Moral'),
(6, 'Lucía', 'Mendoza', 'Pérez', 'Fisica'),
(7, 'Grupo XYZ', NULL, NULL, 'Moral'),
(8, 'Carlos', 'Torres', 'González', 'Fisica');

INSERT INTO Venta (ID_venta, ID_vendedor, Fecha_venta)
VALUES
(1, 1, '2024-11-02'),
(2, 2, '2024-11-06'),
(3, 3, '2024-11-11'),
(4, 5, '2024-11-21'),
(5, 5, '2024-11-23'),
(6, 6, '2024-11-25'),
(7, 7, '2024-11-29'),
(8, 8, '2024-11-30');

INSERT INTO Deposito (ID_deposito, Fecha_deposito, Fecha_devolucion, Estado)
VALUES
(1, '2024-11-01', '2024-11-15', 'Activo'),
(2, '2024-11-05', '2024-11-19', 'Activo'),
(3, '2024-11-10', '2024-11-20', 'Finalizado'),
(4, '2024-11-12', '2024-11-26', 'Activo'),
(5, '2024-11-13', '2024-11-27', 'Finalizado'),
(6, '2024-11-14', '2024-11-28', 'Activo'),
(7, '2024-11-15', '2024-11-29', 'Finalizado'),
(8, '2024-11-16', '2024-11-30', 'Activo');

INSERT INTO Proveedor (ID_Proveedor, ID_gas, Nombre, Telefono, Correo)
VALUES
(1, 1, 'GasPro', '5551112233', 'contacto@gaspro.com'),
(2, 2, 'Gas Natural S.A.', '3331112233', 'ventas@gnatural.com'),
(3, 3, 'Gas Industrial Mx', '8181112233', 'contacto@gimex.com'),
(4, 4, 'GasPlus', '5554567890', 'contacto@gasplus.com'),
(5, 5, 'NaturalGas', '3334567890', 'ventas@naturalgas.com'),
(6, 6, 'IndustriaGas', '8184567890', 'info@industriagas.com'),
(7, 7, 'ArgonPro', '5556547890', 'contacto@argonpro.com'),
(8, 5, 'GasTech', '3336547890', 'soporte@gastech.com');

INSERT INTO Contenedor (ID_contenedor, ID_capacidad, ID_deposito, Fecha_ultimo_uso, Estado)
VALUES
(1, 6, 1, '2024-11-01', 'Uso'),
(2, 2, 2, '2024-11-05', 'Uso'),
(3, 3, NULL, '2024-11-10', 'Uso'),
(4, 6, 4, '2024-11-12', 'Uso'),
(5, 5, 5, '2024-11-14', 'Uso'),
(6, 6, 6, '2024-11-16', 'Uso'),
(7, 6, 7, '2024-11-18', 'Uso'),
(8, 8, 8, '2024-11-20', 'Uso'),
(9, 4, 4, '2024-11-12', 'Vacio'),
(10, 5, 5, '2024-11-13', 'Vacio'),
(11, 6, 6, '2024-11-14', 'Dañado'),
(12, 7, 7, '2024-11-15', 'Vacio'),
(13, 8, 8, '2024-11-16', 'Vacio'),
(14, 4, 4, '2024-11-17', 'Vacio'),
(15, 5, 5, '2024-11-18', 'Dañado'),
(16, 6, 6, '2024-11-19', 'Vacio'),
(17, 7, 7, '2024-11-20', 'Vacio'),
(18, 8, 8, '2024-11-21', 'Dañado'),
(19, 4, 4, '2024-11-22', 'Vacio'),
(20, 5, 5, '2024-11-23', 'Vacio'),
(21, 6, 6, '2024-11-24', 'Vacio'),
(22, 7, 7, '2024-11-25', 'Vacio'),
(23, 8, 8, '2024-11-26', 'Vacio'),
(24, 4, 4, '2024-11-27', 'Dañado'),
(25, 5, 5, '2024-11-28', 'Vacio'),
(26, 6, 6, '2024-11-29', 'Vacio'),
(27, 7, 7, '2024-11-30', 'Dañado'),
(28, 8, 8, '2024-12-01', 'Vacio');


INSERT INTO Producto (ID_producto, ID_gas, ID_contenedor, Precio)
VALUES
(1, 1, 1, 500.00),
(2, 2, 2, 700.00),
(3, 3, 3, 1000.00),
(4, 4, 4, 400.00),
(5, 5, 5, 600.00),
(6, 6, 6, 800.00),
(7, 7, 7, 1000.00),
(8, 2, 8, 1200.00);

INSERT INTO Detalle_Venta (ID_detalle_venta, ID_producto, ID_cliente, ID_venta, Tipo_venta,Factura)
VALUES
(1, 1, 1, 1, 'Minorista','No'),
(2, 2, 2, 2, 'Mayorista','Si'),
(3, 3, 3, 3, 'Minorista','No'),
(4, 4, 4, 4, 'Minorista','NO'),
(5, 5, 5, 5, 'Mayorista','Si'),
(6, 6, 6, 6, 'Minorista','No'),
(7, 7, 7, 7, 'Mayorista','Si'),
(8, 8, 8, 8, 'Minorista','NO');

INSERT INTO RecepcionContenedor (ID_recepcion, ID_contenedor, ID_sucursal, Fecha_recepcion)
VALUES
(1, 10, 2, '2024-11-05'),
(2, 13, 3, '2024-11-10'),
(3, 16, 5, '2024-11-14'),
(4, 20, 8, '2024-11-20');

INSERT INTO Reciclaje_Contenedor (ID_reciclaje, ID_contenedor, ID_Proveedor, Fecha_reciclaje)
VALUES

(1, 11, 3, '2024-11-25'),
(2, 15, 8, '2024-11-29'),
(3, 18, 4, '2024-11-12'),
(4, 24, 5, '2024-11-13'),
(5, 27, 6, '2024-11-14');

INSERT INTO Almacen (ID_almacen, ID_sucursal)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

INSERT INTO Detalle_Compra (ID_detalle_Compra, ID_Proveedor, ID_compra, ID_almacen, ID_contenedor,monto)
VALUES
(1, 1, 1, 1, 1, 10000.00),
(2, 2, 2, 2, 4, 10000.00),
(3, 3, 3, 3, 6, 10000.00),
(4, 4, 4, 4, 7, 10000.00);
