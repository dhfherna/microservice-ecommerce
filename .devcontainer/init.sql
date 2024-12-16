CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL CHECK (precio > 0),
    stock INTEGER NOT NULL CHECK (stock >= 0),
    categoria VARCHAR(50),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO productos (nombre, descripcion, precio, stock, categoria) VALUES
('Camiseta básica', 'Camiseta de algodón 100% en color blanco.', 49.99, 100, 'Ropa'),
('Jeans Slim Fit', 'Pantalón vaquero azul ajustado para hombre.', 89.99, 50, 'Ropa'),
('Zapatos deportivos', 'Zapatos deportivos para correr, talla 42.', 129.99, 30, 'Calzado'),
('Mochila de viaje', 'Mochila impermeable con compartimento para laptop.', 59.99, 25, 'Accesorios'),
('Reloj digital', 'Reloj resistente al agua con alarma y cronómetro.', 79.99, 15, 'Electrónica'),
('Auriculares inalámbricos', 'Auriculares Bluetooth con cancelación de ruido.', 149.99, 40, 'Electrónica'),
('Silla ergonómica', 'Silla de oficina ajustable con soporte lumbar.', 299.99, 10, 'Muebles'),
('Teclado mecánico', 'Teclado retroiluminado con switches mecánicos.', 99.99, 20, 'Electrónica'),
('Botella térmica', 'Botella de acero inoxidable para bebidas frías/calientes.', 24.99, 60, 'Accesorios'),
('Libro de programación', 'Libro sobre desarrollo web con JavaScript.', 39.99, 80, 'Libros');
