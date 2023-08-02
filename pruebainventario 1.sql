use inventario;
-- Tabla de Productos
CREATE TABLE Productos (
    ID_Producto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Producto VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Precio_Unitario DECIMAL(10, 2) NOT NULL,
    Cantidad_Disponible INT NOT NULL,
    Fecha_Creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Fecha_Actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Tabla de Categorías
CREATE TABLE Categorias (
    ID_Categoria INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Categoria VARCHAR(50) NOT NULL
);

-- Tabla de Ubicaciones
CREATE TABLE Ubicaciones (
    ID_Ubicacion INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Ubicacion VARCHAR(50) NOT NULL,
    Descripcion_Ubicacion TEXT
);

-- Tabla de Movimientos de Inventario
CREATE TABLE MovimientosInventario (
    ID_Movimiento INT AUTO_INCREMENT PRIMARY KEY,
    ID_Producto INT NOT NULL,
    Tipo_Movimiento ENUM('Entrada', 'Salida') NOT NULL,
    Cantidad INT NOT NULL,
    Fecha_Movimiento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
);
