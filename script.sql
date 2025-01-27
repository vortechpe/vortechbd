USE [BDBROFARMA]
GO
/****** Object:  Table [dbo].[DetalleVentas]    Script Date: 23/01/2025 13:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVentas](
	[DetalleID] [int] IDENTITY(1,1) NOT NULL,
	[VentaID] [int] NOT NULL,
	[MedicamentoID] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [decimal](10, 2) NOT NULL,
	[Subtotal] [decimal](10, 2) NOT NULL,
	[Activo] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](50) NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DetalleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laboratorios]    Script Date: 23/01/2025 13:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laboratorios](
	[LaboratorioID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Pais] [nvarchar](50) NULL,
	[Telefono] [nvarchar](20) NULL,
	[Direccion] [nvarchar](255) NULL,
	[Activo] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](50) NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LaboratorioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 23/01/2025 13:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamentos](
	[MedicamentoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[LaboratorioID] [int] NOT NULL,
	[Precio] [decimal](10, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[Activo] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](50) NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MedicamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParametrosMinsa]    Script Date: 23/01/2025 13:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametrosMinsa](
	[ParametroID] [int] IDENTITY(1,1) NOT NULL,
	[MedicamentoID] [int] NOT NULL,
	[RegistroSanitario] [nvarchar](50) NOT NULL,
	[FormaFarmaceutica] [nvarchar](50) NOT NULL,
	[CondicionVenta] [nvarchar](50) NULL,
	[Activo] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](50) NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ParametroID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 23/01/2025 13:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[PersonaID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NULL,
	[TipoPersonaID] [int] NOT NULL,
	[TipoEntidadID] [int] NOT NULL,
	[DocumentoIdentidad] [nvarchar](15) NOT NULL,
	[RazonSocial] [nvarchar](255) NULL,
	[Direccion] [nvarchar](255) NULL,
	[Telefono] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[Activo] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](50) NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 23/01/2025 13:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RolID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Activo] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](50) NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEntidad]    Script Date: 23/01/2025 13:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEntidad](
	[TipoEntidadID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](50) NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoEntidadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposPersona]    Script Date: 23/01/2025 13:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposPersona](
	[TipoPersonaID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](50) NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoPersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 23/01/2025 13:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [nvarchar](50) NOT NULL,
	[ContraseñaHash] [nvarchar](64) NOT NULL,
	[ContraseñaSalt] [nvarchar](24) NOT NULL,
	[RolID] [int] NOT NULL,
	[Activo] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](50) NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 23/01/2025 13:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[VentaID] [int] IDENTITY(1,1) NOT NULL,
	[PersonaID] [int] NOT NULL,
	[TipoComprobante] [nvarchar](50) NULL,
	[Fecha] [datetime] NULL,
	[Total] [decimal](10, 2) NOT NULL,
	[Activo] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioCreacion] [nvarchar](50) NULL,
	[UsuarioModificacion] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[VentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TiposEntidad] ON 

INSERT [dbo].[TiposEntidad] ([TipoEntidadID], [Nombre], [FechaCreacion], [FechaModificacion], [UsuarioCreacion], [UsuarioModificacion], [IP]) VALUES (1, N'Persona Natural', CAST(N'2025-01-22T16:47:35.660' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[TiposEntidad] ([TipoEntidadID], [Nombre], [FechaCreacion], [FechaModificacion], [UsuarioCreacion], [UsuarioModificacion], [IP]) VALUES (2, N'Persona Jurídica', CAST(N'2025-01-22T16:47:35.660' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TiposEntidad] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposPersona] ON 

INSERT [dbo].[TiposPersona] ([TipoPersonaID], [Nombre], [FechaCreacion], [FechaModificacion], [UsuarioCreacion], [UsuarioModificacion], [IP]) VALUES (1, N'Cliente', CAST(N'2025-01-22T16:47:35.667' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[TiposPersona] ([TipoPersonaID], [Nombre], [FechaCreacion], [FechaModificacion], [UsuarioCreacion], [UsuarioModificacion], [IP]) VALUES (2, N'Empleado', CAST(N'2025-01-22T16:47:35.667' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[TiposPersona] ([TipoPersonaID], [Nombre], [FechaCreacion], [FechaModificacion], [UsuarioCreacion], [UsuarioModificacion], [IP]) VALUES (3, N'Proveedor', CAST(N'2025-01-22T16:47:35.667' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TiposPersona] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Parametr__8B0513E8BC5D3897]    Script Date: 23/01/2025 13:45:57 ******/
ALTER TABLE [dbo].[ParametrosMinsa] ADD UNIQUE NONCLUSTERED 
(
	[RegistroSanitario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Personas__049E81A947E18479]    Script Date: 23/01/2025 13:45:57 ******/
ALTER TABLE [dbo].[Personas] ADD UNIQUE NONCLUSTERED 
(
	[DocumentoIdentidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Roles__75E3EFCF692A3201]    Script Date: 23/01/2025 13:45:57 ******/
ALTER TABLE [dbo].[Roles] ADD UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TiposEnt__75E3EFCFC8985D3F]    Script Date: 23/01/2025 13:45:57 ******/
ALTER TABLE [dbo].[TiposEntidad] ADD UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TiposPer__75E3EFCF39610B76]    Script Date: 23/01/2025 13:45:57 ******/
ALTER TABLE [dbo].[TiposPersona] ADD UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Usuarios__6B0F5AE0173DC11F]    Script Date: 23/01/2025 13:45:57 ******/
ALTER TABLE [dbo].[Usuarios] ADD UNIQUE NONCLUSTERED 
(
	[NombreUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DetalleVentas] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[DetalleVentas] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Laboratorios] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Laboratorios] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Medicamentos] ADD  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[Medicamentos] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Medicamentos] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[ParametrosMinsa] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[ParametrosMinsa] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Personas] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Personas] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[TiposEntidad] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[TiposPersona] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Ventas] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[Ventas] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[Ventas] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[DetalleVentas]  WITH CHECK ADD FOREIGN KEY([MedicamentoID])
REFERENCES [dbo].[Medicamentos] ([MedicamentoID])
GO
ALTER TABLE [dbo].[DetalleVentas]  WITH CHECK ADD FOREIGN KEY([VentaID])
REFERENCES [dbo].[Ventas] ([VentaID])
GO
ALTER TABLE [dbo].[Medicamentos]  WITH CHECK ADD FOREIGN KEY([LaboratorioID])
REFERENCES [dbo].[Laboratorios] ([LaboratorioID])
GO
ALTER TABLE [dbo].[ParametrosMinsa]  WITH CHECK ADD FOREIGN KEY([MedicamentoID])
REFERENCES [dbo].[Medicamentos] ([MedicamentoID])
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD FOREIGN KEY([TipoEntidadID])
REFERENCES [dbo].[TiposEntidad] ([TipoEntidadID])
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD FOREIGN KEY([TipoPersonaID])
REFERENCES [dbo].[TiposPersona] ([TipoPersonaID])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([RolID])
REFERENCES [dbo].[Roles] ([RolID])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Personas] ([PersonaID])
GO
ALTER TABLE [dbo].[ParametrosMinsa]  WITH CHECK ADD CHECK  (([CondicionVenta]='Venta Libre' OR [CondicionVenta]='Receta Médica'))
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD CHECK  (([TipoComprobante]='Nota de Venta' OR [TipoComprobante]='Factura' OR [TipoComprobante]='Boleta'))
GO
