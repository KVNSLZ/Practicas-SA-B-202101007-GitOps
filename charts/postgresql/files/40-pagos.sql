-- ===== Microservicio: Pagos; Esquema: pagos =====

CREATE TABLE IF NOT EXISTS pagos.pagos (
    id BIGSERIAL PRIMARY KEY,

    -- Pedido al que pertenece el pago
    pedido_id BIGINT NOT NULL,

    -- Monto registrado en el pago
    monto NUMERIC(10, 2) NOT NULL
        CHECK (monto > 0),

    -- Forma en que se realizó el pago
    metodo VARCHAR(20) NOT NULL
        CHECK (
            metodo IN (
                'EFECTIVO',
                'TARJETA',
                'TRANSFERENCIA'
            )
        ),

    -- Estado actual del pago
    estado VARCHAR(20) NOT NULL
        DEFAULT 'APROBADO'
        CHECK (
            estado IN (
                'PENDIENTE',
                'APROBADO',
                'RECHAZADO'
            )
        ),

    -- Fecha de creacion del registro
    creado_en TIMESTAMPTZ NOT NULL DEFAULT NOW()
);