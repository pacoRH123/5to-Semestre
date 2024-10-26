@startuml

entity "tProductos" {
  -Id_producto: INT [PK]
  +Id_proveedor: INT [FK]
  +Id_sabor: INT [FK]
  +Id_tamano: INT [FK]
  +Id_Tproducto: INT [FK]
  *Cantidad: INT
  *Precio: INT
}

entity "tTipo_Producto" {
  -Id_Tproducto: INT [PK]
  *Nombre: VARCHAR 
}

entity "tSabor" {
  -Id_sabor: INT [PK]
  *Sabor 
}


entity "tTamano" {
  -Id_tamano: INT [PK]
  *Tamano
}

entity "tVenta" {
  -Id_venta: INT [PK]
  +Id_producto: INT [FK]
  +Id_vendedor: INT [FK]
  +Id_cliente: INT [FK]
  *F_venta: DATE
}


entity "tVendedor" {
  -Id_vendedor: INT [PK]
  *Nombre: VARCHAR
  *Apellido_p: VARCHAR
  *Apellido_M: VARCHAR
  *F_nacimiento: DATE
}

entity "tCliente" {
  -Id_cliente: INT [PK]
  *Nombre: VARCHAR
  *Apellido_p: VARCHAR
  *Apellido_M: VARCHAR
}

tVendedor ||--|{ tVenta 
tProductos}|-||tSabor
tProductos}|--||tTamano
tTipo_Producto||--|{tProductos
tProductos||--|{tVenta
tCliente||-|{tVenta
@enduml
