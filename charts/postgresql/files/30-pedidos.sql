-- ===== Microservicio: Pedidos; Esquema: pedidos ======
CREATE TABLE IF NOT EXISTS pedidos.pedidos (
    id BIGSERIAL PRIMARY KEY,

    -- Usuario que realizó el pedido.
    usuario_id BIGINT NOT NULL,

    -- Monto total del pedido.
    total NUMERIC(10, 2) NOT NULL
        CHECK (total >= 0),

    -- Estado actual del pedido.
    estado VARCHAR(20) NOT NULL
        DEFAULT 'PENDIENTE'
        CHECK (
            estado IN (
                'PENDIENTE',
                'PAGADO',
                'CANCELADO'
            )
        ),

    -- Fecha en que se creó.
    creado_en TIMESTAMPTZ NOT NULL DEFAULT NOW()
);