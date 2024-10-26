@startuml

entity "tProducto" {
  -Id_producto: INT [PK]
  +Id_sabor: INT [FK]
  +Id_tamano: INT [FK]
  +Id_Tproducto: INT [FK]
  *Cantidad: INT
  *Precio: NUMERIC
}

entity "tTipo_Producto" {
  -Id_Tproducto: INT [PK]
  *Nombre: VARCHAR 
}

entity "tSabor" {
  -Id_sabor: INT [PK]
  *Sabor: VARCHAR
}


entity "tTamano" {
  -Id_tamano: INT [PK]
  *Tamano: VARCHAR
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
  *Apellido_m: VARCHAR
  *F_nacimiento: DATE
}

entity "tCliente" {
  -Id_cliente: INT [PK]
  *Nombre: VARCHAR
  *Apellido_p: VARCHAR
  *Apellido_m: VARCHAR
}

tVendedor ||--|{ tVenta 
tProducto}|-||tSabor
tProducto}|--||tTamano
tTipo_Producto||--|{tProducto
tProducto||--|{tVenta
tCliente||-|{tVenta
@enduml
