# TurismoPeru_Seguridad_PesantesRosario
## Descripción
El proyecto TurismoPeru_Seguridad_PesantesRosario tiene como finalidad implementar mecanismos básicos de administración, seguridad y gestión de datos en el sistema de información turística de la empresa TurismoPeru.

Se desarrollan medidas de seguridad mediante la creación de usuarios, roles y asignación de permisos en SQL Server, aplicando el principio de mínimo privilegio para garantizar que cada usuario acceda únicamente a las operaciones que necesita.

Asimismo, el proyecto contempla procesos de importación y exportación de datos, generación de copias de seguridad, administración del repositorio mediante GitHub y elaboración de reportes analíticos con Power BI, orientados al análisis de clientes, reservas y pagos.
## Tecnologías utilizadas
- SQL Server: Sistema gestor de bases de datos utilizado para administrar usuarios, roles, permisos, datos y copias de seguridad.
- SQL Server Management Studio (SSMS): Herramienta para ejecutar scripts SQL, configurar la seguridad y gestionar la base de datos.
- BCP (Bulk Copy Program): Utilidad para importar y exportar datos mediante archivos CSV.
- Git: Sistema de control de versiones para registrar los cambios realizados durante el desarrollo.
- GitHub: Plataforma para almacenar y gestionar el código fuente del proyecto.
- Power BI: Herramienta de análisis y visualización de datos para la elaboración de indicadores y dashboards.
- Markdown: Lenguaje utilizado para documentar el proyecto mediante archivos README.md.
## Requisitos
- Windows 10 o superior.
- SQL Server instalado y configurado.
- SQL Server Management Studio (SSMS).
- Base de datos TurismoPeru_fvpr o la base de datos correspondiente al proyecto.
Utilidad BCP disponible para los procesos de importación y exportación.
Git instalado.
- Cuenta de GitHub para acceder al repositorio.
- Power BI Desktop para visualizar y configurar los reportes.
- Permisos suficientes en SQL Server para crear usuarios, roles, asignar permisos y realizar copias de seguridad.
## Configuración
1. Clonar el proyecto

Clonar el repositorio desde GitHub:

git clone https://github.com/fabvpr/TurismoPeru_Seguridad_PesantesRosario.git

Ingresar a la carpeta del proyecto:

cd TurismoPeru_Seguridad_PesantesRosario
2. Configurar la base de datos

Abrir SQL Server Management Studio y conectarse a la instancia de SQL Server correspondiente.

Verificar que la base de datos TurismoPeru_fvpr exista y contenga las tablas necesarias para el funcionamiento del proyecto, como:

cliente
persona
reserva
pago
alojamiento
habitacion
paquete
lugar_turistico
proveedor

Si el nombre de la base de datos es diferente, adaptar las referencias en los scripts SQL.

3. Configurar usuarios y roles

Ejecutar los scripts de la carpeta 01_usuarios_roles en el siguiente orden:

01_logins.sql: creación de los inicios de sesión.
02_users.sql: creación de los usuarios dentro de la base de datos.
03_roles.sql: creación de los roles.
04_permisos.sql: asignación de permisos a cada rol.

Los usuarios definidos para el sistema son:

turismo_admin: responsable de la administración de la base de datos.
turismo_vendedor: encargado del registro y consulta de clientes y reservas.
turismo_analista: encargado de consultar los datos para elaborar reportes.

Las contraseñas deben ser seguras y no deben publicarse en el repositorio.

4. Configurar la importación de datos

Los scripts de importación se encuentran en la carpeta 02_importacion_exportacion.

Se utiliza una tabla temporal o de staging denominada cliente_importacion para recibir los registros provenientes de archivos CSV.

El procedimiento contempla:

Importación de registros mediante BCP.
Validación de los datos recibidos.
Identificación de registros duplicados.
Inserción de registros válidos en la tabla correspondiente.

Las rutas de los archivos deben adaptarse a la ubicación local.
## Estructura del proyecto
TurismoPeru_Seguridad_ApellidoNombre
El proyecto debe contener:
TurismoPeru_Seguridad_PesantesRosario/
│
├── README.md
│
├── 01_usuarios_roles/
│   ├── 01_logins.sql
│   ├── 02_users.sql
│   ├── 03_roles.sql
│   └── 04_permisos.sql
│
├── 02_importacion_exportacion/
│   └── importacion.sql
│
├── 03_backups/
│   ├── backup_full.bacpac
│
├── 04_seguridad/
│   └── pruebas_permisos.sql
│
├── 05_reportes/
│   ├── reportes.pdf
│   └── README.md
│
├── 06_powerbi/
│   └── README.md
│
└── evidencias/
    ├── login.png
    ├── permisos.png
    ├── backup.png
    ├── github.png
    └── reporte.png

 
## Scripts disponibles
01_logins.sql	
02_users.sql	
03_roles.sql
04_permisos.sql	
importacion.sql	
backup_full.sql	
backup_diferencial.sql	
restauracion.sql	
pruebas_permisos.sql	
consultas_reportes.sql

