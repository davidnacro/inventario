USE inventario;

-- Rellenar la tabla de Categorías
INSERT INTO Categorias (Nombre_Categoria)
VALUES ('Guitarras'),
       ('Teclados'),
       ('Baterías'),
       ('Bajos'),
       ('Instrumentos de Viento');

-- Rellenar la tabla de Ubicaciones
INSERT INTO Ubicaciones (Nombre_Ubicacion, Descripcion_Ubicacion)
VALUES ('Almacén 1', 'Almacén principal'),
       ('Almacén 2', 'Almacén secundario'),
       ('Tienda', 'En exhibición para alquiler y venta');

-- Rellenar la tabla de Productos
INSERT INTO Productos (Nombre_Producto, Descripcion, Precio_Unitario, Cantidad_Disponible)
VALUES ('Guitarra Eléctrica Fender Stratocaster', 'Guitarra eléctrica de cuerpo sólido con acabado sunburst', 800.00, 10),
       ('Teclado Yamaha PSR-E363', 'Teclado portátil de 61 teclas con funciones avanzadas', 350.00, 5),
       ('Batería Pearl Export Series', 'Batería acústica de 5 piezas con platillos incluidos', 1200.00, 3),
       ('Bajo Fender Precision Bass', 'Bajo eléctrico de 4 cuerdas con cuerpo de aliso', 700.00, 8),
       ('Saxofón Alto Yamaha YAS-280', 'Saxofón alto de la serie Yamaha 280', 950.00, 2);

-- Rellenar la tabla de Movimientos de Inventario
INSERT INTO MovimientosInventario (ID_Producto, Tipo_Movimiento, Cantidad)
VALUES (1, 'Entrada', 5),
       (2, 'Entrada', 3),
       (3, 'Entrada', 2),
       (1, 'Salida', 2),
       (4, 'Entrada', 10),
       (5, 'Salida', 1);

