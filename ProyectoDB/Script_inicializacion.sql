INSERT INTO Direccion (ID_direccion, Estado, Municipio, Calle, Codigo_postal)
VALUES
(1, 'Ciudad de México', 'Roma Norte', 'Av. Oaxaca', '06700'),
(2, 'Guadalajara', 'Zapopan', 'Av. Vallarta', '45000'),
(3, 'Monterrey', 'Centro', 'Calle 5', '64000'),
(4, 'Ciudad de México', 'Polanco', 'Av. Presidente Masaryk', '11560'),
(5, 'Guadalajara', 'La Estancia', 'Calle Mariano Otero', '45050'),
(6, 'Monterrey', 'San Nicolás', 'Avenida Universidad', '66480'),
(7, 'Ciudad de México', 'Santa Fe', 'Av. Vasco de Quiroga', '01210'),
(8, 'Guadalajara', 'Zapopan', 'Calle Hidalgo', '45030'),
(9, 'Ciudad de México', 'Coyoacán', 'Calle de los Leones', '04000'),
(10, 'Guadalajara', 'Tlaquepaque', 'Calle Juárez', '45600'),
(11, 'Monterrey', 'San Pedro', 'Avenida Lázaro Cárdenas', '66200'),
(12, 'Ciudad de México', 'Xochimilco', 'Avenida México', '16000'),
(13, 'Guadalajara', 'Tlajomulco de Zúñiga', 'Calle Colón', '45640'),
(14, 'Monterrey', 'San Nicolás', 'Calle de las Flores', '66460'),
(15, 'Ciudad de México', 'Iztapalapa', 'Calle 12', '09800'),
(16, 'Guadalajara', 'Zapopan', 'Avenida 8 de Julio', '45080');

INSERT INTO Tipo_Gas (ID_gas, Nombre, Descripcion)
VALUES
(1, 'Oxígeno', 'Gas esencial para la respiración y procesos de combustión'),
(2, 'Nitrógeno', 'Gas inerte utilizado en la industria y en la preservación de alimentos'),
(3, 'Hidrógeno', 'Gas inflamable utilizado en la industria y como combustible'),
(4, 'Acetileno', 'Gas utilizado principalmente en soldaduras y cortes de metales'),
(5, 'Dióxido de Carbono', 'Gas utilizado en bebidas carbonatadas, extintores y en la industria alimentaria'),
(6, 'Argón', 'Gas inerte utilizado en soldaduras y otros procesos industriales'),
(7, 'Helio', 'Gas inerte utilizado en criogenia y para inflar globos'),
(8, 'Aire Comprimido', 'Mezcla de gases utilizada en herramientas neumáticas y otros procesos industriales');

INSERT INTO Capacidad_Contenedor (ID_capacidad, Capacidad)
VALUES
(1, '1 Toneladas'),
(2, '2 Toneladas'),
(3, '3 Toneladas'),
(4, '4 Toneladas'),
(5, '5 Toneladas'),
(6, '10 Toneladas'),
(7, '6 Toneladas'),
(8, '7 Toneladas');

