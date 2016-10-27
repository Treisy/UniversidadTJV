CREATE TABLE [dbo].[tb_configuraciones](
	[id_configuracion] [int] IDENTITY(1,1) NOT NULL,
	[nombre_institucion] [varchar](200) NULL,
	[logo] [varchar](300) NULL,
	[cuatrimestre] [varchar](50) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
 

CREATE TABLE [dbo].[tb_tipos](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[tipo] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
 

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
 

CREATE TABLE [dbo].[tb_materias](
	[id_materia] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[codigo] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usaurio_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,


CREATE TABLE [dbo].[tb_carreras](
	[id_carrera] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_profesor] [int] NULL,
 

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
 

CREATE TABLE [dbo].[tb_lugares](
	[id_lugar] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[padre_id] [int] NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
 

CREATE TABLE [dbo].[tb_alumnos_x_lugar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_alumno] [int] NULL,
	[id_lugar] [int] NULL,
 

CREATE TABLE [dbo].[tb_materias_x_carrera](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[costo] [float] NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_carrera] [int] NULL,
	[id_materia] [int] NULL,


CREATE TABLE [dbo].[tb_matriculas](
	[id_matricula] [int] IDENTITY(1,1) NOT NULL,
	[cuatrimestre] [varchar](50) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_alumno] [int] NULL,


CREATE TABLE [dbo].[tb_materias_x_matricula](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_matricula] [int] NULL,
	[id_materia] [int] NULL,
 

CREATE TABLE [dbo].[tb_profesores_x_lugar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_profesor] [int] NULL,
	[id_lugar] [int] NULL,
 

CREATE TABLE [dbo].[tb_tipos_x_alumno](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_alumno] [int] NULL,
	[id_tipo] [int] NULL,
 

CREATE TABLE [dbo].[tb_tipos_x_institucion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_configuracion] [int] NULL,
	[id_tipo] [int] NULL,


CREATE TABLE [dbo].[tb_tipos_x_profesor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[usuario_ingresa] [int] NULL,
	[fecha_ingresa] [datetime] NULL,
	[usuario_modifica] [int] NULL,
	[fecha_modifica] [datetime] NULL,
	[id_profesor] [int] NULL,
	[id_tipo] [int] NULL,
 