USE [master]
GO
/****** Object:  Database [Embocador]    Script Date: 31/12/2024 20:46:21 ******/
CREATE DATABASE [Embocador]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Embocador', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Embocador.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Embocador_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Embocador_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Embocador] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Embocador].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Embocador] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Embocador] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Embocador] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Embocador] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Embocador] SET ARITHABORT OFF 
GO
ALTER DATABASE [Embocador] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Embocador] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Embocador] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Embocador] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Embocador] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Embocador] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Embocador] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Embocador] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Embocador] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Embocador] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Embocador] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Embocador] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Embocador] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Embocador] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Embocador] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Embocador] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Embocador] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Embocador] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Embocador] SET  MULTI_USER 
GO
ALTER DATABASE [Embocador] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Embocador] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Embocador] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Embocador] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Embocador] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Embocador] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Embocador] SET QUERY_STORE = ON
GO
ALTER DATABASE [Embocador] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Embocador]
GO
/****** Object:  Table [dbo].[TurnosHorarios]    Script Date: 31/12/2024 20:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnosHorarios](
	[IDTurnoHorario] [int] IDENTITY(1,1) NOT NULL,
	[IDUsuario] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[HoraInicio] [time](7) NOT NULL,
	[HoraFin] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTurnoHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurnosTrabajadoresEmbocador]    Script Date: 31/12/2024 20:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurnosTrabajadoresEmbocador](
	[IDTurno] [int] IDENTITY(1,1) NOT NULL,
	[IDUsuario] [int] NULL,
	[RegistroEntrada] [datetime] NULL,
	[RegistroSalida] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTurno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 31/12/2024 20:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IDUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Contraseña] [nvarchar](100) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TurnosHorarios] ON 

INSERT [dbo].[TurnosHorarios] ([IDTurnoHorario], [IDUsuario], [Fecha], [HoraInicio], [HoraFin]) VALUES (4, 2005, CAST(N'2024-12-30' AS Date), CAST(N'07:00:00' AS Time), CAST(N'15:00:00' AS Time))
INSERT [dbo].[TurnosHorarios] ([IDTurnoHorario], [IDUsuario], [Fecha], [HoraInicio], [HoraFin]) VALUES (8, 3006, CAST(N'2025-01-02' AS Date), CAST(N'07:00:00' AS Time), CAST(N'15:00:00' AS Time))
INSERT [dbo].[TurnosHorarios] ([IDTurnoHorario], [IDUsuario], [Fecha], [HoraInicio], [HoraFin]) VALUES (9, 3006, CAST(N'2025-01-03' AS Date), CAST(N'15:00:00' AS Time), CAST(N'23:00:00' AS Time))
INSERT [dbo].[TurnosHorarios] ([IDTurnoHorario], [IDUsuario], [Fecha], [HoraInicio], [HoraFin]) VALUES (11, 3007, CAST(N'2025-01-02' AS Date), CAST(N'07:00:00' AS Time), CAST(N'15:00:00' AS Time))
INSERT [dbo].[TurnosHorarios] ([IDTurnoHorario], [IDUsuario], [Fecha], [HoraInicio], [HoraFin]) VALUES (1007, 4006, CAST(N'2025-01-03' AS Date), CAST(N'15:00:00' AS Time), CAST(N'07:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[TurnosHorarios] OFF
GO
SET IDENTITY_INSERT [dbo].[TurnosTrabajadoresEmbocador] ON 

INSERT [dbo].[TurnosTrabajadoresEmbocador] ([IDTurno], [IDUsuario], [RegistroEntrada], [RegistroSalida]) VALUES (14, 2005, CAST(N'2024-12-26T00:41:01.753' AS DateTime), CAST(N'2024-12-26T00:41:46.110' AS DateTime))
INSERT [dbo].[TurnosTrabajadoresEmbocador] ([IDTurno], [IDUsuario], [RegistroEntrada], [RegistroSalida]) VALUES (1014, 2005, CAST(N'2024-12-27T12:41:35.890' AS DateTime), CAST(N'2024-12-27T17:48:42.600' AS DateTime))
INSERT [dbo].[TurnosTrabajadoresEmbocador] ([IDTurno], [IDUsuario], [RegistroEntrada], [RegistroSalida]) VALUES (1016, 3006, CAST(N'2024-12-27T22:35:59.867' AS DateTime), CAST(N'2024-12-27T22:36:18.047' AS DateTime))
INSERT [dbo].[TurnosTrabajadoresEmbocador] ([IDTurno], [IDUsuario], [RegistroEntrada], [RegistroSalida]) VALUES (1017, 3007, CAST(N'2024-12-27T22:57:26.307' AS DateTime), CAST(N'2024-12-27T22:57:40.017' AS DateTime))
INSERT [dbo].[TurnosTrabajadoresEmbocador] ([IDTurno], [IDUsuario], [RegistroEntrada], [RegistroSalida]) VALUES (2016, 3006, CAST(N'2024-12-29T18:47:27.943' AS DateTime), CAST(N'2024-12-29T18:47:31.880' AS DateTime))
INSERT [dbo].[TurnosTrabajadoresEmbocador] ([IDTurno], [IDUsuario], [RegistroEntrada], [RegistroSalida]) VALUES (2017, 2005, CAST(N'2024-12-29T19:01:27.437' AS DateTime), CAST(N'2024-12-29T19:11:55.173' AS DateTime))
INSERT [dbo].[TurnosTrabajadoresEmbocador] ([IDTurno], [IDUsuario], [RegistroEntrada], [RegistroSalida]) VALUES (2018, 3007, CAST(N'2024-12-29T19:12:54.000' AS DateTime), CAST(N'2024-12-29T19:14:03.950' AS DateTime))
SET IDENTITY_INSERT [dbo].[TurnosTrabajadoresEmbocador] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([IDUsuario], [Nombre], [Contraseña], [IsAdmin]) VALUES (2005, N'Roman podadera', N'4aea84d1a8829d05677f6b51ed569674bd693f49ca7dbb108e6e80b99946dd9b', 1)
INSERT [dbo].[Usuarios] ([IDUsuario], [Nombre], [Contraseña], [IsAdmin]) VALUES (3006, N'Pilar Casado', N'pcasado', 0)
INSERT [dbo].[Usuarios] ([IDUsuario], [Nombre], [Contraseña], [IsAdmin]) VALUES (3007, N'Antonio Gomez', N'agomez', 1)
INSERT [dbo].[Usuarios] ([IDUsuario], [Nombre], [Contraseña], [IsAdmin]) VALUES (4006, N'Pablo Puerta Casado', N'd001cde42ec6cfe2923f0271fed25a1bab12d5605c8a97d5861251e8b5181e51', 1)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[TurnosHorarios]  WITH CHECK ADD  CONSTRAINT [FK_TurnosHorarios_Usuarios] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuarios] ([IDUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TurnosHorarios] CHECK CONSTRAINT [FK_TurnosHorarios_Usuarios]
GO
ALTER TABLE [dbo].[TurnosTrabajadoresEmbocador]  WITH CHECK ADD  CONSTRAINT [FK_TurnosTrabajadoresEmbocador_Usuarios] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuarios] ([IDUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TurnosTrabajadoresEmbocador] CHECK CONSTRAINT [FK_TurnosTrabajadoresEmbocador_Usuarios]
GO
USE [master]
GO
ALTER DATABASE [Embocador] SET  READ_WRITE 
GO
