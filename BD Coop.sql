--Creando la Base de datos Coop
CREATE DATABASE Coop

--Entrando a la Base de datos Coop
USE Coop

--Creando la Tabla Solicitante
CREATE TABLE Solicitante(
IdSolicitante int IDENTITY(1,1),
Nombre VARCHAR(50) NOT NULL,
TipoDocumento VARCHAR(50) NOT NULL,
NumeroDocumento VARCHAR(50) NOT NULL,
Correo VARCHAR(50) NOT NULL,
Telefono int NOT NULL
)

--Creando la Tabla Solicitud de Préstamo
CREATE TABLE SolicitudPrestamo(
IdSolicitud int IDENTITY(1,1),
IdSolicitante int NOT NULL,
Motivo VARCHAR(50) NOT NULL,
Monto real NOT NULL,
Estad VARCHAR(50) NOT NULL
)

--Creando la Tabla Solicitud de EstadosFinancieros
CREATE TABLE EstadosFinancieros(
IdEstadosFin int IDENTITY(1,1),
IdSolicitante int NOT NULL,
FechaRegistro Datetime NOT NULL,
Pasivos real NOT NULL,
Activos real NOT NULL,
Costos real NOT NULL,
VentaTotal real NOT NULL,
GastosAdm real NOT NULL,
GastosVta real NOT NULL,
GastosFin real NOT NULL,
MargenUti real NOT NULL,
RutaImg VARCHAR(50) NOT NULL
)


--Creando la Tabla Propuesta de Prestamo
CREATE TABLE PropuestaPrestamo(
IdPropuesta int IDENTITY(1,1),
IdSolicitud int  NOT NULL,
Monto real NOT NULL,
Plazo VARCHAR(50) NOT NULL,
TasaInteres VARCHAR(50) NOT NULL,
Comentario VARCHAR(50) NOT NULL
)


--Creando la Tabla Prestamo
CREATE TABLE Prestamo(
IdPrestamo int IDENTITY(1,1),
IdPropuesta int  NOT NULL,
IdCliente int  NOT NULL,
Monto real NOT NULL,
Motivo VARCHAR(50) NOT NULL,
Estado VARCHAR(50) NOT NULL,
)


--Creando la Tabla Prestamo
CREATE TABLE CuotaPrestamo(
IdCuota int IDENTITY(1,1),
IdPrestamo int  NOT NULL,
IdCliente int  NOT NULL,
NumeroCuota int NOT NULL,
Monto real NOT NULL,
FechaVencimiento Datetime NOT NULL,
TasaInteres VARCHAR(50) NOT NULL,
)

--Creando la Tabla Notificacion Vencimiento de Cuota
CREATE TABLE NotificacionVenCuota(
IdNotiVenCuota int IDENTITY(1,1),
IdCuota int  NOT NULL,
Monto real  NOT NULL,
FechaVencimiento Datetime NOT NULL
)

--Creando la Tabla Cliente
CREATE TABLE Cliente(
IdCliente int IDENTITY(1,1),
Nombre VARCHAR(50) NOT NULL,
TipoDocumento VARCHAR(50) NOT NULL,
NumeroDocumento VARCHAR(50) NOT NULL,
Direccion VARCHAR(50) NOT NULL,
Correo VARCHAR(50) NOT NULL,
Telefono int NOT NULL,
ScoreCred VARCHAR(50) NOT NULL,
)

--Creando la Tabla ScoreCrediticio
CREATE TABLE ScoreCrediticio(
IdScore int IDENTITY(1,1),
ScoreCrediticio VARCHAR(50) NOT NULL,
Puntiacion VARCHAR(50) NOT NULL,
)

--Creando la Tabla Linea de Credito
CREATE TABLE LineaCredito(
IdLinea int IDENTITY(1,1),
IdPropuesta int  NOT NULL,
IdCliente int  NOT NULL,
Monto real NOT NULL,
Motivo VARCHAR(50) NOT NULL,
Estado VARCHAR(50) NOT NULL,
)

--Creando la Tabla Notificacion Renovacion de Linea
CREATE TABLE NotificacionRenvLinea(
IdRenLinea int IDENTITY(1,1),
IdLinea int  NOT NULL,
FechaVencimiento Datetime NOT NULL
)


--Creando la Tabla Usuario
CREATE TABLE Usuario(
IdUsuario int IDENTITY(1,1),
Nombre VARCHAR(50) NOT NULL,
Correo VARCHAR(50) NOT NULL,
Direccion VARCHAR(50) NOT NULL,
Rol VARCHAR(50) NOT NULL,
Usuario VARCHAR(50) NOT NULL,
Contraseña VARCHAR(50) NOT NULL
)

--Creando la Tabla Valoracion conversacion
CREATE TABLE ValoracionConversacion(
IdValCalificacion int IDENTITY(1,1),
IdUsuario int NOT NULL,
Calificacion VARCHAR(50) NOT NULL,
FechaCalificacion DATETIME NOT NULL
)

--Creando la Tabla Rango de Valoraciones
CREATE TABLE RangoValoraciones(
IdRango int IDENTITY(1,1),
Valoracion  VARCHAR(50) NOT NULL,
Rnago VARCHAR(50) NOT NULL
)

--Creando la Tabla Conversacion
CREATE TABLE Conversacion(
IdConversacion int IDENTITY(1,1),
IdUsuario int NOT NULL,
IdPalabraClave int NOT NULL,
Texto VARCHAR(250) NOT NULL
)


--Creando la Tabla PalabraClave
CREATE TABLE PalabraClave(
IdPalabraClave int IDENTITY(1,1),
IdRespuesta int NOT NULL,
IdCategoria int NOT NULL,
PalabraClave VARCHAR(250) NOT NULL
)

--Creando la Tabla PalabraClave
CREATE TABLE CategoriaPalabra(
IdCategoriaPalabra int IDENTITY(1,1),
Categoria VARCHAR(250) NOT NULL
)

--Creando la Tabla PalabraClave
CREATE TABLE Respuesta(
IdRespuesta int IDENTITY(1,1),
Respuesta VARCHAR(1000) NOT NULL
)