INSERT INTO Sucursal (ID_sucursal, ID_direccion, Nombre, Telefono)
VALUES
(1, 1, 'Sucursal Roma', '5551234567'),
(2, 2, 'Sucursal Zapopan Vallarta', '3331234567'),
(3, 3, 'Sucursal Monterrey', '8181234567'),
(4, 4, 'Sucursal Polanco', '5558765432'),
(5, 5, 'Sucursal Estancia', '3338765432'),
(6, 6, 'Sucursal San Nicolás', '8188765432'),
(7, 7, 'Sucursal Santa Fe', '5556543210'),
(8, 8, 'Sucursal Zapopan 8 de julio', '3336543210');

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
(1, 9, 1, 'Juan', 'Pérez', 'González', '5559876543', 'juanperez@gmail.com'),
(2, 10, 2, 'Ana', 'López', 'Martínez', '3339876543', 'analopes@gmail.com'),
(3, 11, 3, 'Carlos', 'Ramírez', 'Hernández', '8189876543', 'carlosramirez@gmail.com'),
(4, 12, 4, 'David', 'Jiménez', 'Flores', '5552345678', 'davidjimenez@gmail.com'),
(5, 13, 5, 'Laura', 'García', 'Pérez', '3332345678', 'lauragarcia@gmail.com'),
(6, 14, 6, 'Felipe', 'Sánchez', 'Morales', '8182345678', 'felipesanchez@gmail.com'),
(7, 15, 7, 'Marta', 'Vázquez', 'Gutiérrez', '5553456789', 'martavazquez@gmail.com'),
(8, 16, 8, 'Luis', 'Martínez', 'Alvarado', '3333456789', 'luismartinez@gmail.com');

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
(8, 8, '2024-11-30'),
(9, 1, '2024-12-01'),
(10, 2, '2024-12-03'),
(11, 3, '2024-12-04'),
(12, 4, '2024-12-05'),
(13, 2, '2024-12-06'),
(14, 2, '2024-12-07'),
(15, 3, '2024-12-08'),
(16, 2, '2024-12-09');

INSERT INTO Deposito (ID_deposito, Fecha_deposito, Fecha_devolucion, Estado)
VALUES
(1, '2024-11-01', NULL, 'Activo'),
(2, '2024-11-05', NULL, 'Activo'),
(3, '2024-11-10', '2024-11-20', 'Finalizado'),
(4, '2024-11-12', NULL, 'Activo'),
(5, '2024-11-13', '2024-11-27', 'Finalizado'),
(6, '2024-11-14', NULL, 'Activo'),
(7, '2024-11-15', '2024-11-29', 'Finalizado'),
(8, '2024-11-16', NULL, 'Activo'),
(9, '2024-11-17', '2024-12-01', 'Finalizado'),
(10, '2024-11-18', '2024-12-02', 'Finalizado'),
(11, '2024-11-19', '2024-12-03', 'Finalizado'),
(12, '2024-11-20', '2024-12-04', 'Finalizado'),
(13, '2024-11-21', '2024-12-05', 'Finalizado'),
(14, '2024-11-22', '2024-12-06', 'Finalizado'),
(15, '2024-11-23', '2024-12-07', 'Finalizado'),
(16, '2024-11-24', '2024-12-08', 'Finalizado'),
(17, '2024-11-25', '2024-12-09', 'Finalizado'),
(18, '2024-11-26', '2024-12-10', 'Finalizado'),
(19, '2024-11-27', '2024-12-11', 'Finalizado'),
(20, '2024-11-28', '2024-12-12', 'Finalizado'),
(21, '2024-11-29', '2024-12-13', 'Finalizado'),
(22, '2024-11-30', '2024-12-14', 'Finalizado'),
(23, '2024-12-01', '2024-12-15', 'Finalizado'),
(24, '2024-12-02', '2024-12-16', 'Finalizado'),
(25, '2024-12-03', '2024-12-17', 'Finalizado'),
(26, '2024-12-04', '2024-12-18', 'Finalizado'),
(27, '2024-12-05', '2024-12-19', 'Finalizado'),
(28, '2024-12-06', '2024-12-20', 'Finalizado'),
(29, '2024-12-07', NULL, 'Activo'),
(30, '2024-12-08', NULL, 'Activo'),
(31, '2024-12-09', '2024-12-23', 'Finalizado'),
(32, '2024-12-10', NULL, 'Activo'),
(33, '2024-12-11', '2024-12-24', 'Finalizado'),
(34, '2024-12-12', NULL, 'Activo'),
(35, '2024-12-13', '2024-12-27', 'Finalizado'),
(36, '2024-12-14', '2024-12-28', 'Finalizado');


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
(3, 3, 3, '2024-11-10', 'Uso'),
(4, 6, 4, '2024-11-12', 'Uso'),
(5, 5, 5, '2024-11-14', 'Uso'),
(6, 6, 6, '2024-11-16', 'Uso'),
(7, 6, 7, '2024-11-18', 'Uso'),
(8, 8, 8, '2024-11-20', 'Uso'),
(9, 4, 9, '2024-11-12', 'Vacio'),
(10, 5, 10, '2024-11-13', 'Vacio'),
(11, 6, 11, '2024-11-14', 'Dañado'),
(12, 7, 12, '2024-11-15', 'Vacio'),
(13, 8, 13, '2024-11-16', 'Vacio'),
(14, 4, 14, '2024-11-17', 'Vacio'),
(15, 5, 15, '2024-11-18', 'Dañado'),
(16, 6, 16, '2024-11-19', 'Vacio'),
(17, 7, 17, '2024-11-20', 'Vacio'),
(18, 8, 18, '2024-11-21', 'Dañado'),
(19, 4, 19, '2024-11-22', 'Vacio'),
(20, 5, 20, '2024-11-23', 'Vacio'),
(21, 6, 21, '2024-11-24', 'Vacio'),
(22, 7, 22, '2024-11-25', 'Vacio'),
(23, 8, 23, '2024-11-26', 'Vacio'),
(24, 4, 24, '2024-11-27', 'Dañado'),
(25, 5, 25, '2024-11-28', 'Vacio'),
(26, 6, 26, '2024-11-29', 'Vacio'),
(27, 7, 27, '2024-11-30', 'Dañado'),
(28, 8, 28, '2024-12-01', 'Vacio'),

