USE [master]
GO

/****** Object:  Database [DBFpf]    Script Date: 26/10/2020 10:50:41 ******/
CREATE DATABASE [DBFpf]
 CONTAINMENT = NONE  
GO

ALTER DATABASE [DBFpf] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [DBFpf] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [DBFpf] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [DBFpf] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [DBFpf] SET ARITHABORT OFF 
GO

ALTER DATABASE [DBFpf] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [DBFpf] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [DBFpf] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [DBFpf] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [DBFpf] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [DBFpf] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [DBFpf] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [DBFpf] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [DBFpf] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [DBFpf] SET  DISABLE_BROKER 
GO

ALTER DATABASE [DBFpf] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [DBFpf] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [DBFpf] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [DBFpf] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [DBFpf] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [DBFpf] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [DBFpf] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [DBFpf] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [DBFpf] SET  MULTI_USER 
GO

ALTER DATABASE [DBFpf] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [DBFpf] SET DB_CHAINING OFF 
GO

ALTER DATABASE [DBFpf] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [DBFpf] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [DBFpf] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [DBFpf] SET QUERY_STORE = OFF
GO

ALTER DATABASE [DBFpf] SET  READ_WRITE 
GO

USE [DBFpf]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 29/06/2021 12:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 29/06/2021 12:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](50) NULL,
	[Quantidade] [decimal](18, 0) NULL,
	[Valor] [decimal](18, 3) NULL,
 CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendas]    Script Date: 29/06/2021 12:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodCli] [int] NOT NULL,
	[Data] [datetime] NULL,
	[Total] [decimal](18, 0) NULL,
	[Cliente] [varchar](50) NULL,
 CONSTRAINT [PK_Vendas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendasItens]    Script Date: 29/06/2021 12:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendasItens](
	[Pedido] [int] NOT NULL,
	[Produto] [int] NOT NULL,
	[ValUnit] [decimal](18, 0) NULL,
	[QuantProd] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_VendasItens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([Id], [Nome]) VALUES (1, N'Raimundo Nonato')
INSERT [dbo].[Clientes] ([Id], [Nome]) VALUES (2, N'Eudes Gomes')
INSERT [dbo].[Clientes] ([Id], [Nome]) VALUES (3, N'Kelly Oliveira')
INSERT [dbo].[Clientes] ([Id], [Nome]) VALUES (4, N'Francisco Silva')
INSERT [dbo].[Clientes] ([Id], [Nome]) VALUES (5, N'Gilberto Honorato')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Produtos] ON 

INSERT [dbo].[Produtos] ([Id], [Descricao], [Quantidade], [Valor]) VALUES (1, N'Arroz', CAST(23 AS Decimal(18, 0)), CAST(55.000 AS Decimal(18, 3)))
INSERT [dbo].[Produtos] ([Id], [Descricao], [Quantidade], [Valor]) VALUES (2, N'Macarrão', CAST(12 AS Decimal(18, 0)), CAST(45.000 AS Decimal(18, 3)))
INSERT [dbo].[Produtos] ([Id], [Descricao], [Quantidade], [Valor]) VALUES (3, N'Feijão', CAST(10 AS Decimal(18, 0)), CAST(56.000 AS Decimal(18, 3)))
INSERT [dbo].[Produtos] ([Id], [Descricao], [Quantidade], [Valor]) VALUES (4, N'Farinha', CAST(12 AS Decimal(18, 0)), CAST(3.000 AS Decimal(18, 3)))
INSERT [dbo].[Produtos] ([Id], [Descricao], [Quantidade], [Valor]) VALUES (5, N'Limão', CAST(13 AS Decimal(18, 0)), CAST(2.000 AS Decimal(18, 3)))
INSERT [dbo].[Produtos] ([Id], [Descricao], [Quantidade], [Valor]) VALUES (6, N'Melão', CAST(12 AS Decimal(18, 0)), CAST(5.000 AS Decimal(18, 3)))
INSERT [dbo].[Produtos] ([Id], [Descricao], [Quantidade], [Valor]) VALUES (8, N'Farinha Seca', CAST(2 AS Decimal(18, 0)), CAST(9.000 AS Decimal(18, 3)))
INSERT [dbo].[Produtos] ([Id], [Descricao], [Quantidade], [Valor]) VALUES (15, N'Café 1 Coração', CAST(12 AS Decimal(18, 0)), CAST(11.200 AS Decimal(18, 3)))
INSERT [dbo].[Produtos] ([Id], [Descricao], [Quantidade], [Valor]) VALUES (16, N'Bolacha', CAST(1 AS Decimal(18, 0)), CAST(3.000 AS Decimal(18, 3)))
INSERT [dbo].[Produtos] ([Id], [Descricao], [Quantidade], [Valor]) VALUES (17, N'Arroz Arueira', CAST(121 AS Decimal(18, 0)), CAST(4.000 AS Decimal(18, 3)))
INSERT [dbo].[Produtos] ([Id], [Descricao], [Quantidade], [Valor]) VALUES (18, N'Tijolo', CAST(1 AS Decimal(18, 0)), CAST(19.000 AS Decimal(18, 3)))
SET IDENTITY_INSERT [dbo].[Produtos] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendas] ON 

