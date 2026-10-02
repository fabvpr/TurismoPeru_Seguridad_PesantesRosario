USE TURISMOPERU_fvpr;
GO

/* ===== rol_vendedor ===== */
GRANT SELECT, INSERT ON fvpr.cliente     TO rol_vendedor;
GRANT SELECT, INSERT ON fvpr.reserva     TO rol_vendedor;
GRANT SELECT         ON fvpr.alojamiento TO rol_vendedor;
GRANT SELECT         ON fvpr.habitacion  TO rol_vendedor;
DENY  DELETE         ON fvpr.cliente     TO rol_vendedor;
DENY  DELETE         ON fvpr.reserva     TO rol_vendedor;

/* ===== rol_analista (solo lectura) ===== */
GRANT SELECT ON fvpr.cliente         TO rol_analista;
GRANT SELECT ON fvpr.reserva         TO rol_analista;
GRANT SELECT ON fvpr.pago            TO rol_analista;
GRANT SELECT ON fvpr.alojamiento     TO rol_analista;
GRANT SELECT ON fvpr.habitacion      TO rol_analista;
GRANT SELECT ON fvpr.paquete         TO rol_analista;
GRANT SELECT ON fvpr.lugar_turistico TO rol_analista;
DENY INSERT, UPDATE, DELETE ON SCHEMA::fvpr TO rol_analista;
GO