(29, 5, 29, '2024-12-02', 'Uso'),
(30, 6, 30, '2024-12-03', 'Uso'),
(31, 7, 31, '2024-12-04', 'Vacio'),
(32, 8, 32, '2024-12-05', 'Uso'),
(33, 4, 33, '2024-12-06', 'Dañado'),
(34, 5, 34, '2024-12-07', 'Uso'),
(35, 6, 35, '2024-12-08', 'Uso'),
(36, 7, 36, '2024-12-09', 'Dañado');


INSERT INTO Producto (ID_producto, ID_gas, ID_contenedor, Precio)
VALUES
(1, 1, 1, 500.00),
(2, 2, 2, 750.00),
(3, 3, 3, 1100.00),
(4, 4, 4, 450.00),
(5, 5, 5, 650.00),
(6, 6, 6, 800.00),
(7, 7, 7, 1000.00),
(8, 2, 8, 1200.00),

(9, 1, 29, 500.00),
(10, 2, 30, 750.00),
(11, 3, 31, 1100.00),
(12, 4, 32, 450.00),
(13, 5, 33, 650.00),
(14, 1, 34, 500.00),
(15, 1, 35, 500.00),
(16, 4, 36, 1300.00);

INSERT INTO Detalle_Venta (ID_detalle_venta, ID_producto, ID_cliente, ID_venta, Tipo_venta,Factura)
VALUES
(1, 1, 1, 1, 'Minorista','No'),
(2, 2, 2, 2, 'Mayorista','Si'),
(3, 3, 3, 3, 'Minorista','No'),
(4, 4, 4, 4, 'Minorista','NO'),
(5, 5, 5, 5, 'Mayorista','Si'),
(6, 6, 6, 6, 'Minorista','No'),
(7, 7, 7, 7, 'Mayorista','Si'),
(8, 8, 8, 8, 'Minorista','NO'),

(9, 9, 5, 9, 'Mayorista', 'Si'),
(10, 10, 2, 10, 'Minorista', 'No'),
(11, 11, 3, 11, 'Mayorista', 'Si'),
(12, 12, 2, 12, 'Minorista', 'No'),
(13, 13, 1, 13, 'Mayorista', 'Si'),
(14, 14, 6, 14, 'Minorista', 'No'),
(15, 15, 5, 15, 'Mayorista', 'Si'),
(16, 16, 4, 16, 'Minorista', 'No');

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
(5, 27, 6, '2024-11-14'),
(6, 33, 5, '2024-11-15'),
(7, 36, 6, '2024-11-14');

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
(1, 1, 1, 1, 1, 20000.00),
(2, 2, 2, 2, 4, 40000.00),
(3, 3, 3, 3, 6, 10000.00),
(4, 4, 4, 4, 7, 50000.00);
