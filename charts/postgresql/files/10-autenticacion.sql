CREATE TABLE IF NOT EXISTS autenticacion.usuarios (
    id BIGSERIAL PRIMARY KEY,

    nombre_cifrado TEXT NOT NULL,

    correo_cifrado TEXT NOT NULL,

    correo_indice CHAR(64) NOT NULL UNIQUE,

    contrasena_cifrada TEXT NOT NULL,

    rol VARCHAR(10) NOT NULL
        CHECK (rol IN ('ADMIN', 'CLIENTE')),

    creado_en TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
