-- =======  Base de datos de la Práctica 4 =======

-- Cada microservicio tendrá su propio esquema lógico dentro de la misma instancia PostgreSQL

-- al final me quedare con la autenticacion como un microservicio, y los otros 3 si son nuevos, ojala si sea asi jaja 
-- porque sino me va a funar el aux jaja pero ojala todo en orden verdad 
CREATE SCHEMA IF NOT EXISTS autenticacion;
CREATE SCHEMA IF NOT EXISTS catalogo;
CREATE SCHEMA IF NOT EXISTS pedidos;
CREATE SCHEMA IF NOT EXISTS pagos;
