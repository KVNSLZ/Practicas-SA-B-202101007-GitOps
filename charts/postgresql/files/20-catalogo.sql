-- ======= Microservicio: Catálogo; Esquema: catalogo =======

CREATE TABLE IF NOT EXISTS catalogo.productos (

    id BIGSERIAL PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    descripcion TEXT,
    precio NUMERIC(10, 2) NOT NULL
        CHECK (precio >= 0),
    stock INTEGER NOT NULL DEFAULT 0
        CHECK (stock >= 0),
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    creado_en TIMESTAMPTZ NOT NULL DEFAULT NOW()

);