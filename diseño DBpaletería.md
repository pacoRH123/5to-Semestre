@startuml
entity "Clientes" {
  +cliente_id: int [PK]
  nombre: varchar
  direccion: varchar
  telefono: varchar
  email: varchar
}

entity "Productos" {
  +producto_id: int [PK]
  nombre_producto: varchar
  tipo_producto: varchar
  precio: decimal
  stock: int
}

entity "Proveedores" {
  +proveedor_id: int [PK]
  nombre_proveedor: varchar
  direccion_proveedor: varchar
  telefono_proveedor: varchar
}

entity "Compras" {
  +compra_id: int [PK]
  fecha_compra: date
  total_compra: decimal
}

entity "Detalles de compra" {
  +detalle_id: int [PK]
  cantidad: int
  subtotal: decimal
}

entity "Empleados" {
  +empleado_id: int [PK]
  nombre_empleado: varchar
  puesto: varchar
  telefono_empleado: varchar
}

Compras ||--o{ "Detalles de compra" : tiene
Clientes ||--o{ Compras : realiza
Productos ||--o{ "Detalles de compra" : pertenece a
Proveedores ||--o{ Productos : suministra
@enduml