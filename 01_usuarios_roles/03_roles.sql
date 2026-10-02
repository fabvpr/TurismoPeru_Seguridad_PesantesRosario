USE TurismoPeru_fvpr;
GO
CREATE ROLE rol_vendedor;
CREATE ROLE rol_analista;
GO
ALTER ROLE rol_vendedor ADD MEMBER turismo_vendedor;
ALTER ROLE rol_analista ADD MEMBER turismo_analista;
ALTER ROLE db_owner     ADD MEMBER turismo_admin;
GO