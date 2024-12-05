USE master;
GO
    
CREATE DATABASE AlecDB;
GO

USE AlecDB;
GO

CREATE TABLE Direccion (
    ID_direccion INT PRIMARY KEY,
    Estado VARCHAR(50) NOT NULL,
    Municipio VARCHAR(50) NOT NULL,
    Calle VARCHAR(50) NOT NULL,
    Codigo_postal VARCHAR(5) NOT NULL
);
GO

CREATE TABLE Tipo_Gas (
    ID_gas INT PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL,
    Descripcion VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Capacidad_Contenedor (
    ID_capacidad INT PRIMARY KEY,
    Capacidad VARCHAR(30) NOT NULL
);
GO

CREATE TABLE Sucursal (
    ID_sucursal INT PRIMARY KEY,
    ID_direccion INT,
    Nombre VARCHAR(50) NOT NULL,
    Telefono VARCHAR(10) NOT NULL,
    CONSTRAINT FK_Direccion_Sucursal FOREIGN KEY (ID_direccion) REFERENCES Direccion(ID_direccion)
);
GO

CREATE TABLE Compra (
    ID_compra INT PRIMARY KEY,
    ID_sucursal INT,
    Fecha DATE NOT NULL,
    CONSTRAINT FK_Sucursal_compra FOREIGN KEY (ID_sucursal) REFERENCES Sucursal(ID_sucursal)
);
GO

CREATE TABLE Vendedor (
    ID_vendedor INT PRIMARY KEY,
    ID_direccion INT,
    ID_sucursal INT,
    Nombre VARCHAR(30) NOT NULL,
    Apellido_P VARCHAR(30) NOT NULL,
    Apellido_M VARCHAR(30),
    Telefono VARCHAR(10) NOT NULL,
    Correo VARCHAR(50) NOT NULL,
    CONSTRAINT FK_Direccion FOREIGN KEY (ID_direccion) REFERENCES Direccion(ID_direccion),
    CONSTRAINT FK_Sucursal FOREIGN KEY (ID_sucursal) REFERENCES Sucursal(ID_sucursal)
);
GO

CREATE TABLE Cliente (
    ID_cliente INT PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL,
    Apellido_P VARCHAR(30),
    Apellido_M VARCHAR(30),
    Tipo_persona VARCHAR(10) NOT NULL, --Fisica/Moral
    CONSTRAINT ck_Tipo_persona_cliente CHECK (Tipo_persona IN ('Fisica', 'Moral'))
);
GO

CREATE TABLE Venta (
    ID_venta INT PRIMARY KEY,
    ID_vendedor INT,
    Fecha_venta DATE NOT NULL,
    CONSTRAINT FK_Vendedor FOREIGN KEY (ID_vendedor) REFERENCES Vendedor(ID_vendedor)
);
GO

CREATE TABLE Deposito (
    ID_deposito INT PRIMARY KEY,
    Fecha_deposito DATE NOT NULL,
    Fecha_devolucion DATE,
    Estado VARCHAR(15) NOT NULL, --activo/finalizado
    CONSTRAINT ck_estado_deposito CHECK (Estado IN ('Activo', 'Finalizado'))
);
GO

CREATE TABLE Proveedor (
    ID_Proveedor INT PRIMARY KEY,
    ID_gas INT,
    Nombre VARCHAR(30) NOT NULL,
    Telefono VARCHAR(10) NOT NULL,
    Correo VARCHAR(30) NOT NULL,
    CONSTRAINT FK_Gas_provedor FOREIGN KEY (ID_gas) REFERENCES Tipo_Gas (ID_gas)
);
GO

CREATE TABLE Contenedor (
    ID_contenedor INT PRIMARY KEY,
    ID_capacidad INT,
    ID_deposito INT NULL,
    Fecha_ultimo_uso DATE NOT NULL,
    Estado VARCHAR(6) NOT NULL, --uso/vacio/dañado
    CONSTRAINT FK_Capacidad FOREIGN KEY (ID_capacidad) REFERENCES Capacidad_Contenedor (ID_capacidad),
    CONSTRAINT FK_Deposito FOREIGN KEY (ID_deposito) REFERENCES Deposito(ID_deposito),
    CONSTRAINT ck_estado_Contenedor CHECK (Estado IN ('Uso', 'Vacio', 'Dañado'))
);
GO

CREATE TABLE Producto (
    ID_producto INT PRIMARY KEY,
    ID_gas INT,
    ID_contenedor INT NULL,
    Precio NUMERIC(10, 2),
    CONSTRAINT FK_Gas_producto FOREIGN KEY (ID_gas) REFERENCES Tipo_Gas (ID_gas),
    CONSTRAINT FK_Contenedor_producto FOREIGN KEY (ID_contenedor) REFERENCES Contenedor(ID_contenedor)
);
GO

CREATE TABLE Detalle_Venta (
    ID_detalle_venta INT PRIMARY KEY,
    ID_producto INT,
    ID_cliente INT,
    ID_venta INT,
    Tipo_venta VARCHAR(10) NOT NULL, --minorista/mayorista
    Factura VARCHAR(4) NOT NULL, --si /no 
    CONSTRAINT FK_producto_DV FOREIGN KEY (ID_producto) REFERENCES Producto (ID_producto),
    CONSTRAINT FK_Cliente_DV FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente),
    CONSTRAINT FK_Venta_DV FOREIGN KEY (ID_venta) REFERENCES Venta(ID_venta),
    CONSTRAINT ck_Tipo_persona_DV CHECK (Tipo_venta IN ('Minorista', 'Mayorista')),
    CONSTRAINT ck_Factura_DV CHECK (Factura IN ('Si', 'No'))
);
GO

