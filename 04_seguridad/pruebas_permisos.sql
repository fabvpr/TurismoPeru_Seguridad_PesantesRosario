USE TURISMOPERU_fvpr;
GO

/* ===== VENDEDOR ===== */
EXECUTE AS USER = 'turismo_vendedor';
SELECT USER_NAME() AS usuario_actual;
GO
SELECT TOP 5 * FROM fvpr.cliente;         -- OK
GO
SELECT TOP 5 * FROM fvpr.reserva;         -- OK
GO
DELETE FROM fvpr.cliente WHERE 1 = 0;     -- RECHAZADO
GO
DELETE FROM fvpr.reserva WHERE 1 = 0;     -- RECHAZADO
GO
SELECT TOP 5 * FROM fvpr.pago;            -- RECHAZADO
GO
CREATE USER usuario_prueba WITHOUT LOGIN; -- RECHAZADO
GO
CREATE ROLE rol_prueba;                   -- RECHAZADO
GO
BACKUP DATABASE TURISMOPERU_fvpr TO DISK = 'NUL';  -- RECHAZADO
GO
REVERT;
GO

/* ===== ANALISTA ===== */
EXECUTE AS USER = 'turismo_analista';
SELECT USER_NAME() AS usuario_actual;
GO
SELECT TOP 5 * FROM fvpr.pago;            -- OK
GO
SELECT TOP 5 * FROM fvpr.paquete;         -- OK
GO
INSERT INTO fvpr.pago DEFAULT VALUES;     -- RECHAZADO
GO
DELETE FROM fvpr.pago WHERE 1 = 0;        -- RECHAZADO
GO
REVERT;
GO
SELECT USER_NAME() AS usuario_final;
GO