USE [Karavan_4187]
GO
/****** Object:  StoredProcedure [dbo].[P_2_D]    Script Date: 10/21/2020 3:04:49 PM ******/
DROP PROCEDURE [dbo].[P_2_D]
GO
/****** Object:  StoredProcedure [dbo].[P_2_C]    Script Date: 10/21/2020 3:04:49 PM ******/
DROP PROCEDURE [dbo].[P_2_C]
GO
/****** Object:  StoredProcedure [dbo].[P_2_B]    Script Date: 10/21/2020 3:04:49 PM ******/
DROP PROCEDURE [dbo].[P_2_B]
GO
/****** Object:  StoredProcedure [dbo].[P_2_A]    Script Date: 10/21/2020 3:04:49 PM ******/
DROP PROCEDURE [dbo].[P_2_A]
GO
ALTER TABLE [dbo].[MAILING] DROP CONSTRAINT [FK_posetitel]
GO
ALTER TABLE [dbo].[MAILING] DROP CONSTRAINT [FK_grupa]
GO
ALTER TABLE [dbo].[KNOVOST] DROP CONSTRAINT [FK_jazik-id-to-novost]
GO
ALTER TABLE [dbo].[KNOVOST] DROP CONSTRAINT [FK_admin-to-novost]
GO
ALTER TABLE [dbo].[KDOKUMENT] DROP CONSTRAINT [FK_jazik-to-kdokument]
GO
ALTER TABLE [dbo].[GALERIJA_SLIKA] DROP CONSTRAINT [FK_GALERIJA_SLIKA_GALERIJA]
GO
ALTER TABLE [dbo].[GALERIJA_OPIS] DROP CONSTRAINT [FK_GALERIJA_OPIS_JAZIK]
GO
ALTER TABLE [dbo].[GALERIJA_OPIS] DROP CONSTRAINT [FK_GALERIJA_OPIS_GALERIJA]
GO
ALTER TABLE [dbo].[EMAIL_PORAKA] DROP CONSTRAINT [FK_EMAIL_PORAKA_EMAIL_GRUPA]
GO
ALTER TABLE [dbo].[EMAIL_GRUPA] DROP CONSTRAINT [FK_jazik_to_email_group]
GO
/****** Object:  Table [dbo].[MAILING]    Script Date: 10/21/2020 3:04:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MAILING]') AND type in (N'U'))
DROP TABLE [dbo].[MAILING]
GO
/****** Object:  Table [dbo].[KNOVOST]    Script Date: 10/21/2020 3:04:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KNOVOST]') AND type in (N'U'))
DROP TABLE [dbo].[KNOVOST]
GO
/****** Object:  Table [dbo].[KDOKUMENT]    Script Date: 10/21/2020 3:04:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KDOKUMENT]') AND type in (N'U'))
DROP TABLE [dbo].[KDOKUMENT]
GO
/****** Object:  Table [dbo].[KADMINISTRATOR]    Script Date: 10/21/2020 3:04:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KADMINISTRATOR]') AND type in (N'U'))
DROP TABLE [dbo].[KADMINISTRATOR]
GO
/****** Object:  Table [dbo].[JAZIK]    Script Date: 10/21/2020 3:04:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JAZIK]') AND type in (N'U'))
DROP TABLE [dbo].[JAZIK]
GO
/****** Object:  Table [dbo].[GALERIJA_SLIKA]    Script Date: 10/21/2020 3:04:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GALERIJA_SLIKA]') AND type in (N'U'))
DROP TABLE [dbo].[GALERIJA_SLIKA]
GO
/****** Object:  Table [dbo].[GALERIJA_OPIS]    Script Date: 10/21/2020 3:04:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GALERIJA_OPIS]') AND type in (N'U'))
DROP TABLE [dbo].[GALERIJA_OPIS]
GO
/****** Object:  Table [dbo].[GALERIJA]    Script Date: 10/21/2020 3:04:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GALERIJA]') AND type in (N'U'))
DROP TABLE [dbo].[GALERIJA]
GO
/****** Object:  Table [dbo].[EMAIL_PORAKA]    Script Date: 10/21/2020 3:04:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMAIL_PORAKA]') AND type in (N'U'))
DROP TABLE [dbo].[EMAIL_PORAKA]
GO
/****** Object:  Table [dbo].[EMAIL_GRUPA]    Script Date: 10/21/2020 3:04:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMAIL_GRUPA]') AND type in (N'U'))
DROP TABLE [dbo].[EMAIL_GRUPA]
GO
/****** Object:  Table [dbo].[EMAIL]    Script Date: 10/21/2020 3:04:49 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMAIL]') AND type in (N'U'))
DROP TABLE [dbo].[EMAIL]
GO
USE [master]
GO
/****** Object:  Database [Karavan_4187]    Script Date: 10/21/2020 3:04:49 PM ******/
DROP DATABASE [Karavan_4187]
GO
/****** Object:  Database [Karavan_4187]    Script Date: 10/21/2020 3:04:49 PM ******/
CREATE DATABASE [Karavan_4187]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Karavan_4187', FILENAME = N'/var/opt/mssql/data/Karavan_4187.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Karavan_4187_log', FILENAME = N'/var/opt/mssql/data/Karavan_4187_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Karavan_4187] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Karavan_4187].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Karavan_4187] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Karavan_4187] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Karavan_4187] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Karavan_4187] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Karavan_4187] SET ARITHABORT OFF 
GO
ALTER DATABASE [Karavan_4187] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Karavan_4187] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Karavan_4187] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Karavan_4187] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Karavan_4187] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Karavan_4187] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Karavan_4187] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Karavan_4187] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Karavan_4187] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Karavan_4187] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Karavan_4187] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Karavan_4187] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Karavan_4187] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Karavan_4187] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Karavan_4187] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Karavan_4187] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Karavan_4187] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Karavan_4187] SET RECOVERY FULL 
GO
ALTER DATABASE [Karavan_4187] SET  MULTI_USER 
GO
ALTER DATABASE [Karavan_4187] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Karavan_4187] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Karavan_4187] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Karavan_4187] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Karavan_4187] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Karavan_4187', N'ON'
GO
ALTER DATABASE [Karavan_4187] SET QUERY_STORE = OFF
GO
USE [Karavan_4187]
GO
/****** Object:  Table [dbo].[EMAIL]    Script Date: 10/21/2020 3:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMAIL](
	[ID_posetitel] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ime] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_EMAIL] PRIMARY KEY CLUSTERED 
(
	[ID_posetitel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMAIL_GRUPA]    Script Date: 10/21/2020 3:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMAIL_GRUPA](
	[ID_grupa] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[jazik_id_jazik_n] [numeric](18, 0) NULL,
	[naziv] [nvarchar](50) NULL,
	[aktivna] [numeric](18, 0) NULL,
 CONSTRAINT [PK_EMAIL_GRUPA] PRIMARY KEY CLUSTERED 
(
	[ID_grupa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMAIL_PORAKA]    Script Date: 10/21/2020 3:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMAIL_PORAKA](
	[ID_poraka] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[grupa_id_grupa] [numeric](18, 0) NULL,
	[datum] [datetime] NULL,
	[naslov] [nvarchar](50) NULL,
	[tekst] [nvarchar](500) NULL,
 CONSTRAINT [PK_EMAIL_PORAKA] PRIMARY KEY CLUSTERED 
(
	[ID_poraka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GALERIJA]    Script Date: 10/21/2020 3:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GALERIJA](
	[ID_galerija] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[preview] [numeric](18, 0) NULL,
 CONSTRAINT [PK_GALERIJA] PRIMARY KEY CLUSTERED 
(
	[ID_galerija] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GALERIJA_OPIS]    Script Date: 10/21/2020 3:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GALERIJA_OPIS](
	[gal_id_galerija] [numeric](18, 0) NULL,
	[jazik_id_jazik_n] [numeric](18, 0) NULL,
	[naslov] [nvarchar](50) NULL,
	[opis] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GALERIJA_SLIKA]    Script Date: 10/21/2020 3:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GALERIJA_SLIKA](
	[ID_slika] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[gal_id_galerija] [numeric](18, 0) NULL,
	[opis_slika] [nvarchar](300) NULL,
	[slika] [nvarchar](50) NOT NULL,
	[opis_slika_eng] [nvarchar](300) NULL,
 CONSTRAINT [PK_GALERIJA_SLIKA] PRIMARY KEY CLUSTERED 
(
	[ID_slika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JAZIK]    Script Date: 10/21/2020 3:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JAZIK](
	[ID_jazik] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[jazik] [nvarchar](50) NULL,
 CONSTRAINT [PK_JAZIK] PRIMARY KEY CLUSTERED 
(
	[ID_jazik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KADMINISTRATOR]    Script Date: 10/21/2020 3:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KADMINISTRATOR](
	[ID_admin] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[ime] [nvarchar](50) NULL,
	[telefon] [nvarchar](50) NULL,
 CONSTRAINT [PK_KADMINISTRATOR] PRIMARY KEY CLUSTERED 
(
	[ID_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KDOKUMENT]    Script Date: 10/21/2020 3:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KDOKUMENT](
	[ID_dokument] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[naslov] [nvarchar](50) NULL,
	[jazik_id_jazik_n] [numeric](18, 0) NULL,
	[dokument] [nvarchar](50) NULL,
	[prikaz] [numeric](18, 0) NULL,
 CONSTRAINT [PK_KDOKUMENT] PRIMARY KEY CLUSTERED 
(
	[ID_dokument] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KNOVOST]    Script Date: 10/21/2020 3:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KNOVOST](
	[ID_novost] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[adm_id_admin_n] [numeric](18, 0) NULL,
	[jazik_id_jazik_n] [numeric](18, 0) NULL,
	[naslov] [nvarchar](50) NULL,
	[opis] [nvarchar](50) NULL,
	[datum_od] [datetime] NULL,
	[datum_do] [datetime] NULL,
 CONSTRAINT [PK_KNOVOST] PRIMARY KEY CLUSTERED 
(
	[ID_novost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAILING]    Script Date: 10/21/2020 3:04:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAILING](
	[email_id_posetitel] [numeric](18, 0) NULL,
	[email_id_grupa] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EMAIL] ON 

INSERT [dbo].[EMAIL] ([ID_posetitel], [ime], [mail]) VALUES (CAST(1 AS Numeric(18, 0)), N'Mark', N'mark@ruzinov.com')
INSERT [dbo].[EMAIL] ([ID_posetitel], [ime], [mail]) VALUES (CAST(2 AS Numeric(18, 0)), N'Jeff', N'jeffrey@gmail.com')
INSERT [dbo].[EMAIL] ([ID_posetitel], [ime], [mail]) VALUES (CAST(3 AS Numeric(18, 0)), N'Bob', N'builder@yahoo.com')
INSERT [dbo].[EMAIL] ([ID_posetitel], [ime], [mail]) VALUES (CAST(4 AS Numeric(18, 0)), N'Ken', N'barb@gmail.com')
INSERT [dbo].[EMAIL] ([ID_posetitel], [ime], [mail]) VALUES (CAST(5 AS Numeric(18, 0)), N'Michael', N'mikey@outlook.com')
INSERT [dbo].[EMAIL] ([ID_posetitel], [ime], [mail]) VALUES (CAST(6 AS Numeric(18, 0)), N'Lando', N'norrisgp@hotmail.com')
INSERT [dbo].[EMAIL] ([ID_posetitel], [ime], [mail]) VALUES (CAST(7 AS Numeric(18, 0)), N'Max', N'verstapp@me.com')
INSERT [dbo].[EMAIL] ([ID_posetitel], [ime], [mail]) VALUES (CAST(8 AS Numeric(18, 0)), N'Lewis', N'hamster@gmail.com')
INSERT [dbo].[EMAIL] ([ID_posetitel], [ime], [mail]) VALUES (CAST(9 AS Numeric(18, 0)), N'Nigel', N'berry@facebook.com')
INSERT [dbo].[EMAIL] ([ID_posetitel], [ime], [mail]) VALUES (CAST(10 AS Numeric(18, 0)), N'Coco', N'kata@gmail.com')
SET IDENTITY_INSERT [dbo].[EMAIL] OFF
GO
SET IDENTITY_INSERT [dbo].[EMAIL_GRUPA] ON 

INSERT [dbo].[EMAIL_GRUPA] ([ID_grupa], [jazik_id_jazik_n], [naziv], [aktivna]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'MainGroup', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_grupa], [jazik_id_jazik_n], [naziv], [aktivna]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Admins', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_grupa], [jazik_id_jazik_n], [naziv], [aktivna]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Editors', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_grupa], [jazik_id_jazik_n], [naziv], [aktivna]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Creators', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_grupa], [jazik_id_jazik_n], [naziv], [aktivna]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Writers', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_grupa], [jazik_id_jazik_n], [naziv], [aktivna]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Managers', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_grupa], [jazik_id_jazik_n], [naziv], [aktivna]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Assistants', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_grupa], [jazik_id_jazik_n], [naziv], [aktivna]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'Legal', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_grupa], [jazik_id_jazik_n], [naziv], [aktivna]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'Regulatory', CAST(0 AS Numeric(18, 0)))
INSERT [dbo].[EMAIL_GRUPA] ([ID_grupa], [jazik_id_jazik_n], [naziv], [aktivna]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'Spare', CAST(0 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[EMAIL_GRUPA] OFF
GO
SET IDENTITY_INSERT [dbo].[EMAIL_PORAKA] ON 

INSERT [dbo].[EMAIL_PORAKA] ([ID_poraka], [grupa_id_grupa], [datum], [naslov], [tekst]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(N'1905-07-05T00:00:00.000' AS DateTime), N'Push Request', N'May we push to production? Thanks')
INSERT [dbo].[EMAIL_PORAKA] ([ID_poraka], [grupa_id_grupa], [datum], [naslov], [tekst]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(N'1905-07-04T00:00:00.000' AS DateTime), N'Push Reply', N'Of course, please do.')
INSERT [dbo].[EMAIL_PORAKA] ([ID_poraka], [grupa_id_grupa], [datum], [naslov], [tekst]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(N'1905-07-03T00:00:00.000' AS DateTime), N'Push Request', N'Great.')
INSERT [dbo].[EMAIL_PORAKA] ([ID_poraka], [grupa_id_grupa], [datum], [naslov], [tekst]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(N'1905-07-02T00:00:00.000' AS DateTime), N'Push Request', N'Message 4')
INSERT [dbo].[EMAIL_PORAKA] ([ID_poraka], [grupa_id_grupa], [datum], [naslov], [tekst]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(N'1905-07-01T00:00:00.000' AS DateTime), N'Push Request', N'Message 5')
INSERT [dbo].[EMAIL_PORAKA] ([ID_poraka], [grupa_id_grupa], [datum], [naslov], [tekst]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'1905-06-30T00:00:00.000' AS DateTime), N'Push Request', N'Message 6')
INSERT [dbo].[EMAIL_PORAKA] ([ID_poraka], [grupa_id_grupa], [datum], [naslov], [tekst]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(N'1905-06-29T00:00:00.000' AS DateTime), N'Push Request', N'Message 7')
INSERT [dbo].[EMAIL_PORAKA] ([ID_poraka], [grupa_id_grupa], [datum], [naslov], [tekst]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(N'1905-06-28T00:00:00.000' AS DateTime), N'Push Request', N'Message 8')
INSERT [dbo].[EMAIL_PORAKA] ([ID_poraka], [grupa_id_grupa], [datum], [naslov], [tekst]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(N'1905-06-27T00:00:00.000' AS DateTime), N'Push Request', N'Message 9')
INSERT [dbo].[EMAIL_PORAKA] ([ID_poraka], [grupa_id_grupa], [datum], [naslov], [tekst]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(N'1905-06-26T00:00:00.000' AS DateTime), N'Push Request', N'Message 10')
SET IDENTITY_INSERT [dbo].[EMAIL_PORAKA] OFF
GO
SET IDENTITY_INSERT [dbo].[GALERIJA] ON 

INSERT [dbo].[GALERIJA] ([ID_galerija], [preview]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(4135972 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([ID_galerija], [preview]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2356146 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([ID_galerija], [preview]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(3466234 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([ID_galerija], [preview]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(7543134 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([ID_galerija], [preview]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(7653244 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([ID_galerija], [preview]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(3531346 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([ID_galerija], [preview]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(6532443 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([ID_galerija], [preview]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(1243264 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([ID_galerija], [preview]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(7754234 AS Numeric(18, 0)))
INSERT [dbo].[GALERIJA] ([ID_galerija], [preview]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(2352465 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[GALERIJA] OFF
GO
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazik_n], [naslov], [opis]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Great Gallery Image', N'Description of the image')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazik_n], [naslov], [opis]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Second Image', N'Description of the second image')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazik_n], [naslov], [opis]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Third Image', N'Description of the third image')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazik_n], [naslov], [opis]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Fourth Gallery Image', N'Description of the fourth image')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazik_n], [naslov], [opis]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Fifth Gallery Image', N'Description of the fifth image')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazik_n], [naslov], [opis]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Sixth Gallery Image', N'Description of the sixth image')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazik_n], [naslov], [opis]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Seventh Gallery Image', N'Description of the seventh image')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazik_n], [naslov], [opis]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'Eighth Gallery Image', N'Description of the eighth image')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazik_n], [naslov], [opis]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Ninth Gallery Image', N'Description of the ninth image')
INSERT [dbo].[GALERIJA_OPIS] ([gal_id_galerija], [jazik_id_jazik_n], [naslov], [opis]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Tenth Gallery Image', N'Description of the tenth image')
GO
SET IDENTITY_INSERT [dbo].[GALERIJA_SLIKA] ON 

INSERT [dbo].[GALERIJA_SLIKA] ([ID_slika], [gal_id_galerija], [opis_slika], [slika], [opis_slika_eng]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'This is an image of the number 2', N'2.jpg', N'Description, but in English')
INSERT [dbo].[GALERIJA_SLIKA] ([ID_slika], [gal_id_galerija], [opis_slika], [slika], [opis_slika_eng]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'This is an image of the number 5', N'5.jpg', N'Description, but in English')
INSERT [dbo].[GALERIJA_SLIKA] ([ID_slika], [gal_id_galerija], [opis_slika], [slika], [opis_slika_eng]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'This is an image of the number 1', N'1.jpg', N'Description, but in English')
INSERT [dbo].[GALERIJA_SLIKA] ([ID_slika], [gal_id_galerija], [opis_slika], [slika], [opis_slika_eng]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'This is an image of the number 7', N'7.jpg', N'Description, but in English')
INSERT [dbo].[GALERIJA_SLIKA] ([ID_slika], [gal_id_galerija], [opis_slika], [slika], [opis_slika_eng]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'This is an image of the number 3', N'3.jpg', N'Description, but in English')
INSERT [dbo].[GALERIJA_SLIKA] ([ID_slika], [gal_id_galerija], [opis_slika], [slika], [opis_slika_eng]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'This is an image of the number 6', N'6.jpg', N'Description, but in English')
INSERT [dbo].[GALERIJA_SLIKA] ([ID_slika], [gal_id_galerija], [opis_slika], [slika], [opis_slika_eng]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), N'This is an image of the number 9', N'9.jpg', N'Description, but in English')
INSERT [dbo].[GALERIJA_SLIKA] ([ID_slika], [gal_id_galerija], [opis_slika], [slika], [opis_slika_eng]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'This is an image of the number 8', N'8.jpg', N'Description, but in English')
INSERT [dbo].[GALERIJA_SLIKA] ([ID_slika], [gal_id_galerija], [opis_slika], [slika], [opis_slika_eng]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'This is an image of the number 4', N'4.jpg', N'Description, but in English')
INSERT [dbo].[GALERIJA_SLIKA] ([ID_slika], [gal_id_galerija], [opis_slika], [slika], [opis_slika_eng]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), N'This is an image of the number 10', N'10.jpg', N'Description, but in English')
SET IDENTITY_INSERT [dbo].[GALERIJA_SLIKA] OFF
GO
SET IDENTITY_INSERT [dbo].[JAZIK] ON 

INSERT [dbo].[JAZIK] ([ID_jazik], [jazik]) VALUES (CAST(1 AS Numeric(18, 0)), N'English')
INSERT [dbo].[JAZIK] ([ID_jazik], [jazik]) VALUES (CAST(2 AS Numeric(18, 0)), N'Macedonian')
INSERT [dbo].[JAZIK] ([ID_jazik], [jazik]) VALUES (CAST(3 AS Numeric(18, 0)), N'German')
INSERT [dbo].[JAZIK] ([ID_jazik], [jazik]) VALUES (CAST(4 AS Numeric(18, 0)), N'Japanese')
INSERT [dbo].[JAZIK] ([ID_jazik], [jazik]) VALUES (CAST(5 AS Numeric(18, 0)), N'Italian')
INSERT [dbo].[JAZIK] ([ID_jazik], [jazik]) VALUES (CAST(6 AS Numeric(18, 0)), N'Chinese')
INSERT [dbo].[JAZIK] ([ID_jazik], [jazik]) VALUES (CAST(7 AS Numeric(18, 0)), N'French')
INSERT [dbo].[JAZIK] ([ID_jazik], [jazik]) VALUES (CAST(8 AS Numeric(18, 0)), N'Indonesian')
INSERT [dbo].[JAZIK] ([ID_jazik], [jazik]) VALUES (CAST(9 AS Numeric(18, 0)), N'Spanish')
INSERT [dbo].[JAZIK] ([ID_jazik], [jazik]) VALUES (CAST(10 AS Numeric(18, 0)), N'Norwegian')
SET IDENTITY_INSERT [dbo].[JAZIK] OFF
GO
SET IDENTITY_INSERT [dbo].[KADMINISTRATOR] ON 

INSERT [dbo].[KADMINISTRATOR] ([ID_admin], [username], [password], [ime], [telefon]) VALUES (CAST(1 AS Numeric(18, 0)), N'markrose', N'haha123', N'Mark', N'3521503852')
INSERT [dbo].[KADMINISTRATOR] ([ID_admin], [username], [password], [ime], [telefon]) VALUES (CAST(2 AS Numeric(18, 0)), N'tendawte', N'passoword', N'Tenda', N'5285103581')
INSERT [dbo].[KADMINISTRATOR] ([ID_admin], [username], [password], [ime], [telefon]) VALUES (CAST(3 AS Numeric(18, 0)), N'gilbert23', N'palmtrees5', N'Gilbert', N'3864271339')
INSERT [dbo].[KADMINISTRATOR] ([ID_admin], [username], [password], [ime], [telefon]) VALUES (CAST(4 AS Numeric(18, 0)), N'pekopeko', N'tuntun12', N'Peko', N'1332569137')
INSERT [dbo].[KADMINISTRATOR] ([ID_admin], [username], [password], [ime], [telefon]) VALUES (CAST(5 AS Numeric(18, 0)), N'sans', N'quesnola%#5Fkf', N'Sans', N'6683925138')
INSERT [dbo].[KADMINISTRATOR] ([ID_admin], [username], [password], [ime], [telefon]) VALUES (CAST(6 AS Numeric(18, 0)), N'bennyBoy', N'ggkeNVS', N'Benneth', N'1196381123')
INSERT [dbo].[KADMINISTRATOR] ([ID_admin], [username], [password], [ime], [telefon]) VALUES (CAST(7 AS Numeric(18, 0)), N'treeegdfs', N'fgljhpewoimt', N'Teer', N'3295712359')
INSERT [dbo].[KADMINISTRATOR] ([ID_admin], [username], [password], [ime], [telefon]) VALUES (CAST(8 AS Numeric(18, 0)), N'Tuu_nga', N'h(MHUHFMSKEJf', N'Tunga', N'2921573983')
INSERT [dbo].[KADMINISTRATOR] ([ID_admin], [username], [password], [ime], [telefon]) VALUES (CAST(9 AS Numeric(18, 0)), N'Zendalo', N'3359dkfhs9v', N'Zenny', N'1935667428')
INSERT [dbo].[KADMINISTRATOR] ([ID_admin], [username], [password], [ime], [telefon]) VALUES (CAST(10 AS Numeric(18, 0)), N'Finnito', N'LFGJISefs', N'Finnla', N'3228859118')
SET IDENTITY_INSERT [dbo].[KADMINISTRATOR] OFF
GO
SET IDENTITY_INSERT [dbo].[KDOKUMENT] ON 

INSERT [dbo].[KDOKUMENT] ([ID_dokument], [naslov], [jazik_id_jazik_n], [dokument], [prikaz]) VALUES (CAST(1 AS Numeric(18, 0)), N'Ride of your Life', CAST(1 AS Numeric(18, 0)), N'ride.txt', CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([ID_dokument], [naslov], [jazik_id_jazik_n], [dokument], [prikaz]) VALUES (CAST(2 AS Numeric(18, 0)), N'Tunnel Vision', CAST(3 AS Numeric(18, 0)), N'tunnels.txt', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([ID_dokument], [naslov], [jazik_id_jazik_n], [dokument], [prikaz]) VALUES (CAST(3 AS Numeric(18, 0)), N'Galaxy Dentures', CAST(4 AS Numeric(18, 0)), N'galaxy.rtf', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([ID_dokument], [naslov], [jazik_id_jazik_n], [dokument], [prikaz]) VALUES (CAST(4 AS Numeric(18, 0)), N'Simulated Shapes', CAST(7 AS Numeric(18, 0)), N'shapes.txt', CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([ID_dokument], [naslov], [jazik_id_jazik_n], [dokument], [prikaz]) VALUES (CAST(5 AS Numeric(18, 0)), N'Bar Nights', CAST(5 AS Numeric(18, 0)), N'bar.rtf', CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([ID_dokument], [naslov], [jazik_id_jazik_n], [dokument], [prikaz]) VALUES (CAST(6 AS Numeric(18, 0)), N'Talladega Nights', CAST(1 AS Numeric(18, 0)), N'nights.txt', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([ID_dokument], [naslov], [jazik_id_jazik_n], [dokument], [prikaz]) VALUES (CAST(7 AS Numeric(18, 0)), N'Romance Is Not Dead', CAST(6 AS Numeric(18, 0)), N'romance.txt', CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([ID_dokument], [naslov], [jazik_id_jazik_n], [dokument], [prikaz]) VALUES (CAST(8 AS Numeric(18, 0)), N'One way Down', CAST(1 AS Numeric(18, 0)), N'down.txt', CAST(15 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([ID_dokument], [naslov], [jazik_id_jazik_n], [dokument], [prikaz]) VALUES (CAST(9 AS Numeric(18, 0)), N'Kingdom Come', CAST(9 AS Numeric(18, 0)), N'kingdom.txt', CAST(11 AS Numeric(18, 0)))
INSERT [dbo].[KDOKUMENT] ([ID_dokument], [naslov], [jazik_id_jazik_n], [dokument], [prikaz]) VALUES (CAST(10 AS Numeric(18, 0)), N'Finale', CAST(2 AS Numeric(18, 0)), N'finale.rtf', CAST(9 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[KDOKUMENT] OFF
GO
SET IDENTITY_INSERT [dbo].[KNOVOST] ON 

INSERT [dbo].[KNOVOST] ([ID_novost], [adm_id_admin_n], [jazik_id_jazik_n], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'A great title', N'An Opis', CAST(N'1905-06-27T00:00:00.000' AS DateTime), CAST(N'1905-06-24T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([ID_novost], [adm_id_admin_n], [jazik_id_jazik_n], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Theory of Leagues', N'Opis Dos', CAST(N'1905-06-14T00:00:00.000' AS DateTime), CAST(N'1905-06-26T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([ID_novost], [adm_id_admin_n], [jazik_id_jazik_n], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Thunder Dome', N'Opis Trois', CAST(N'1905-06-18T00:00:00.000' AS DateTime), CAST(N'1905-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([ID_novost], [adm_id_admin_n], [jazik_id_jazik_n], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'Genshin Stories', N'Opis Quattro', CAST(N'1905-06-26T00:00:00.000' AS DateTime), CAST(N'1905-06-20T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([ID_novost], [adm_id_admin_n], [jazik_id_jazik_n], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'22 Years Later', N'Legendary Opis', CAST(N'1905-07-01T00:00:00.000' AS DateTime), CAST(N'1905-06-29T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([ID_novost], [adm_id_admin_n], [jazik_id_jazik_n], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Louisiana River', N'Opis', CAST(N'1905-06-28T00:00:00.000' AS DateTime), CAST(N'1905-06-19T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([ID_novost], [adm_id_admin_n], [jazik_id_jazik_n], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), N'Motorist Law', N'Opis 7', CAST(N'1905-06-27T00:00:00.000' AS DateTime), CAST(N'1905-07-06T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([ID_novost], [adm_id_admin_n], [jazik_id_jazik_n], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'Gun go Boom', N'Chuckler', CAST(N'1905-06-12T00:00:00.000' AS DateTime), CAST(N'1905-06-24T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([ID_novost], [adm_id_admin_n], [jazik_id_jazik_n], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), N'Mission Possible', N'Peklor', CAST(N'1905-06-27T00:00:00.000' AS DateTime), CAST(N'1905-07-03T00:00:00.000' AS DateTime))
INSERT [dbo].[KNOVOST] ([ID_novost], [adm_id_admin_n], [jazik_id_jazik_n], [naslov], [opis], [datum_od], [datum_do]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Open Up', N'Opeace', CAST(N'1905-06-24T00:00:00.000' AS DateTime), CAST(N'1905-06-08T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KNOVOST] OFF
GO
INSERT [dbo].[MAILING] ([email_id_posetitel], [email_id_grupa]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([email_id_posetitel], [email_id_grupa]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([email_id_posetitel], [email_id_grupa]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([email_id_posetitel], [email_id_grupa]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([email_id_posetitel], [email_id_grupa]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([email_id_posetitel], [email_id_grupa]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([email_id_posetitel], [email_id_grupa]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([email_id_posetitel], [email_id_grupa]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([email_id_posetitel], [email_id_grupa]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([email_id_posetitel], [email_id_grupa]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)))
INSERT [dbo].[MAILING] ([email_id_posetitel], [email_id_grupa]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)))
GO
ALTER TABLE [dbo].[EMAIL_GRUPA]  WITH CHECK ADD  CONSTRAINT [FK_jazik_to_email_group] FOREIGN KEY([jazik_id_jazik_n])
REFERENCES [dbo].[JAZIK] ([ID_jazik])
GO
ALTER TABLE [dbo].[EMAIL_GRUPA] CHECK CONSTRAINT [FK_jazik_to_email_group]
GO
ALTER TABLE [dbo].[EMAIL_PORAKA]  WITH CHECK ADD  CONSTRAINT [FK_EMAIL_PORAKA_EMAIL_GRUPA] FOREIGN KEY([grupa_id_grupa])
REFERENCES [dbo].[EMAIL_GRUPA] ([ID_grupa])
GO
ALTER TABLE [dbo].[EMAIL_PORAKA] CHECK CONSTRAINT [FK_EMAIL_PORAKA_EMAIL_GRUPA]
GO
ALTER TABLE [dbo].[GALERIJA_OPIS]  WITH CHECK ADD  CONSTRAINT [FK_GALERIJA_OPIS_GALERIJA] FOREIGN KEY([gal_id_galerija])
REFERENCES [dbo].[GALERIJA] ([ID_galerija])
GO
ALTER TABLE [dbo].[GALERIJA_OPIS] CHECK CONSTRAINT [FK_GALERIJA_OPIS_GALERIJA]
GO
ALTER TABLE [dbo].[GALERIJA_OPIS]  WITH CHECK ADD  CONSTRAINT [FK_GALERIJA_OPIS_JAZIK] FOREIGN KEY([jazik_id_jazik_n])
REFERENCES [dbo].[JAZIK] ([ID_jazik])
GO
ALTER TABLE [dbo].[GALERIJA_OPIS] CHECK CONSTRAINT [FK_GALERIJA_OPIS_JAZIK]
GO
ALTER TABLE [dbo].[GALERIJA_SLIKA]  WITH CHECK ADD  CONSTRAINT [FK_GALERIJA_SLIKA_GALERIJA] FOREIGN KEY([gal_id_galerija])
REFERENCES [dbo].[GALERIJA] ([ID_galerija])
GO
ALTER TABLE [dbo].[GALERIJA_SLIKA] CHECK CONSTRAINT [FK_GALERIJA_SLIKA_GALERIJA]
GO
ALTER TABLE [dbo].[KDOKUMENT]  WITH CHECK ADD  CONSTRAINT [FK_jazik-to-kdokument] FOREIGN KEY([jazik_id_jazik_n])
REFERENCES [dbo].[JAZIK] ([ID_jazik])
GO
ALTER TABLE [dbo].[KDOKUMENT] CHECK CONSTRAINT [FK_jazik-to-kdokument]
GO
ALTER TABLE [dbo].[KNOVOST]  WITH CHECK ADD  CONSTRAINT [FK_admin-to-novost] FOREIGN KEY([adm_id_admin_n])
REFERENCES [dbo].[KADMINISTRATOR] ([ID_admin])
GO
ALTER TABLE [dbo].[KNOVOST] CHECK CONSTRAINT [FK_admin-to-novost]
GO
ALTER TABLE [dbo].[KNOVOST]  WITH CHECK ADD  CONSTRAINT [FK_jazik-id-to-novost] FOREIGN KEY([jazik_id_jazik_n])
REFERENCES [dbo].[JAZIK] ([ID_jazik])
GO
ALTER TABLE [dbo].[KNOVOST] CHECK CONSTRAINT [FK_jazik-id-to-novost]
GO
ALTER TABLE [dbo].[MAILING]  WITH CHECK ADD  CONSTRAINT [FK_grupa] FOREIGN KEY([email_id_grupa])
REFERENCES [dbo].[EMAIL_GRUPA] ([ID_grupa])
GO
ALTER TABLE [dbo].[MAILING] CHECK CONSTRAINT [FK_grupa]
GO
ALTER TABLE [dbo].[MAILING]  WITH CHECK ADD  CONSTRAINT [FK_posetitel] FOREIGN KEY([email_id_posetitel])
REFERENCES [dbo].[EMAIL] ([ID_posetitel])
GO
ALTER TABLE [dbo].[MAILING] CHECK CONSTRAINT [FK_posetitel]
GO
/****** Object:  StoredProcedure [dbo].[P_2_A]    Script Date: 10/21/2020 3:04:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_2_A]
@LangID as numeric(1,0)
AS
SELECT naslov,opis,gal_id_galerija FROM GALERIJA_OPIS
WHERE jazik_id_jazik_n = @LangID;
GO
/****** Object:  StoredProcedure [dbo].[P_2_B]    Script Date: 10/21/2020 3:04:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_2_B]
AS
SELECT jazik, ime, ID_novost 
FROM KNOVOST a
INNER JOIN JAZIK b on a.jazik_id_jazik_n = b.ID_jazik
INNER JOIN KADMINISTRATOR c on a.adm_id_admin_n = c.ID_admin;
GO
/****** Object:  StoredProcedure [dbo].[P_2_C]    Script Date: 10/21/2020 3:04:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_2_C]
AS
SELECT ime, naziv
FROM MAILING a
INNER JOIN EMAIL b on a.email_id_posetitel = b.ID_posetitel
INNER JOIN EMAIL_GRUPA c on a.email_id_grupa = c.ID_grupa
ORDER BY ime;
GO
/****** Object:  StoredProcedure [dbo].[P_2_D]    Script Date: 10/21/2020 3:04:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_2_D]
@GroupID as numeric(1,0)
AS
SELECT naslov, tekst
FROM EMAIL_PORAKA a
INNER JOIN EMAIL_GRUPA b on a.grupa_id_grupa = ID_grupa
WHERE aktivna = 1 AND ID_grupa = @GroupID;
GO
USE [master]
GO
ALTER DATABASE [Karavan_4187] SET  READ_WRITE 
GO