CREATE TABLE RecepcionContenedor (
    ID_recepcion INT PRIMARY KEY,
    ID_contenedor INT,
    ID_sucursal INT,
    Fecha_recepcion DATE NOT NULL,
    CONSTRAINT FK_Contenedor_recepcion FOREIGN KEY (ID_contenedor) REFERENCES Contenedor(ID_contenedor),
    CONSTRAINT FK_SucursaL_recepcion FOREIGN KEY (ID_sucursal) REFERENCES Sucursal(ID_sucursal)
);
GO

CREATE TABLE Reciclaje_Contenedor (
    ID_reciclaje INT PRIMARY KEY,
    ID_contenedor INT,
    ID_Proveedor INT,
    Fecha_reciclaje DATE NOT NULL,
    CONSTRAINT FK_Contenedor_reciclaje FOREIGN KEY (ID_contenedor) REFERENCES Contenedor(ID_contenedor),
    CONSTRAINT FK_Proveedor_recepcion FOREIGN KEY (ID_Proveedor) REFERENCES Proveedor(ID_Proveedor)
);
GO

CREATE TABLE Almacen (
    ID_almacen INT PRIMARY KEY,
    ID_sucursal INT,
    CONSTRAINT FK_Sucursal_Almacen FOREIGN KEY (ID_sucursal) REFERENCES Sucursal(ID_sucursal)
);
GO

CREATE TABLE Detalle_Compra (
    ID_detalle_Compra INT PRIMARY KEY,
    ID_Proveedor INT,
    ID_compra INT,
    ID_almacen INT,
    ID_contenedor INT,
    Monto NUMERIC(10,2) NOT NULL,
    CONSTRAINT FK_Proveedor_DC FOREIGN KEY (ID_Proveedor) REFERENCES Proveedor (ID_Proveedor),
    CONSTRAINT FK_Compra_DC FOREIGN KEY (ID_compra) REFERENCES Compra(ID_compra),
    CONSTRAINT FK_Almacen_DetalleCompra FOREIGN KEY (ID_almacen) REFERENCES Almacen(ID_almacen),
    CONSTRAINT FK_Contenedor_DetalleCompra FOREIGN KEY (ID_contenedor) REFERENCES Contenedor(ID_contenedor)
);
GO