## Procedimiento de restauración
El proyecto contempla la recuperación de la base de datos a partir de una copia de seguridad.

Si se dispone de un archivo .bak, el procedimiento general es el siguiente:

Abrir SQL Server Management Studio.
Conectarse a la instancia correspondiente.
Seleccionar la opción de restauración de bases de datos.
Elegir el archivo de copia de seguridad.
Configurar el nombre de la base de datos de destino.
Revisar las opciones de restauración y las rutas de los archivos.
Ejecutar la restauración y verificar que las tablas y los datos estén disponibles.

Si se utiliza un archivo .bacpac, el procedimiento es diferente:

Abrir SQL Server Management Studio.
Seleccionar la opción Import Data-tier Application.
Ubicar el archivo .bacpac.
Definir el nombre de la base de datos de destino.
Configurar los parámetros de importación.
Ejecutar el proceso.
Verificar que la base de datos se haya creado correctamente.

## Configuración del reporte
El proyecto contempla la integración con Power BI para analizar la información almacenada en SQL Server.

Conexión

Para establecer la conexión:

Abrir Power BI Desktop.
Seleccionar la opción Obtener datos.
Elegir SQL Server.
Introducir el nombre de la instancia del servidor.
Especificar el nombre de la base de datos TurismoPeru_fvpr.
Seleccionar el método de autenticación correspondiente.
Elegir las tablas o consultas necesarias para el análisis.

Se recomienda utilizar credenciales seguras y evitar exponer información de autenticación en capturas de pantalla o documentación pública.

Modelo de datos

El modelo de análisis considera las relaciones entre las siguientes entidades:

Cliente: información de los clientes registrados.
Reserva: información sobre las reservas realizadas.
Pago: información de los pagos asociados a las reservas.

También se pueden incorporar otras dimensiones disponibles en la base de datos para complementar el análisis.

Indicadores

El reporte contempla los siguientes indicadores:

Total de clientes: cantidad de clientes registrados.
Total de reservas: cantidad de reservas realizadas.
Total de ingresos: suma de los importes de los pagos considerados en el análisis.
Ticket promedio: relación entre los ingresos totales y la cantidad de reservas.

Medida conceptual:

Ticket Promedio =
DIVIDE([Total Ingresos], [Total Reservas], 0)

Las medidas de total de clientes, reservas e ingresos deben definirse según las tablas y los campos disponibles en el modelo.

Visualizaciones

El dashboard considera las siguientes visualizaciones:

Reservas por estado.
Ingresos por medio de pago.
Reservas por fecha.
Top 10 clientes por cantidad de reservas.
Ingresos por cliente.

Estas visualizaciones permiten explorar el comportamiento de las reservas, la distribución de los ingresos y la actividad de los clientes.

Resultados y conclusiones

El análisis debe incluir al menos cinco conclusiones obtenidas a partir de los datos del reporte, considerando:

Distribución de las reservas según su estado.
Medio de pago que concentra mayores ingresos.
Periodos con mayor cantidad de reservas.
Clientes que concentran más reservas.
Comportamiento de los ingresos por cliente.

Las conclusiones definitivas deben basarse en los resultados reales obtenidos en Power BI y no en supuestos.
## Principio de mínimo privilegio
El proyecto aplica el principio de mínimo privilegio, que establece que cada usuario debe recibir únicamente los permisos necesarios para cumplir con sus funciones.

Se definen los siguientes niveles de acceso:

Administrador

Responsable de gestionar los usuarios, roles, permisos y operaciones administrativas de la base de datos, además de realizar los procedimientos de respaldo y recuperación.

Vendedor

Tiene permisos para consultar y registrar información relacionada con clientes y reservas. También puede consultar alojamientos y habitaciones.

Sus permisos no incluyen la eliminación de clientes o reservas ni la administración de usuarios, roles o copias de seguridad.

Analista

Dispone exclusivamente de permisos de consulta sobre las tablas necesarias para generar reportes:

cliente
reserva
pago
alojamiento
habitacion
paquete
lugar_turistico

No tiene permisos para insertar, actualizar o eliminar registros.

Justificación

No es adecuado asignar el rol db_owner al vendedor o al analista porque este rol proporciona amplios privilegios de administración dentro de la base de datos.

La asignación de permisos excesivos podría ocasionar modificaciones no autorizadas, eliminación de información importante o alteraciones en la estructura de la base de datos.

Por ello, la separación de funciones permite reducir los riesgos y proteger la integridad, confidencialidad y disponibilidad de la información.

Las restricciones deben comprobarse mediante pruebas de permisos ejecutadas con cada usuario.
## Capturas de pantalla
En la carpeta evidencias se almacenan las capturas que permiten verificar la implementación y el funcionamiento del proyecto.

Archivo	Evidencia
login.png	
permisos.png	
backup.png	
github.png	
reporte.png	
## Autor
Pesantes Rosario Fabiana Valeria

 