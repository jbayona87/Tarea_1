USE [Universidad]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 24/10/2017 10:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](max) NULL,
	[Apellido_Paterno] [nvarchar](max) NULL,
	[Apellido_Materno] [nvarchar](max) NULL,
	[Numero_Identidad] [varchar](10) NOT NULL,
	[Fecha_Nacimiento] [datetime] NULL,
	[Pais] [nvarchar](50) NULL,
	[Direccion] [nvarchar](max) NULL,
	[Distrito] [nvarchar](max) NULL,
	[Estado_Civil] [char](1) NULL,
	[Telefono] [varchar](20) NULL,
	[FacultadId] [int] NULL,
	[CarreraId] [int] NULL,
	[Fecha_Registro] [datetime] NULL,
	[EstadoId] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC,
	[Numero_Identidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Carreras]    Script Date: 24/10/2017 10:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carreras](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Carrera] [nvarchar](300) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[EstadoId] [char](2) NULL,
	[Fecha_Registro] [datetime] NULL,
	[FacultadId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 24/10/2017 10:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cursos](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Curso] [nvarchar](300) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Creditos] [int] NULL,
	[EstadoId] [char](2) NULL,
	[Fecha_Registro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 24/10/2017 10:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estados](
	[Codigo] [char](2) NOT NULL,
	[Estado] [nvarchar](50) NULL,
	[Descriocion] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Facultades]    Script Date: 24/10/2017 10:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facultades](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Facultad] [nvarchar](300) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[EstadoId] [char](2) NULL,
	[Fecha_Registro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 24/10/2017 10:31:58 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesores](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](max) NULL,
	[Apellido_Paterno] [nvarchar](max) NULL,
	[Apellido_Materno] [nvarchar](max) NULL,
	[Numero_Identidad] [varchar](10) NOT NULL,
	[Fecha_Nacimiento] [datetime] NULL,
	[Fecha_Registro] [datetime] NULL,
	[CarreraId] [int] NULL,
	[FacultadId] [int] NULL,
	[EstadoId] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC,
	[Numero_Identidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Carreras] ON 

GO
INSERT [dbo].[Carreras] ([Codigo], [Carrera], [Descripcion], [EstadoId], [Fecha_Registro], [FacultadId]) VALUES (1, N'Ingenieria de Sistemas', N' ', N'01', NULL, 1)
GO
INSERT [dbo].[Carreras] ([Codigo], [Carrera], [Descripcion], [EstadoId], [Fecha_Registro], [FacultadId]) VALUES (2, N'Ingenieria Industrial', N' ', N'01', NULL, 1)
GO
INSERT [dbo].[Carreras] ([Codigo], [Carrera], [Descripcion], [EstadoId], [Fecha_Registro], [FacultadId]) VALUES (3, N'Ingenieria Civil', N' ', N'01', NULL, 1)
GO
INSERT [dbo].[Carreras] ([Codigo], [Carrera], [Descripcion], [EstadoId], [Fecha_Registro], [FacultadId]) VALUES (4, N'Administracion de Empresas', N' ', N'01', NULL, 2)
GO
INSERT [dbo].[Carreras] ([Codigo], [Carrera], [Descripcion], [EstadoId], [Fecha_Registro], [FacultadId]) VALUES (5, N'Administracion de Negocios Internacionales', N' ', N'01', NULL, 2)
GO
INSERT [dbo].[Carreras] ([Codigo], [Carrera], [Descripcion], [EstadoId], [Fecha_Registro], [FacultadId]) VALUES (6, N'Contabilidad', N' ', N'01', NULL, 2)
GO
INSERT [dbo].[Carreras] ([Codigo], [Carrera], [Descripcion], [EstadoId], [Fecha_Registro], [FacultadId]) VALUES (7, N'Derecho', N' ', N'01', NULL, 3)
GO
INSERT [dbo].[Carreras] ([Codigo], [Carrera], [Descripcion], [EstadoId], [Fecha_Registro], [FacultadId]) VALUES (8, N'Psicologia', N' ', N'01', NULL, 3)
GO
INSERT [dbo].[Carreras] ([Codigo], [Carrera], [Descripcion], [EstadoId], [Fecha_Registro], [FacultadId]) VALUES (9, N'Ciencias de la Comunicacion', N' ', N'01', NULL, 3)
GO
SET IDENTITY_INSERT [dbo].[Carreras] OFF
GO
SET IDENTITY_INSERT [dbo].[Cursos] ON 

GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (1, N'Matematica Basica I', N' ', 4, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (2, N'Matematica Basica II', N' ', 4, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (3, N'Minicomputadoras', N' ', 3, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (4, N'Lenguaje de Programacion I', N' ', 4, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (5, N'Lenguaje de Programacion II', N' ', 4, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (6, N'Matematica Financiera', N' ', 3, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (7, N'Contabilidad I', N' ', 4, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (8, N'Contabilidad Gerencial', N' ', 4, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (9, N'Literatura I', N' ', 3, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (10, N'Ingles Basico I', N' ', 3, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (11, N'Introduccion al Derecho', N' ', 4, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (12, N'Economia General', N' ', 3, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (13, N'Ciencia Politica', N' ', 3, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (14, N'Autoconocimiento', N' ', 3, N'01', NULL)
GO
INSERT [dbo].[Cursos] ([Codigo], [Curso], [Descripcion], [Creditos], [EstadoId], [Fecha_Registro]) VALUES (15, N'Tecnologias Para el Aprendizaje', N' ', 3, N'01', NULL)
GO
SET IDENTITY_INSERT [dbo].[Cursos] OFF
GO
INSERT [dbo].[Estados] ([Codigo], [Estado], [Descriocion]) VALUES (N'01', N'Activo', NULL)
GO
INSERT [dbo].[Estados] ([Codigo], [Estado], [Descriocion]) VALUES (N'02', N'Inactivo', NULL)
GO
INSERT [dbo].[Estados] ([Codigo], [Estado], [Descriocion]) VALUES (N'03', N'Egresado', NULL)
GO
INSERT [dbo].[Estados] ([Codigo], [Estado], [Descriocion]) VALUES (N'04', N'Estudiante', NULL)
GO
INSERT [dbo].[Estados] ([Codigo], [Estado], [Descriocion]) VALUES (N'05', N'Retirado', NULL)
GO
INSERT [dbo].[Estados] ([Codigo], [Estado], [Descriocion]) VALUES (N'06', N'Expulsado', NULL)
GO
SET IDENTITY_INSERT [dbo].[Facultades] ON 

GO
INSERT [dbo].[Facultades] ([Codigo], [Facultad], [Descripcion], [EstadoId], [Fecha_Registro]) VALUES (1, N'Ingenieria', N'Carreras de Ingenieria', N'01', NULL)
GO
INSERT [dbo].[Facultades] ([Codigo], [Facultad], [Descripcion], [EstadoId], [Fecha_Registro]) VALUES (2, N'Gestion y Negocios', N'Carreras de Gestion', N'01', NULL)
GO
INSERT [dbo].[Facultades] ([Codigo], [Facultad], [Descripcion], [EstadoId], [Fecha_Registro]) VALUES (3, N'Humanidades', N' ', N'01', NULL)
GO
SET IDENTITY_INSERT [dbo].[Facultades] OFF
GO
SET IDENTITY_INSERT [dbo].[Profesores] ON 

GO
INSERT [dbo].[Profesores] ([Codigo], [Nombres], [Apellido_Paterno], [Apellido_Materno], [Numero_Identidad], [Fecha_Nacimiento], [Fecha_Registro], [CarreraId], [FacultadId], [EstadoId]) VALUES (1, N'Daniel', N'Rojas', N'Gonzales', N'66673423', NULL, NULL, 1, 1, N'01')
GO
INSERT [dbo].[Profesores] ([Codigo], [Nombres], [Apellido_Paterno], [Apellido_Materno], [Numero_Identidad], [Fecha_Nacimiento], [Fecha_Registro], [CarreraId], [FacultadId], [EstadoId]) VALUES (2, N'Jose', N'Figueroa', N'Barreto', N'99876532', NULL, NULL, 6, 2, N'01')
GO
SET IDENTITY_INSERT [dbo].[Profesores] OFF
GO
ALTER TABLE [dbo].[Alumnos]  WITH CHECK ADD FOREIGN KEY([CarreraId])
REFERENCES [dbo].[Carreras] ([Codigo])
GO
ALTER TABLE [dbo].[Alumnos]  WITH CHECK ADD FOREIGN KEY([FacultadId])
REFERENCES [dbo].[Facultades] ([Codigo])
GO
ALTER TABLE [dbo].[Alumnos]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Codigo])
GO
ALTER TABLE [dbo].[Carreras]  WITH CHECK ADD FOREIGN KEY([FacultadId])
REFERENCES [dbo].[Facultades] ([Codigo])
GO
ALTER TABLE [dbo].[Carreras]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Codigo])
GO
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Codigo])
GO
ALTER TABLE [dbo].[Facultades]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Codigo])
GO
ALTER TABLE [dbo].[Profesores]  WITH CHECK ADD FOREIGN KEY([CarreraId])
REFERENCES [dbo].[Carreras] ([Codigo])
GO
ALTER TABLE [dbo].[Profesores]  WITH CHECK ADD FOREIGN KEY([FacultadId])
REFERENCES [dbo].[Facultades] ([Codigo])
GO
ALTER TABLE [dbo].[Profesores]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Codigo])
GO
