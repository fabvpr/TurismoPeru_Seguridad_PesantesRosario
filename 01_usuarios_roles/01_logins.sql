USE master;
GO
-- La contraseña real NO se sube a GitHub. Ver 01_logins.local.sql (ignorado por Git).
IF NOT EXISTS (SELECT 1 FROM sys.server_principals WHERE name = 'turismo_admin')
    CREATE LOGIN turismo_admin    WITH PASSWORD = '<Administrador>', DEFAULT_DATABASE = TurismoPeru_fvpr, CHECK_POLICY = ON, CHECK_EXPIRATION = OFF;
IF NOT EXISTS (SELECT 1 FROM sys.server_principals WHERE name = 'turismo_vendedor')
    CREATE LOGIN turismo_vendedor WITH PASSWORD = '<Vendedor>', DEFAULT_DATABASE = TurismoPeru_fvpr, CHECK_POLICY = ON, CHECK_EXPIRATION = OFF;
IF NOT EXISTS (SELECT 1 FROM sys.server_principals WHERE name = 'turismo_analista')
    CREATE LOGIN turismo_analista WITH PASSWORD = '<Analista>', DEFAULT_DATABASE = TurismoPeru_fvpr, CHECK_POLICY = ON, CHECK_EXPIRATION = OFF;
GO