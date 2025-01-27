USE [BDBROFARMA]
GO
/****** Object:  Table [dbo].[User]    Script Date: 18/01/2025 16:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[UserName] [varchar](255) NOT NULL,
	[Telefono] [varchar](255) NOT NULL,
	[PasswordHash] [varchar](255) NOT NULL,
	[PasswordSalt] [varchar](255) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreador] [uniqueidentifier] NULL,
	[FechaActualizacion] [datetime] NULL,
	[UsuarioActualizador] [uniqueidentifier] NULL,
	[StateUser] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[User] ([Id], [Nombre], [Email], [UserName], [Telefono], [PasswordHash], [PasswordSalt], [FechaCreacion], [UsuarioCreador], [FechaActualizacion], [UsuarioActualizador], [StateUser]) VALUES (N'62022a0e-fcfb-4f4e-690e-08dd36e87164', N'César Paredes Quispe', N'cesargpq@gmail.com', N'cesargpq', N'944108684', N'tbKsCgakhNuywnqjf64MzYENDumPtJo0DrOyIgIMGbk=', N'LvdBVlOuzC2yNqOlOfNihQ==', CAST(N'2025-01-17T11:16:51.900' AS DateTime), N'00000000-0000-0000-0000-000000000000', CAST(N'2025-01-17T11:27:44.663' AS DateTime), N'62022a0e-fcfb-4f4e-690e-08dd36e87164', 0)
INSERT [dbo].[User] ([Id], [Nombre], [Email], [UserName], [Telefono], [PasswordHash], [PasswordSalt], [FechaCreacion], [UsuarioCreador], [FechaActualizacion], [UsuarioActualizador], [StateUser]) VALUES (N'd82ce35d-f139-481b-6d17-08dd36ed66a6', N'string', N'string', N'string', N'string', N'SQcbmSmjnUpVgK4GbFf5dQqaXIl/KqggEmKSjTnE+3s=', N'+CBQjLgKFx4KIOFIOAUDhg==', CAST(N'2025-01-17T11:52:21.367' AS DateTime), N'00000000-0000-0000-0000-000000000000', NULL, N'00000000-0000-0000-0000-000000000000', 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__4EC5048096AC3F04]    Script Date: 18/01/2025 16:17:40 ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[Telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__A9D10534A3FF47A2]    Script Date: 18/01/2025 16:17:40 ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__C9F28456344B9942]    Script Date: 18/01/2025 16:17:40 ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
