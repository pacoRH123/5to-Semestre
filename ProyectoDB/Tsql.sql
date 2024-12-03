--TRIGGERS

CREATE OR ALTER TRIGGER ActualizarEstadoContenedorReciclado
ON Reciclaje_Contenedor
AFTER INSERT
AS
BEGIN
    DECLARE @ID_contenedor INT;
    
    SELECT @ID_contenedor = ID_contenedor FROM INSERTED;

    UPDATE Contenedor
    SET Estado = 'Uso'
    WHERE ID_contenedor = @ID_contenedor;
END;
---------------------------------------------------------------

CREATE OR ALTER TRIGGER PreventirCompraContenedorDañado
ON Detalle_Compra
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @ID_contenedor INT;
    DECLARE @estado_contenedor VARCHAR(20);

    SELECT @ID_contenedor = ID_contenedor FROM INSERTED;

    SELECT @estado_contenedor = Estado FROM Contenedor WHERE ID_contenedor = @ID_contenedor;

    IF (@estado_contenedor = 'Dañado')
    BEGIN
        PRINT 'No se puede comprar un contenedor con estado "Dañado".';
    END
    ELSE
    BEGIN
        INSERT INTO Detalle_Compra (ID_Proveedor, ID_compra, ID_almacen, ID_contenedor)
        SELECT ID_Proveedor, ID_compra, ID_almacen, ID_contenedor FROM INSERTED;
    END
END;
-------------------------------------------------------------------------

CREATE OR ALTER TRIGGER EvitarDuplicadosProducto
ON Producto
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Producto WHERE ID_contenedor = (SELECT ID_contenedor FROM INSERTED) 
               AND ID_gas = (SELECT ID_gas FROM INSERTED))
    BEGIN
        PRINT 'Error: Ya existe un producto con el mismo contenedor y tipo de gas.';
    END
    ELSE
    BEGIN
        INSERT INTO Producto (ID_producto, ID_gas, ID_contenedor, Precio)
        SELECT ID_producto, ID_gas, ID_contenedor, Precio FROM INSERTED;
    END
END;
------------------------------------------------------------------------------


--Procedimientos Almacenados



CREATE OR ALTER PROCEDURE Reporte_Ventas_Por_Vendedor
    @p_ID_vendedor INT
AS
BEGIN
    SELECT 
		vd.Nombre AS vendedora,
        V.ID_venta, 
        V.Fecha_venta, 
        C.Nombre AS Cliente_Nombre, 
        C.Apellido_P AS Cliente_Apellido_P, 
        C.Apellido_M AS Cliente_Apellido_M,
        SUM(P.Precio) AS Total_Venta
    FROM 
        Venta V
    JOIN Vendedor Vd ON V.ID_vendedor = Vd.ID_vendedor
    JOIN Detalle_Venta DV ON V.ID_venta = DV.ID_venta
    JOIN Cliente C ON DV.ID_cliente = C.ID_cliente
    JOIN Producto P ON DV.ID_producto = P.ID_producto

    WHERE Vd.ID_vendedor = @p_ID_vendedor

    GROUP BY V.ID_venta, V.Fecha_venta, C.Nombre, C.Apellido_P, C.Apellido_M,vd.Nombre

    ORDER BY V.Fecha_venta DESC;
END;

--EXEC Reporte_Ventas_Por_Vendedor @p_ID_vendedor = 5;

-----------------------------------------------------

CREATE OR ALTER PROCEDURE Reporte_Contenedores_Reciclados
AS
BEGIN
    SELECT 
        R.ID_reciclaje, 
        Co.ID_contenedor, 
        Co.Estado AS Contenedor_Estado, 
        P.Nombre AS Proveedor_Nombre, 
        R.Fecha_reciclaje
    FROM Reciclaje_Contenedor R
    JOIN Contenedor Co ON R.ID_contenedor = Co.ID_contenedor
    JOIN Proveedor P ON R.ID_Proveedor = P.ID_Proveedor
    ORDER BY R.Fecha_reciclaje DESC;
END;

--EXEC Reporte_Contenedores_Reciclados;

----------------------------------------------------------------------

CREATE OR ALTER PROCEDURE Reporte_Compras_Por_Sucursal
    @p_ID_sucursal INT
AS
BEGIN
    SELECT 
        C.ID_compra, 
        S.Nombre AS Sucursal_Nombre, 
        P.Nombre AS Proveedor_Nombre, 
        Co.Fecha_deposito AS Fecha_Deposito, 
        Co.Fecha_devolucion AS Fecha_Devolucion,
		DC.Monto
    FROM Compra C
    JOIN Sucursal S ON C.ID_sucursal = S.ID_sucursal
    JOIN Detalle_Compra DC ON C.ID_compra = DC.ID_compra
    JOIN Proveedor P ON DC.ID_Proveedor = P.ID_Proveedor
    JOIN Contenedor Ct ON DC.ID_contenedor = Ct.ID_contenedor
    JOIN Deposito Co ON Ct.ID_deposito = Co.ID_deposito
    WHERE S.ID_sucursal = @p_ID_sucursal
    ORDER BY  C.Fecha DESC;
END;

--EXEC Reporte_Compras_Por_Sucursal @p_ID_sucursal = 2;

----------------------------------------------------------------