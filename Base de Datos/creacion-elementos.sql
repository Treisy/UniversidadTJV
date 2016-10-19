-------------------------------------------------------------------------------------------------------
-- Creación de la BD
-------------------------------------------------------------------------------------------------------
USE master

GO
IF EXISTS(SELECT name FROM sys.databases WHERE name = 'UniversidadTJV')
BEGIN
DROP DATABASE [UniversidadTJV]
END

CREATE DATABASE [UniversidadTJV]
GO
PRINT 'La base de datos se ha creado satisfactoriamente.'
GO

USE [UniversidadTJV]
GO

-------------------------------------------------------------------------------------------------------
-- Creación de las tablas
-------------------------------------------------------------------------------------------------------

CREATE TABLE [dbo].[tb_configuraciones](
	[id_configuracion] [int] IDENTITY(1,1) NOT NULL,
	[nombre_institucion] [varchar](200) NULL,
	[logo] [varchar](300) NULL,
	[cuatrimestre] [varchar](50) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
 CONSTRAINT [PK_tb_configuraciones] PRIMARY KEY CLUSTERED 
(
	[id_configuracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_tipos](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[tipo] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
 CONSTRAINT [PK_tb_tipos] PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_profesores](
	[id_profesor] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](30) NOT NULL,
	[nombre] [varchar](50) NULL,
	[primer_apellido] [varchar](50) NULL,
	[segundo_apellido] [varchar](50) NULL,
	[fecha_nacimiento] [datetime] NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
 CONSTRAINT [PK_tb_profesores] PRIMARY KEY CLUSTERED 
(
	[id_profesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_materias](
	[id_materia] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usaurio_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
 CONSTRAINT [PK_tb_materias] PRIMARY KEY CLUSTERED 
(
	[id_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_carreras](
	[id_carrera] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_profesor] [int] NULL,
 CONSTRAINT [PK_tb_carreras] PRIMARY KEY CLUSTERED 
(
	[id_carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_carreras]  WITH CHECK ADD  CONSTRAINT [FK_tb_carreras_tb_profesores] FOREIGN KEY([id_profesor])
REFERENCES [dbo].[tb_profesores] ([id_profesor])
GO

ALTER TABLE [dbo].[tb_carreras] CHECK CONSTRAINT [FK_tb_carreras_tb_profesores]
GO

CREATE TABLE [dbo].[tb_alumnos](
	[id_alumno] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](30) NOT NULL,
	[nombre] [varchar](50) NULL,
	[primer_apellido] [varchar](50) NULL,
	[segundo_apellido] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_carrera] [int] NULL,
 CONSTRAINT [PK_tb_alumnos] PRIMARY KEY CLUSTERED 
(
	[id_alumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_alumnos]  WITH CHECK ADD  CONSTRAINT [FK_tb_alumnos_tb_carreras] FOREIGN KEY([id_carrera])
REFERENCES [dbo].[tb_carreras] ([id_carrera])
GO

ALTER TABLE [dbo].[tb_alumnos] CHECK CONSTRAINT [FK_tb_alumnos_tb_carreras]
GO

CREATE TABLE [dbo].[tb_usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](30) NULL,
	[nombre_usuario] [varchar](150) NOT NULL,
	[comtrasena] [varchar](300) NOT NULL,
	[nombre] [varchar](50) NULL,
	[primer_apellido] [varchar](50) NULL,
	[segundo_apellido] [varchar](50) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_imgresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
 CONSTRAINT [PK_tb_usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_lugares](
	[id_lugar] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[padre_id] [int] NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
 CONSTRAINT [PK_tb_lugares] PRIMARY KEY CLUSTERED 
(
	[id_lugar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_alumnos_x_lugar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_alumno] [int] NULL,
	[id_lugar] [int] NULL,
 CONSTRAINT [PK_tb_alumnos_x_lugar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_alumnos_x_lugar]  WITH CHECK ADD  CONSTRAINT [FK_tb_alumnos_x_lugar_tb_alumnos] FOREIGN KEY([id_alumno])
REFERENCES [dbo].[tb_alumnos] ([id_alumno])
GO

ALTER TABLE [dbo].[tb_alumnos_x_lugar] CHECK CONSTRAINT [FK_tb_alumnos_x_lugar_tb_alumnos]
GO

ALTER TABLE [dbo].[tb_alumnos_x_lugar]  WITH CHECK ADD  CONSTRAINT [FK_tb_alumnos_x_lugar_tb_lugares] FOREIGN KEY([id_lugar])
REFERENCES [dbo].[tb_lugares] ([id_lugar])
GO

ALTER TABLE [dbo].[tb_alumnos_x_lugar] CHECK CONSTRAINT [FK_tb_alumnos_x_lugar_tb_lugares]
GO

CREATE TABLE [dbo].[tb_materias_x_carrera](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[costo] [float] NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_carrera] [int] NULL,
	[id_materia] [int] NULL,
 CONSTRAINT [PK_tb_materias_x_carrera] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_materias_x_carrera]  WITH CHECK ADD  CONSTRAINT [FK_tb_materias_x_carrera_tb_carreras1] FOREIGN KEY([id_carrera])
REFERENCES [dbo].[tb_carreras] ([id_carrera])
GO

ALTER TABLE [dbo].[tb_materias_x_carrera] CHECK CONSTRAINT [FK_tb_materias_x_carrera_tb_carreras1]
GO

ALTER TABLE [dbo].[tb_materias_x_carrera]  WITH CHECK ADD  CONSTRAINT [FK_tb_materias_x_carrera_tb_materias] FOREIGN KEY([id_materia])
REFERENCES [dbo].[tb_materias] ([id_materia])
GO

ALTER TABLE [dbo].[tb_materias_x_carrera] CHECK CONSTRAINT [FK_tb_materias_x_carrera_tb_materias]
GO

CREATE TABLE [dbo].[tb_matriculas](
	[id_matricula] [int] IDENTITY(1,1) NOT NULL,
	[cuatrimestre] [varchar](50) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_alumno] [int] NULL,
 CONSTRAINT [PK_tb_matriculas] PRIMARY KEY CLUSTERED 
(
	[id_matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_matriculas]  WITH CHECK ADD  CONSTRAINT [FK_tb_matriculas_tb_alumnos] FOREIGN KEY([id_alumno])
REFERENCES [dbo].[tb_alumnos] ([id_alumno])
GO

ALTER TABLE [dbo].[tb_matriculas] CHECK CONSTRAINT [FK_tb_matriculas_tb_alumnos]
GO

ALTER TABLE [dbo].[tb_materias_x_carrera]  WITH CHECK ADD  CONSTRAINT [FK_tb_materias_x_carrera_tb_carreras1] FOREIGN KEY([id_carrera])
REFERENCES [dbo].[tb_carreras] ([id_carrera])
GO

ALTER TABLE [dbo].[tb_materias_x_carrera] CHECK CONSTRAINT [FK_tb_materias_x_carrera_tb_carreras1]
GO

ALTER TABLE [dbo].[tb_materias_x_carrera]  WITH CHECK ADD  CONSTRAINT [FK_tb_materias_x_carrera_tb_materias] FOREIGN KEY([id_materia])
REFERENCES [dbo].[tb_materias] ([id_materia])
GO

ALTER TABLE [dbo].[tb_materias_x_carrera] CHECK CONSTRAINT [FK_tb_materias_x_carrera_tb_materias]
GO

CREATE TABLE [dbo].[tb_materias_x_matricula](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_matricula] [int] NULL,
	[id_materia] [int] NULL,
 CONSTRAINT [PK_tb_materias_x_matricula] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_materias_x_matricula]  WITH CHECK ADD  CONSTRAINT [FK_tb_materias_x_matricula_tb_materias] FOREIGN KEY([id_materia])
REFERENCES [dbo].[tb_materias] ([id_materia])
GO

ALTER TABLE [dbo].[tb_materias_x_matricula] CHECK CONSTRAINT [FK_tb_materias_x_matricula_tb_materias]
GO

ALTER TABLE [dbo].[tb_materias_x_matricula]  WITH CHECK ADD  CONSTRAINT [FK_tb_materias_x_matricula_tb_matriculas] FOREIGN KEY([id_matricula])
REFERENCES [dbo].[tb_matriculas] ([id_matricula])
GO

ALTER TABLE [dbo].[tb_materias_x_matricula] CHECK CONSTRAINT [FK_tb_materias_x_matricula_tb_matriculas]
GO

CREATE TABLE [dbo].[tb_profesores_x_lugar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_profesor] [int] NULL,
	[id_lugar] [int] NULL,
 CONSTRAINT [PK_tb_profesores_x_lugar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_profesores_x_lugar]  WITH CHECK ADD  CONSTRAINT [FK_tb_profesores_x_lugar_tb_lugares] FOREIGN KEY([id_lugar])
REFERENCES [dbo].[tb_lugares] ([id_lugar])
GO

ALTER TABLE [dbo].[tb_profesores_x_lugar] CHECK CONSTRAINT [FK_tb_profesores_x_lugar_tb_lugares]
GO

ALTER TABLE [dbo].[tb_profesores_x_lugar]  WITH CHECK ADD  CONSTRAINT [FK_tb_profesores_x_lugar_tb_profesores] FOREIGN KEY([id_profesor])
REFERENCES [dbo].[tb_profesores] ([id_profesor])
GO

ALTER TABLE [dbo].[tb_profesores_x_lugar] CHECK CONSTRAINT [FK_tb_profesores_x_lugar_tb_profesores]
GO

CREATE TABLE [dbo].[tb_tipos_x_alumno](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_alumno] [int] NULL,
	[id_tipo] [int] NULL,
 CONSTRAINT [PK_tb_tipos_x_alumno] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_tipos_x_alumno]  WITH CHECK ADD  CONSTRAINT [FK_tb_tipos_x_alumno_tb_alumnos] FOREIGN KEY([id_alumno])
REFERENCES [dbo].[tb_alumnos] ([id_alumno])
GO

ALTER TABLE [dbo].[tb_tipos_x_alumno] CHECK CONSTRAINT [FK_tb_tipos_x_alumno_tb_alumnos]
GO

ALTER TABLE [dbo].[tb_tipos_x_alumno]  WITH CHECK ADD  CONSTRAINT [FK_tb_tipos_x_alumno_tb_tipos] FOREIGN KEY([id_tipo])
REFERENCES [dbo].[tb_tipos] ([id_tipo])
GO

ALTER TABLE [dbo].[tb_tipos_x_alumno] CHECK CONSTRAINT [FK_tb_tipos_x_alumno_tb_tipos]
GO

CREATE TABLE [dbo].[tb_tipos_x_institucion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_configuracion] [int] NULL,
	[id_tipo] [int] NULL,
 CONSTRAINT [PK_tb_tipos_x_institucion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_tipos_x_institucion]  WITH CHECK ADD  CONSTRAINT [FK_tb_tipos_x_institucion_tb_configuraciones] FOREIGN KEY([id_configuracion])
REFERENCES [dbo].[tb_configuraciones] ([id_configuracion])
GO

ALTER TABLE [dbo].[tb_tipos_x_institucion] CHECK CONSTRAINT [FK_tb_tipos_x_institucion_tb_configuraciones]
GO

ALTER TABLE [dbo].[tb_tipos_x_institucion]  WITH CHECK ADD  CONSTRAINT [FK_tb_tipos_x_institucion_tb_tipos] FOREIGN KEY([id_tipo])
REFERENCES [dbo].[tb_tipos] ([id_tipo])
GO

ALTER TABLE [dbo].[tb_tipos_x_institucion] CHECK CONSTRAINT [FK_tb_tipos_x_institucion_tb_tipos]
GO

CREATE TABLE [dbo].[tb_tipos_x_profesor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_profesor] [int] NULL,
	[id_tipo] [int] NULL,
 CONSTRAINT [PK_tb_tipos_x_profesor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tb_tipos_x_profesor]  WITH CHECK ADD  CONSTRAINT [FK_tb_tipos_x_profesor_tb_profesores] FOREIGN KEY([id_profesor])
REFERENCES [dbo].[tb_profesores] ([id_profesor])
GO

ALTER TABLE [dbo].[tb_tipos_x_profesor] CHECK CONSTRAINT [FK_tb_tipos_x_profesor_tb_profesores]
GO

ALTER TABLE [dbo].[tb_tipos_x_profesor]  WITH CHECK ADD  CONSTRAINT [FK_tb_tipos_x_profesor_tb_tipos] FOREIGN KEY([id_tipo])
REFERENCES [dbo].[tb_tipos] ([id_tipo])
GO

ALTER TABLE [dbo].[tb_tipos_x_profesor] CHECK CONSTRAINT [FK_tb_tipos_x_profesor_tb_tipos]
GO

-------------------------------------------------------------------------------------------------------
-- Creación de las tablas de historial
-------------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[tb_historial_lugares](
	[id_lugar] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[padre_id] [int] NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_lugares] PRIMARY KEY CLUSTERED
(
	[id_lugar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_profesores](
	[id_profesor] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](30) NOT NULL,
	[nombre] [varchar](50) NULL,
	[primer_apellido] [varchar](50) NULL,
	[segundo_apellido] [varchar](50) NULL,
	[fecha_nacimiento] [datetime] NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingreso] [datetime] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_profesores] PRIMARY KEY CLUSTERED
(
	[id_profesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_configuraciones](
	[id_configuracion] [int] IDENTITY(1,1) NOT NULL,
	[nombre_institucion] [varchar](200) NULL,
	[logo] [varchar](300) NULL,
	[cuatrimestre] [varchar](50) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_configuraciones] PRIMARY KEY CLUSTERED
(
	[id_configuracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_alumnos](
	[id_alumno] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](30) NOT NULL,
	[nombre] [varchar](50) NULL,
	[primer_apellido] [varchar](50) NULL,
	[segundo_apellido] [varchar](50) NULL,
	[fecha_nacimiento] [date] NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[id_caarrera] [int] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_alumnos] PRIMARY KEY CLUSTERED
(
	[id_alumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_alumnos_x_lugar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[id_alumno] [int] NULL,
	[id_lugar] [int] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_alumnos_x_lugar] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_carreras](
	[id_carrera] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingreso] [datetime] NULL,
	[id_profesor] [int] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_carreras] PRIMARY KEY CLUSTERED
(
	[id_carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_materias](
	[id_materia] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[codigo] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingreso] [datetime] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_materias] PRIMARY KEY CLUSTERED
(
	[id_materia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_materias_x_carrera](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[costo] [float] NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingreso] [datetime] NULL,
	[id_carrera] [int] NULL,
	[id_materia] [int] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_materias_x_carrera] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_materias_x_matricula](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[id_matricula] [int] NULL,
	[id_materia] [int] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_materias_x_matricula] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_matriculas](
	[id_matricula] [int] IDENTITY(1,1) NOT NULL,
	[cuatrimestre] [varchar](50) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingreso] [datetime] NULL,
	[id_alumno] [int] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_matriculas] PRIMARY KEY CLUSTERED
(
	[id_matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_profesores_x_lugar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[id_profesor] [int] NULL,
	[id_lugar] [int] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_profesores_x_lugar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_tipos](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[tipo] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_tipos] PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_tipos_x_alumno](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[id_alumno] [int] NULL,
	[id_tipo] [int] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_tipos_x_alumno] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_tipos_x_institucion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[id_configuracion] [int] NULL,
	[id_tipo] [int] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_tipos_x_institucion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_tipos_x_profesor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[id_profesor] [int] NULL,
	[id_tipo] [int] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_tipos_x_profesor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[tb_historial_usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[cedula] [varchar](30) NULL,
	[nombre_usuario] [varchar](150) NOT NULL,
	[comtrasena] [varchar](300) NOT NULL,
	[nombre] [varchar](50) NULL,
	[primer_apellido] [varchar](50) NULL,
	[segundo_apellido] [varchar](50) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_imgreso] [datetime] NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_tb_historial_usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

-------------------------------------------------------------------------------------------------------
-- Creación de los triggers
-------------------------------------------------------------------------------------------------------
CREATE TRIGGER tr_agregar_alumno
ON dbo.tb_alumnos
AFTER INSERT
AS
BEGIN
	INSERT INTO dbo.tb_historial_alumnos
			   (cedula
			   ,nombre
			   ,primer_apellido
			   ,segundo_apellido
			   ,fecha_nacimiento
			   ,usuario_ingresa
			   ,fecha_ingresa
			   ,accion)
		 SELECT
			   a.cedula,
			   a.nombre,
			   a.primer_apellido,
			   a.segundo_apellido,
			   a.fecha_nacimiento,
			   a.usuario_ingresa,
			   a.fecha_ingresa,
			   'Agregar'
		FROM dbo.tb_alumnos a
END;
GO

CREATE TRIGGER tr_agregar_profesor
ON dbo.tb_profesores
AFTER INSERT
AS
BEGIN
	INSERT INTO dbo.tb_historial_profesores
			   (cedula
			   ,nombre
			   ,primer_apellido
			   ,segundo_apellido
			   ,fecha_nacimiento
			   ,usuario_ingresa
			   ,fecha_ingresa
			   ,accion)
		 SELECT
			   a.cedula,
			   a.nombre,
			   a.primer_apellido,
			   a.segundo_apellido,
			   a.fecha_nacimiento,
			   a.usuario_ingresa,
			   a.fecha_ingresa,
			   'Agregar'
		FROM dbo.tb_profesores a
END;
GO

CREATE TRIGGER tr_agregar_materia
ON dbo.tb_materias
AFTER INSERT
AS
BEGIN
	INSERT INTO [dbo].[tb_historial_materias]
			   ([nombre]
			   ,[usuario_ingresa]
			   ,[fecha_ingreso]
			   ,[accion])
		SELECT 
			   a.nombre,
			   a.usuario_ingresa,
			   a.fecha_ingreso,
			   'Agregar'
		  FROM [dbo].[tb_materias] a	   
END;
GO

CREATE TRIGGER tr_agregar_lugar
ON dbo.tb_lugares
AFTER INSERT
AS
BEGIN
	INSERT INTO [dbo].[tb_historial_lugares]
			   ([nombre]
			   ,[padre_id]
			   ,[usuario_ingresa]
			   ,[fecha_ingresa])
		SELECT 
			   a.nombre,
			   a.padre_id,
			   a.usuario_ingresa,
			   a.fecha_ingresa,
			   'Agregar'
		  FROM [dbo].[tb_lugares] a

END;
GO

CREATE TRIGGER tr_agregar_configuracion
ON dbo.tb_configuraciones
AFTER INSERT
AS
BEGIN
	INSERT INTO [dbo].[tb_historial_configuraciones]
			   ([nombre_institucion]
			   ,[logo]
			   ,[cuatrimestre]
			   ,[usuario_ingresa]
			   ,[fecha_ingresa])
		SELECT 
			   a.nombre_institucion,
			   a.logo,
			   a.cuatrimestre,
			   a.usuario_ingresa,
			   a.fecha_ingresa,
			   'Agregar'
		  FROM [dbo].[tb_configuraciones] a
END;
GO

CREATE TRIGGER tr_agregar_alumno_x_lugar
ON dbo.tb_alumnos_x_lugar
AFTER INSERT
AS
BEGIN

END;
GO

CREATE TRIGGER tr_agregar_materia_x_carrera
ON dbo.tb_materias_x_carrera
AFTER INSERT
AS
BEGIN

END;
GO

CREATE TRIGGER tr_agregar_materia_x_matricula
ON dbo.tb_materias_x_matricula
AFTER INSERT
AS
BEGIN

END;
GO

CREATE TRIGGER tr_agregar_carrera
ON dbo.tb_carreras
AFTER INSERT
AS
BEGIN

END;
GO

CREATE TRIGGER tr_agregar_matricula
ON dbo.tb_matriculas
AFTER INSERT
AS
BEGIN

END;
GO

CREATE TRIGGER tr_agregar_profesor_x_lugar
ON dbo.tb_profesores_x_lugar
AFTER INSERT
AS
BEGIN

END;
GO

CREATE TRIGGER tr_agregar_tipo
ON dbo.tb_tipos
AFTER INSERT
AS
BEGIN

END;
GO

CREATE TRIGGER tr_agregar_tipo_x_alumno
ON dbo.tb_tipos_x_alumno
AFTER INSERT
AS
BEGIN

END;
GO

CREATE TRIGGER tr_agregar_tipo_x_institucion
ON dbo.tb_tipos_x_institucion
AFTER INSERT
AS
BEGIN

END;
GO

CREATE TRIGGER tr_agregar_tipo_x_profesor
ON dbo.tb_tipos_x_profesor
AFTER INSERT
AS
BEGIN

END;
GO

CREATE TRIGGER tr_agregar_usuario
ON dbo.tb_usuarios
AFTER INSERT
AS
BEGIN

END;
GO
-------------------------------------------------------------------------
CREATE TRIGGER tr_modificar_alumno
ON dbo.tb_alumnos
AFTER UPDATE
AS
BEGIN
	INSERT INTO dbo.tb_historial_alumnos
			   (cedula
			   ,nombre
			   ,primer_apellido
			   ,segundo_apellido
			   ,fecha_nacimiento
			   ,usuario_ingresa
			   ,fecha_ingresa
			   ,accion)
		 SELECT
			   a.cedula,
			   a.nombre,
			   a.primer_apellido,
			   a.segundo_apellido,
			   a.fecha_nacimiento,
			   a.usuario_ingresa,
			   a.fecha_ingresa,
			   'Modificar'
		FROM dbo.tb_alumnos a
END;
GO

CREATE TRIGGER tr_modificar_profesor
ON dbo.tb_profesores
AFTER UPDATE
AS
BEGIN
	INSERT INTO dbo.tb_historial_profesores
			   (cedula
			   ,nombre
			   ,primer_apellido
			   ,segundo_apellido
			   ,fecha_nacimiento
			   ,usuario_ingresa
			   ,fecha_ingresa
			   ,accion)
		 SELECT
			   a.cedula,
			   a.nombre,
			   a.primer_apellido,
			   a.segundo_apellido,
			   a.fecha_nacimiento,
			   a.usuario_ingresa,
			   a.fecha_ingresa,
			   'Modificar'
		FROM dbo.tb_profesores a
END;
GO

CREATE TRIGGER tr_modificar_materia
ON dbo.tb_materias
AFTER UPDATE
AS
BEGIN

END;
GO

CREATE TRIGGER tr_modificar_lugar
ON dbo.tb_materias
AFTER UPDATE
AS
BEGIN

END;
GO

CREATE TRIGGER tr_modificar_configuracion
ON dbo.tb_materias
AFTER UPDATE
AS
BEGIN

END;
GO

CREATE TRIGGER tr_modificar_alumno_x_lugar
ON dbo.tb_materias
AFTER UPDATE
AS
BEGIN

END;
GO

CREATE TRIGGER tr_modificar_materia_x_carrera
ON dbo.tb_materias
AFTER UPDATE
AS
BEGIN

END;
GO

CREATE TRIGGER tr_modificar_materia_x_matricula
ON dbo.tb_materias
AFTER UPDATE
AS
BEGIN

END;
GO
------------------------------------------------------------------------
CREATE TRIGGER tr_eliminar_alumno
ON dbo.tb_alumnos
AFTER DELETE
AS
BEGIN
	INSERT INTO dbo.tb_historial_alumnos
			   (cedula
			   ,nombre
			   ,primer_apellido
			   ,segundo_apellido
			   ,fecha_nacimiento
			   ,usuario_ingresa
			   ,fecha_ingresa
			   ,accion)
		 SELECT
			   a.cedula,
			   a.nombre,
			   a.primer_apellido,
			   a.segundo_apellido,
			   a.fecha_nacimiento,
			   a.usuario_ingresa,
			   a.fecha_ingresa,
			   'Eliminar'
		FROM dbo.tb_alumnos a
END;
GO

CREATE TRIGGER tr_eliminar_profesor
ON dbo.tb_profesores
AFTER DELETE
AS
BEGIN
	INSERT INTO dbo.tb_historial_profesores
			   (cedula
			   ,nombre
			   ,primer_apellido
			   ,segundo_apellido
			   ,fecha_nacimiento
			   ,usuario_ingresa
			   ,fecha_ingresa
			   ,accion)
		 SELECT
			   a.cedula,
			   a.nombre,
			   a.primer_apellido,
			   a.segundo_apellido,
			   a.fecha_nacimiento,
			   a.usuario_ingresa,
			   a.fecha_ingresa,
			   'Eliminar'
		FROM dbo.tb_profesores a
END;
GO

CREATE TRIGGER tr_eliminar_materia
ON dbo.tb_materias
AFTER DELETE
AS
BEGIN

END;
GO

CREATE TRIGGER tr_eliminar_lugar
ON dbo.tb_materias
AFTER DELETE
AS
BEGIN

END;
GO

CREATE TRIGGER tr_eliminar_configuracion
ON dbo.tb_materias
AFTER DELETE
AS
BEGIN

END;
GO

CREATE TRIGGER tr_eliminar_alumno_x_lugar
ON dbo.tb_materias
AFTER DELETE
AS
BEGIN

END;
GO

CREATE TRIGGER tr_eliminar_materia_x_carrera
ON dbo.tb_materias
AFTER DELETE
AS
BEGIN

END;
GO

CREATE TRIGGER tr_eliminar_materia_x_matricula
ON dbo.tb_materias
AFTER DELETE
AS
BEGIN

END;
GO

-------------------------------------------------------------------------------------------------------
-- Creación de los SP's
-------------------------------------------------------------------------------------------------------
CREATE PROCEDURE sp_agregar_alumno
AS
BEGIN

END;
GO

------------------------------------------------------------------------
CREATE PROCEDURE sp_modificar_alumno
AS
BEGIN

END;
GO

------------------------------------------------------------------------
CREATE PROCEDURE sp_eliminar_alumno
AS
BEGIN

END;
GO

------------------------------------------------------------------------
CREATE PROCEDURE sp_buscar_alumno
AS
BEGIN

END;
GO