INSERT [dbo].[Vendas] ([Id], [CodCli], [Data], [Total], [Cliente]) VALUES (34, 1, CAST(N'2020-06-16T00:00:00.000' AS DateTime), CAST(0 AS Decimal(18, 0)), N'Consumidor')
INSERT [dbo].[Vendas] ([Id], [CodCli], [Data], [Total], [Cliente]) VALUES (35, 3, CAST(N'2020-04-10T00:00:00.000' AS DateTime), CAST(50 AS Decimal(18, 0)), N'Kelly Oliveira')
INSERT [dbo].[Vendas] ([Id], [CodCli], [Data], [Total], [Cliente]) VALUES (36, 3, CAST(N'2020-05-15T00:00:00.000' AS DateTime), CAST(60 AS Decimal(18, 0)), N'Kelly Oliveira')
INSERT [dbo].[Vendas] ([Id], [CodCli], [Data], [Total], [Cliente]) VALUES (37, 2, CAST(N'2020-06-10T00:00:00.000' AS DateTime), CAST(100 AS Decimal(18, 0)), N'Eudes Andrade')
INSERT [dbo].[Vendas] ([Id], [CodCli], [Data], [Total], [Cliente]) VALUES (38, 2, CAST(N'2020-04-15T00:00:00.000' AS DateTime), CAST(50 AS Decimal(18, 0)), N'Eudes Anfrade')
INSERT [dbo].[Vendas] ([Id], [CodCli], [Data], [Total], [Cliente]) VALUES (39, 1, CAST(N'2020-06-16T00:00:00.000' AS DateTime), CAST(10 AS Decimal(18, 0)), N'Teste')
SET IDENTITY_INSERT [dbo].[Vendas] OFF
GO
SET IDENTITY_INSERT [dbo].[VendasItens] ON 

INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (34, 1, CAST(55 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (34, 10, CAST(33 AS Decimal(18, 0)), 3, 2)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (34, 10, CAST(33 AS Decimal(18, 0)), 2, 3)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (34, 1, CAST(55 AS Decimal(18, 0)), 1, 4)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (34, 2, CAST(45 AS Decimal(18, 0)), 1, 5)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (34, 2, CAST(56 AS Decimal(18, 0)), 1, 6)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (34, 8, CAST(9 AS Decimal(18, 0)), 1, 7)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (34, 10, CAST(33 AS Decimal(18, 0)), 1, 8)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (34, 10, CAST(33 AS Decimal(18, 0)), 1, 9)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (34, 1, CAST(55 AS Decimal(18, 0)), 1, 10)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (35, 3, CAST(56 AS Decimal(18, 0)), 2, 11)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (36, 3, CAST(56 AS Decimal(18, 0)), 3, 12)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (36, 4, CAST(3 AS Decimal(18, 0)), 2, 13)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (37, 2, CAST(45 AS Decimal(18, 0)), 2, 14)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (38, 4, CAST(60 AS Decimal(18, 0)), 2, 15)
INSERT [dbo].[VendasItens] ([Pedido], [Produto], [ValUnit], [QuantProd], [Id]) VALUES (39, 0, CAST(12 AS Decimal(18, 0)), 1, 16)
SET IDENTITY_INSERT [dbo].[VendasItens] OFF
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Vendas_Clientes] FOREIGN KEY([CodCli])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_Vendas_Clientes]
GO
ALTER TABLE [dbo].[VendasItens]  WITH CHECK ADD  CONSTRAINT [FK_VendasItens_Vendas] FOREIGN KEY([Pedido])
REFERENCES [dbo].[Vendas] ([Id])
GO
ALTER TABLE [dbo].[VendasItens] CHECK CONSTRAINT [FK_VendasItens_Vendas]
GO
