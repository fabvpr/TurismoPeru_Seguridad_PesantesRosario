USE TURISMOPERU_fvpr;
GO

-- 1. Backup nativo SQL Server (.bak)
BACKUP DATABASE TURISMOPERU_fvpr
TO DISK = 'C:\Backups\TurismoPeru_fvpr_Full.bak'
WITH FORMAT,
     MEDIANAME = 'TurismoPeru_Full_Backup',
     NAME = 'Backup Completo de TURISMOPERU_fvpr';
GO

/*
-------------------------------------------------------------------------------
 COMANDO SQLPACKAGE PARA EXPORTAR EN FORMATO .bacpac (Solicitado en guía):
 -------------------------------------------------------------------------------
 sqlpackage /Action:Export /ssn:161.132.54.162 /sdn:TURISMOPERU_fvpr /tf:03_backups/TurismoPeru_fvpr_Full.bacpac /su:estudiante /sp:Unc.2026
-------------------------------------------------------------------------------
*/