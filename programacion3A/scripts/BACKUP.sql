USE [master]
GO
/****** Object:  Database [PrograIII2023COPY]    Script Date: 7/29/2023 2:24:50 PM ******/
CREATE DATABASE [PrograIII2023COPY]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PrograIII2023COPY', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\PrograIII2023COPY.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PrograIII2023COPY_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\PrograIII2023COPY_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PrograIII2023COPY] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PrograIII2023COPY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PrograIII2023COPY] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET ARITHABORT OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PrograIII2023COPY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PrograIII2023COPY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PrograIII2023COPY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PrograIII2023COPY] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PrograIII2023COPY] SET  MULTI_USER 
GO
ALTER DATABASE [PrograIII2023COPY] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PrograIII2023COPY] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PrograIII2023COPY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PrograIII2023COPY] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PrograIII2023COPY] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PrograIII2023COPY] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PrograIII2023COPY] SET QUERY_STORE = OFF
GO
USE [PrograIII2023COPY]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 7/29/2023 2:24:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PrimerNombre] [nvarchar](50) NOT NULL,
	[SegundoNombre] [nvarchar](50) NULL,
	[PrimerApellido] [nvarchar](50) NOT NULL,
	[SegundoApellido] [nvarchar](50) NULL,
	[Carnet] [int] NOT NULL,
	[Celular] [int] NULL,
	[TelefonoCasa] [int] NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Alumno] ON 
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1, N'Pedro', N'Jose', N'Chanquin', N'Bross', 654521, 45214578, 456456456)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (3, N'Junior', N'Oliver', N'Chiquin', N'Pajarito', 654521, NULL, NULL)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (4, N'Juan', N'Leonardo', N'Garcia', N'Perez', 654521, 45214578, 456456456)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (5, N'Heber', N'Miguel', N'Calan', N'Boror', 785445, 98765465, 64598754)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (6, N'Padget', N'Ransell', N'Whitehurst', N'Doncom', 1, 1, 1)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (7, N'Lemar', N'Mile', N'Louca', N'Guillard', 1, 1, 1)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (8, N'Caddric', N'Rosamond', N'Iacabucci', N'Tait', 2, 2, 2)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (9, N'Norah', N'Judah', N'Fairley', N'Sibthorpe', 3, 3, 3)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (10, N'Sofie', N'Eve', N'Willowby', N'Sitlington', 4, 4, 4)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (11, N'Christean', N'Sayres', N'Issitt', N'MacNeilley', 5, 5, 5)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (12, N'Halley', N'Rosetta', N'MacIlraith', N'MacWhan', 6, 6, 6)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (13, N'Cirillo', N'Franzen', N'Ravel', N'Bossons', 7, 7, 7)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (14, N'Ida', N'Auria', N'Gemnett', N'Dany', 8, 8, 8)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (15, N'Nat', N'Delmor', N'Bach', N'Zemler', 9, 9, 9)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (16, N'Loydie', N'Rosene', N'Habard', N'Gaze', 10, 10, 10)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (17, N'Sal', N'Taryn', N'Testro', N'Gaylard', 11, 11, 11)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (18, N'Binnie', N'Merell', N'Foat', N'Dorrance', 12, 12, 12)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (19, N'Davon', N'Faustine', N'Charrier', N'Olivelli', 13, 13, 13)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (20, N'Joshuah', N'Lucais', N'Warby', N'Wigg', 14, 14, 14)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (21, N'Risa', N'Ginger', N'Tureville', N'Crowdson', 15, 15, 15)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (22, N'Rurik', N'Feliza', N'Andreasen', N'Fitkin', 16, 16, 16)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (23, N'Oran', N'Haslett', N'Noller', N'Bundock', 17, 17, 17)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (24, N'Hulda', N'Gasper', N'Jacques', N'Senechell', 18, 18, 18)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (25, N'Nelle', N'Deirdre', N'Brasner', N'Joint', 19, 19, 19)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (26, N'Collen', N'Elmo', N'Fermin', N'Hearson', 20, 20, 20)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (27, N'Sarita', N'Weylin', N'Butts', N'Bly', 21, 21, 21)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (28, N'Chev', N'Angie', N'Emlin', N'Bootman', 22, 22, 22)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (29, N'Fran', N'Bard', N'Costall', N'Tregea', 23, 23, 23)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (30, N'Thomas', N'Stephanie', N'Adger', N'Cadwaladr', 24, 24, 24)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (31, N'Winny', N'Merl', N'Van Ross', N'Carding', 25, 25, 25)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (32, N'Iormina', N'Marline', N'Rycraft', N'Thom', 26, 26, 26)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (33, N'Idell', N'Cly', N'Beadham', N'Hankard', 27, 27, 27)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (34, N'Shirlee', N'Glynn', N'Sikorsky', N'Jaggli', 28, 28, 28)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (35, N'Lemmy', N'Hurlee', N'Musto', N'Joynson', 29, 29, 29)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (36, N'Emanuel', N'Neville', N'Coppeard', N'Drohane', 30, 30, 30)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (37, N'Norbert', N'Darell', N'Anglish', N'Jendrach', 31, 31, 31)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (38, N'Kristoffer', N'Elana', N'Rubinek', N'Brychan', 32, 32, 32)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (39, N'Petra', N'Christie', N'Leathley', N'Spencers', 33, 33, 33)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (40, N'Terra', N'Alysia', N'Sonley', N'Gynne', 34, 34, 34)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (41, N'Robbie', N'Sally', N'Bank', N'Lloyds', 35, 35, 35)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (42, N'Dulcea', N'Alyse', N'Whilder', N'Stickland', 36, 36, 36)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (43, N'Lib', N'Weber', N'Francescone', N'Crummy', 37, 37, 37)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (44, N'Kimberlee', N'Richmound', N'Ciardo', N'Gellert', 38, 38, 38)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (45, N'Allyn', N'Hyacintha', N'Wesley', N'Cuseck', 39, 39, 39)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (46, N'Bord', N'Shanan', N'Keel', N'Minto', 40, 40, 40)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (47, N'Krissie', N'Giuseppe', N'Cozins', N'Spondley', 41, 41, 41)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (48, N'Merry', N'Rania', N'Burthom', N'Zarfati', 42, 42, 42)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (49, N'Avie', N'Moll', N'Thing', N'McGowing', 43, 43, 43)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (50, N'Bat', N'Jorey', N'Chopin', N'Vallerine', 44, 44, 44)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (51, N'Johna', N'Ludovika', N'Tellenbrook', N'Pruckner', 45, 45, 45)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (52, N'Jorey', N'Chicky', N'Udey', N'Royste', 46, 46, 46)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (53, N'Terese', N'Berke', N'McCurlye', N'Rickword', 47, 47, 47)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (54, N'Noemi', N'Brandon', N'Addionisio', N'Crowche', 48, 48, 48)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (55, N'Danita', N'Eirena', N'Werndley', N'Luberto', 49, 49, 49)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (56, N'Morris', N'Krysta', N'Diable', N'Robrose', 50, 50, 50)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (57, N'Beverly', N'Aeriel', N'Anscott', N'Simnel', 51, 51, 51)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (58, N'Valaria', N'Aleksandr', N'Stonhewer', N'Birtwhistle', 52, 52, 52)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (59, N'Germana', N'Frederik', N'MacGilmartin', N'Whiley', 53, 53, 53)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (60, N'Ashlan', N'Vivyan', N'Ben', N'Terney', 54, 54, 54)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (61, N'Else', N'Kalinda', N'Boycott', N'Whitloe', 55, 55, 55)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (62, N'Ashlen', N'Freddie', N'Kilian', N'Vowell', 56, 56, 56)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (63, N'Tobe', N'Addy', N'Filoniere', N'Lusk', 57, 57, 57)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (64, N'Oralie', N'Toma', N'Benez', N'Keslake', 58, 58, 58)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (65, N'Antoni', N'Forrest', N'Bunworth', N'Cherrison', 59, 59, 59)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (66, N'Cathrine', N'Colly', N'Ziem', N'Knoton', 60, 60, 60)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (67, N'Duncan', N'Jobina', N'Woehler', N'Haggas', 61, 61, 61)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (68, N'Claudine', N'Brok', N'Skewis', N'Gait', 62, 62, 62)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (69, N'Andrea', N'Reyna', N'Sier', N'Gammons', 63, 63, 63)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (70, N'Rodrigo', N'Enoch', N'Fanti', N'Luckham', 64, 64, 64)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (71, N'Trueman', N'Bertine', N'Ferroli', N'Winchcombe', 65, 65, 65)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (72, N'Matthiew', N'Raynor', N'Spavon', N'Bartholomaus', 66, 66, 66)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (73, N'Kerrie', N'Susannah', N'Oleksiak', N'Franzini', 67, 67, 67)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (74, N'Ricki', N'Wylie', N'Dickie', N'Caulfield', 68, 68, 68)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (75, N'Dani', N'Harv', N'Beer', N'Cleaveland', 69, 69, 69)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (76, N'Hermann', N'Stephannie', N'Hasted', N'Nicolls', 70, 70, 70)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (77, N'Harriet', N'Calli', N'Lambe', N'Worters', 71, 71, 71)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (78, N'Faina', N'Jessa', N'Lidstone', N'Torbett', 72, 72, 72)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (79, N'Saul', N'Eadie', N'Baylie', N'Arne', 73, 73, 73)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (80, N'Jarrett', N'Gigi', N'Ladley', N'Lanigan', 74, 74, 74)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (81, N'Ardath', N'Dave', N'Rieger', N'Mounce', 75, 75, 75)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (82, N'Nicko', N'Janet', N'Denniss', N'O''Codihie', 76, 76, 76)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (83, N'Jayme', N'Bobinette', N'Frayling', N'Riepl', 77, 77, 77)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (84, N'Jemmy', N'Carena', N'Burchett', N'Bosomworth', 78, 78, 78)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (85, N'Aguie', N'Deck', N'Waldrum', N'Gogerty', 79, 79, 79)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (86, N'Tedi', N'Clevie', N'Eshelby', N'Foy', 80, 80, 80)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (87, N'Analiese', N'Katie', N'Dyett', N'Crickmer', 81, 81, 81)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (88, N'Perren', N'Dominique', N'Lethabridge', N'Findlater', 82, 82, 82)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (89, N'Monah', N'Odey', N'Kacheler', N'McDugal', 83, 83, 83)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (90, N'Malissa', N'Sioux', N'Pigot', N'Bondesen', 84, 84, 84)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (91, N'Sayers', N'Suellen', N'Hake', N'MacFie', 85, 85, 85)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (92, N'Sher', N'Dietrich', N'Nutbeem', N'De Bruyne', 86, 86, 86)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (93, N'Barbabra', N'Elisha', N'Cervantes', N'Wrotham', 87, 87, 87)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (94, N'Adelaide', N'Cobb', N'Coit', N'Wason', 88, 88, 88)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (95, N'Grete', N'Daren', N'Winspar', N'Schinetti', 89, 89, 89)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (96, N'Vivianna', N'Abigail', N'MacCarlich', N'Weekly', 90, 90, 90)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (97, N'Irene', N'Horacio', N'Pretley', N'Croysdale', 91, 91, 91)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (98, N'Osmund', N'Kassandra', N'Pablos', N'Poate', 92, 92, 92)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (99, N'Meryl', N'Wallie', N'Geerits', N'Eddow', 93, 93, 93)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (100, N'Zarla', N'Corny', N'Matantsev', N'Eliez', 94, 94, 94)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (101, N'Christophorus', N'Lauraine', N'Cromack', N'Smylie', 95, 95, 95)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (102, N'Ware', N'Arlen', N'Churchill', N'Greeding', 96, 96, 96)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (103, N'Kimbra', N'Suzie', N'Swaffer', N'Leyton', 97, 97, 97)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (104, N'Emmie', N'Emmye', N'Stirrup', N'Ratazzi', 98, 98, 98)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (105, N'Ermentrude', N'Jeralee', N'Kubelka', N'Forstall', 99, 99, 99)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (106, N'Raimondo', N'Wally', N'Measures', N'Towell', 100, 100, 100)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (107, N'Montgomery', N'Melba', N'Keith', N'Grigoriscu', 101, 101, 101)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (108, N'Aleksandr', N'Harrie', N'Baglan', N'Boame', 102, 102, 102)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (109, N'Jody', N'Parke', N'Besemer', N'Browncey', 103, 103, 103)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (110, N'Pepe', N'Larry', N'Tewnion', N'Proske', 104, 104, 104)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (111, N'Rog', N'Friedrich', N'Pionter', N'Benedito', 105, 105, 105)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (112, N'Alanson', N'Dallis', N'Woodyatt', N'Norridge', 106, 106, 106)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (113, N'Leesa', N'Stanleigh', N'Collins', N'Skittrell', 107, 107, 107)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (114, N'Johnny', N'Dex', N'Veschi', N'Frostick', 108, 108, 108)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (115, N'Quinn', N'Allx', N'Barhims', N'Gero', 109, 109, 109)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (116, N'Ralph', N'Wilfred', N'Worrall', N'Shills', 110, 110, 110)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (117, N'Adrian', N'Ladonna', N'Alenikov', N'Jarratt', 111, 111, 111)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (118, N'Felice', N'Alexander', N'Benesevich', N'Karlowicz', 112, 112, 112)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (119, N'Jorey', N'Rusty', N'Osgodby', N'Ace', 113, 113, 113)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (120, N'Eb', N'Reid', N'Patman', N'Dumbleton', 114, 114, 114)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (121, N'Ned', N'Hashim', N'Titmuss', N'Bothams', 115, 115, 115)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (122, N'Bradley', N'Iain', N'Lancetter', N'Boyan', 116, 116, 116)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (123, N'Derrek', N'Peg', N'Misselbrook', N'Lambertazzi', 117, 117, 117)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (124, N'Vite', N'Chuck', N'MacTeggart', N'Cleevely', 118, 118, 118)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (125, N'Keri', N'Brittaney', N'Tudor', N'Scohier', 119, 119, 119)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (126, N'Corilla', N'Gretchen', N'Battle', N'Van den Velde', 120, 120, 120)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (127, N'Papagena', N'Sharyl', N'Ife', N'Lampke', 121, 121, 121)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (128, N'Ricardo', N'Aubrie', N'Futty', N'Bazek', 122, 122, 122)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (129, N'Aigneis', N'Debor', N'Berrisford', N'Read', 123, 123, 123)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (130, N'Elnora', N'Terri', N'Velden', N'Lansdown', 124, 124, 124)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (131, N'Tiffi', N'Tamiko', N'Ferrige', N'Sharphouse', 125, 125, 125)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (132, N'Lolly', N'Marlie', N'Keyzman', N'Delcastel', 126, 126, 126)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (133, N'Albertina', N'Tim', N'Joanaud', N'Ree', 127, 127, 127)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (134, N'Tremayne', N'Morganica', N'Orae', N'McLice', 128, 128, 128)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (135, N'Hasheem', N'Israel', N'Burr', N'Hadley', 129, 129, 129)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (136, N'Kirsteni', N'Nikola', N'Scriven', N'Church', 130, 130, 130)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (137, N'Devin', N'Leontine', N'Plumbridge', N'Bruineman', 131, 131, 131)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (138, N'Valentine', N'Randene', N'Tebbutt', N'Kores', 132, 132, 132)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (139, N'Shalom', N'Kane', N'Targetter', N'Ionnidis', 133, 133, 133)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (140, N'Eirena', N'Meara', N'Bolesma', N'Foot', 134, 134, 134)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (141, N'Evered', N'Raven', N'Sissland', N'Crozier', 135, 135, 135)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (142, N'Marmaduke', N'Holly', N'Chasmor', N'Darcy', 136, 136, 136)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (143, N'Brietta', N'Dietrich', N'Hoolaghan', N'Muckleston', 137, 137, 137)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (144, N'Melisandra', N'Nolly', N'Isack', N'Simondson', 138, 138, 138)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (145, N'Milissent', N'Bryana', N'Varndall', N'Cuddehy', 139, 139, 139)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (146, N'Umeko', N'Elsi', N'Jefferys', N'Kirvin', 140, 140, 140)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (147, N'Darryl', N'Flemming', N'Parnall', N'Townson', 141, 141, 141)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (148, N'Arin', N'Jarrod', N'Speller', N'Mullen', 142, 142, 142)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (149, N'Patten', N'Vilma', N'Marcoolyn', N'Epton', 143, 143, 143)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (150, N'Aurel', N'Omar', N'Wheeldon', N'McNirlin', 144, 144, 144)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (151, N'Zarla', N'Layton', N'Radloff', N'Boustred', 145, 145, 145)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (152, N'Stefa', N'Murry', N'Mager', N'Sears', 146, 146, 146)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (153, N'Abbi', N'Scarface', N'Thoumas', N'Puddicombe', 147, 147, 147)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (154, N'Gerry', N'Seana', N'Axelby', N'Masurel', 148, 148, 148)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (155, N'Rod', N'Karlens', N'Hellyar', N'Tether', 149, 149, 149)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (156, N'Carlie', N'Deena', N'Synnot', N'Sweetsur', 150, 150, 150)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (157, N'Torre', N'Edythe', N'Jiruca', N'Muston', 151, 151, 151)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (158, N'Belva', N'Marguerite', N'Semered', N'Hacquard', 152, 152, 152)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (159, N'Matthias', N'Flossi', N'De La Haye', N'MacDearmaid', 153, 153, 153)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (160, N'Diana', N'Ada', N'Minard', N'Woolveridge', 154, 154, 154)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (161, N'Carrol', N'Wayne', N'Jeanneau', N'Eakins', 155, 155, 155)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (162, N'Lissie', N'Kathy', N'Romei', N'O''Looney', 156, 156, 156)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (163, N'Angie', N'Kathryn', N'Marriner', N'Besson', 157, 157, 157)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (164, N'Konrad', N'Dill', N'Passey', N'Lorek', 158, 158, 158)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (165, N'Ross', N'Devonne', N'Brewer', N'Zoppo', 159, 159, 159)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (166, N'Regine', N'Adelaida', N'Murrow', N'Jukes', 160, 160, 160)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (167, N'Letti', N'Antonia', N'Wittrington', N'Leveridge', 161, 161, 161)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (168, N'Estevan', N'Raquel', N'Peris', N'Mitrovic', 162, 162, 162)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (169, N'Nettle', N'Zebulon', N'Kornilov', N'Levis', 163, 163, 163)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (170, N'Salvador', N'Harriot', N'Holbarrow', N'Bartholin', 164, 164, 164)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (171, N'Jodie', N'Ellette', N'Lacey', N'Stringer', 165, 165, 165)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (172, N'Yorke', N'Glad', N'Seekings', N'Ronnay', 166, 166, 166)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (173, N'Brittni', N'Jandy', N'Fawlks', N'O'' Byrne', 167, 167, 167)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (174, N'Jeth', N'Julee', N'Ballchin', N'Lieber', 168, 168, 168)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (175, N'Silva', N'Lilyan', N'Berens', N'Chatelet', 169, 169, 169)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (176, N'Hyacintha', N'Andi', N'Guidi', N'Teape', 170, 170, 170)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (177, N'Rhetta', N'Kippie', N'Bulluck', N'Gaukrodge', 171, 171, 171)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (178, N'Gilbert', N'Syman', N'Fidge', N'Wardroper', 172, 172, 172)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (179, N'Wynn', N'Jobyna', N'MacFadyen', N'Haresign', 173, 173, 173)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (180, N'Martin', N'Ferdinanda', N'Dahmel', N'Barthorpe', 174, 174, 174)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (181, N'Franciskus', N'Isobel', N'Raper', N'Howler', 175, 175, 175)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (182, N'Reinaldo', N'Ernst', N'Dreher', N'Hubback', 176, 176, 176)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (183, N'Ailis', N'Ellette', N'Nutting', N'Dockery', 177, 177, 177)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (184, N'Eldin', N'Wain', N'Buy', N'Pedrocco', 178, 178, 178)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (185, N'Moses', N'Rufus', N'Gotcliff', N'Shulem', 179, 179, 179)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (186, N'Homer', N'Karlik', N'Furlow', N'Christophe', 180, 180, 180)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (187, N'Elke', N'Kippie', N'McGready', N'Ethridge', 181, 181, 181)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (188, N'Aloise', N'Debee', N'Pettengell', N'Armin', 182, 182, 182)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (189, N'Elle', N'Vere', N'Fennelow', N'Collier', 183, 183, 183)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (190, N'Maurits', N'Elisa', N'Tippell', N'Blacket', 184, 184, 184)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (191, N'Sigmund', N'Viviana', N'Wainwright', N'Angliss', 185, 185, 185)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (192, N'Isador', N'Jaimie', N'Bigland', N'D''Agostini', 186, 186, 186)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (193, N'Thom', N'Brendis', N'Sedgwick', N'Horribine', 187, 187, 187)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (194, N'Werner', N'Beatrice', N'Narracott', N'Le Fleming', 188, 188, 188)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (195, N'Georgine', N'Lucais', N'Waddam', N'Bruty', 189, 189, 189)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (196, N'Sharyl', N'Christoforo', N'Harness', N'Leeves', 190, 190, 190)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (197, N'Ernie', N'Bernadette', N'Allanson', N'Everix', 191, 191, 191)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (198, N'Susannah', N'Winfred', N'Wey', N'Cornwall', 192, 192, 192)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (199, N'Lilith', N'Darbee', N'Ansett', N'Gaukroger', 193, 193, 193)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (200, N'Alica', N'Benjy', N'Drinkhall', N'Hobson', 194, 194, 194)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (201, N'Nickolas', N'Darline', N'Danihelka', N'Sivyour', 195, 195, 195)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (202, N'Teodor', N'Irene', N'Camies', N'Ballach', 196, 196, 196)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (203, N'Pembroke', N'Vale', N'Kindell', N'Roseveare', 197, 197, 197)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (204, N'Zara', N'Garold', N'Wrotham', N'Elliston', 198, 198, 198)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (205, N'Aldo', N'Kimmy', N'Seyffert', N'Hold', 199, 199, 199)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (206, N'Davidson', N'Jone', N'Binny', N'Nesterov', 200, 200, 200)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (207, N'Tedd', N'Ddene', N'Wavish', N'Face', 201, 201, 201)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (208, N'Bonnibelle', N'Tyrus', N'Eastbrook', N'Polkinghorne', 202, 202, 202)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (209, N'Morton', N'Matt', N'Dumbrall', N'Trowle', 203, 203, 203)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (210, N'Cherey', N'Alvin', N'Erasmus', N'Patters', 204, 204, 204)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (211, N'Lannie', N'Emlyn', N'Scotchmore', N'Bote', 205, 205, 205)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (212, N'Hervey', N'Dulsea', N'Toffalo', N'Karpenya', 206, 206, 206)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (213, N'Briano', N'Gonzalo', N'Purbrick', N'Kroin', 207, 207, 207)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (214, N'Loydie', N'Lacee', N'Marcoolyn', N'Presley', 208, 208, 208)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (215, N'Arden', N'Marleah', N'Battrum', N'Upjohn', 209, 209, 209)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (216, N'Myrtie', N'Steffane', N'Mebes', N'Bilton', 210, 210, 210)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (217, N'Anne-corinne', N'Tadd', N'Duffree', N'Attridge', 211, 211, 211)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (218, N'Lora', N'Opalina', N'Gerwood', N'Santacrole', 212, 212, 212)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (219, N'Giffie', N'Tannie', N'Ebbings', N'Spry', 213, 213, 213)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (220, N'Ermengarde', N'Nelia', N'Gumb', N'Schaumaker', 214, 214, 214)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (221, N'Chad', N'Goddard', N'Cellone', N'Haggard', 215, 215, 215)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (222, N'Stan', N'Thayne', N'Stubbeley', N'Stodit', 216, 216, 216)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (223, N'Denni', N'Erhart', N'Elmhirst', N'Ivanitsa', 217, 217, 217)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (224, N'Mona', N'Rosco', N'Kilmary', N'Chable', 218, 218, 218)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (225, N'Fleming', N'Lanette', N'Banasevich', N'Shawley', 219, 219, 219)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (226, N'Mac', N'Vasily', N'Hulks', N'Izaac', 220, 220, 220)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (227, N'Teresina', N'Tamar', N'Cheesley', N'Bovis', 221, 221, 221)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (228, N'Amye', N'Sheelagh', N'Hance', N'Cowdery', 222, 222, 222)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (229, N'Miller', N'Brianne', N'Hamblyn', N'Whyley', 223, 223, 223)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (230, N'Meg', N'Haroun', N'Fazzioli', N'McCormack', 224, 224, 224)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (231, N'Pooh', N'Jorge', N'Comford', N'Petras', 225, 225, 225)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (232, N'Lawton', N'Shep', N'Salvatore', N'Shenton', 226, 226, 226)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (233, N'Kendra', N'Dugald', N'Alennikov', N'Mayward', 227, 227, 227)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (234, N'Konstance', N'Arnaldo', N'Messruther', N'Lauks', 228, 228, 228)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (235, N'Mei', N'Kathie', N'Masedon', N'Kniveton', 229, 229, 229)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (236, N'Farrel', N'Karol', N'Steward', N'Alishoner', 230, 230, 230)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (237, N'Shayla', N'Brittany', N'Hardwidge', N'Shackell', 231, 231, 231)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (238, N'Denni', N'Valaria', N'Lowrie', N'Thrush', 232, 232, 232)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (239, N'Amelie', N'Shea', N'Border', N'Merryfield', 233, 233, 233)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (240, N'Cornell', N'Myrilla', N'Stonner', N'Vedekhin', 234, 234, 234)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (241, N'Honey', N'Mart', N'Lesek', N'McGivena', 235, 235, 235)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (242, N'Anthony', N'Kipp', N'Challenger', N'Webb', 236, 236, 236)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (243, N'Corri', N'Shayne', N'Herche', N'Pearmine', 237, 237, 237)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (244, N'Ario', N'Norrie', N'Jaqueminet', N'Clausius', 238, 238, 238)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (245, N'Jereme', N'Pollyanna', N'McGroarty', N'Blincow', 239, 239, 239)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (246, N'Ebeneser', N'Hayley', N'Reek', N'Springford', 240, 240, 240)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (247, N'Vidovik', N'Addy', N'Leafe', N'Doubleday', 241, 241, 241)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (248, N'Denny', N'Kristofor', N'Christian', N'Fader', 242, 242, 242)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (249, N'Sammie', N'Demetri', N'Ashe', N'Whoolehan', 243, 243, 243)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (250, N'Arne', N'Skipp', N'Olligan', N'Bedborough', 244, 244, 244)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (251, N'Galven', N'Esta', N'Harner', N'Corkel', 245, 245, 245)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (252, N'Erl', N'Teddie', N'Bulger', N'Kopman', 246, 246, 246)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (253, N'Brynn', N'Nichols', N'Brompton', N'Styant', 247, 247, 247)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (254, N'Page', N'Gilbert', N'Kulicke', N'Ludmann', 248, 248, 248)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (255, N'Novelia', N'Celina', N'Probets', N'Laguerre', 249, 249, 249)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (256, N'Ric', N'Essa', N'Fairlam', N'Spencelayh', 250, 250, 250)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (257, N'Mickie', N'Lucinda', N'Grason', N'Prothero', 251, 251, 251)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (258, N'Niels', N'Ignacio', N'Chess', N'Whitty', 252, 252, 252)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (259, N'Fletcher', N'Fanya', N'Irving', N'Horsburgh', 253, 253, 253)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (260, N'Rosella', N'Reed', N'McGrath', N'Coggell', 254, 254, 254)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (261, N'Chloris', N'Emerson', N'Lynett', N'Saladino', 255, 255, 255)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (262, N'Rip', N'Gerard', N'Pllu', N'Billingham', 256, 256, 256)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (263, N'Mable', N'Aldwin', N'Cucinotta', N'Elverstone', 257, 257, 257)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (264, N'Dorey', N'Kyrstin', N'Daborn', N'De la Barre', 258, 258, 258)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (265, N'Georgi', N'Kerry', N'Goring', N'Hannabus', 259, 259, 259)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (266, N'Maddy', N'Artemas', N'Skuse', N'O''Neal', 260, 260, 260)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (267, N'Waylan', N'Rachele', N'Rexworthy', N'Bennike', 261, 261, 261)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (268, N'Papagena', N'Ameline', N'Pickthorne', N'Calterone', 262, 262, 262)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (269, N'Theodora', N'Tiphanie', N'Healy', N'Beach', 263, 263, 263)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (270, N'Shanie', N'Ches', N'Henstridge', N'Rankcom', 264, 264, 264)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (271, N'Anne-marie', N'Joice', N'Adnet', N'Snell', 265, 265, 265)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (272, N'Dulciana', N'Florina', N'Weson', N'Gornal', 266, 266, 266)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (273, N'Mair', N'Reggis', N'Forder', N'Gwyn', 267, 267, 267)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (274, N'Maddie', N'Briano', N'Kesteven', N'Quilter', 268, 268, 268)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (275, N'Fenelia', N'Lonnie', N'Victoria', N'Wind', 269, 269, 269)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (276, N'Idelle', N'Terra', N'Purslow', N'Hethron', 270, 270, 270)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (277, N'Gilbertine', N'Waylen', N'Marrable', N'Shimmings', 271, 271, 271)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (278, N'Audy', N'Si', N'Robillart', N'Strathe', 272, 272, 272)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (279, N'Arleen', N'Kat', N'Pretsell', N'Barde', 273, 273, 273)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (280, N'Markus', N'Shayne', N'Van Hesteren', N'Kendell', 274, 274, 274)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (281, N'Melita', N'Jdavie', N'Di Pietro', N'Lamputt', 275, 275, 275)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (282, N'Pris', N'Maggee', N'Hastwell', N'Camoletto', 276, 276, 276)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (283, N'Cooper', N'Lek', N'Windsor', N'Whorton', 277, 277, 277)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (284, N'Ingeberg', N'Ebonee', N'Clementson', N'Loughney', 278, 278, 278)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (285, N'Charles', N'Grant', N'Fronks', N'Clemenza', 279, 279, 279)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (286, N'Pall', N'Hedvig', N'Stapleford', N'Parslow', 280, 280, 280)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (287, N'Jerome', N'Quincey', N'Keuntje', N'Rubbert', 281, 281, 281)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (288, N'Taddeusz', N'Hettie', N'Bertolin', N'Covington', 282, 282, 282)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (289, N'Patsy', N'Raddy', N'Mantripp', N'Peck', 283, 283, 283)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (290, N'Annmaria', N'Esteban', N'Covill', N'Jaquemar', 284, 284, 284)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (291, N'Al', N'Hall', N'Sunman', N'Kimmins', 285, 285, 285)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (292, N'Karly', N'Ulrick', N'Wibrow', N'Victoria', 286, 286, 286)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (293, N'Novelia', N'Valeda', N'Glader', N'Masden', 287, 287, 287)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (294, N'Zsazsa', N'Raphael', N'Lowrie', N'Pauwel', 288, 288, 288)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (295, N'Hamnet', N'Barnaby', N'Matteotti', N'Navarijo', 289, 289, 289)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (296, N'Ethelind', N'Terry', N'Alishoner', N'Jancso', 290, 290, 290)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (297, N'Mata', N'Timmi', N'Swansborough', N'Worviell', 291, 291, 291)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (298, N'Zaneta', N'Brenn', N'Lowing', N'Leasor', 292, 292, 292)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (299, N'Elianora', N'Raimondo', N'Townsend', N'Egleton', 293, 293, 293)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (300, N'Lindsey', N'Kerstin', N'Kemmish', N'Tansly', 294, 294, 294)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (301, N'Farlie', N'Nanice', N'Caslin', N'Djokic', 295, 295, 295)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (302, N'Neron', N'Hobey', N'Lathan', N'Crehan', 296, 296, 296)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (303, N'Kaitlyn', N'Roselle', N'Caswall', N'Youson', 297, 297, 297)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (304, N'Kip', N'Leigh', N'MacIlhagga', N'Carder', 298, 298, 298)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (305, N'Corena', N'Vanya', N'Laundon', N'Pendle', 299, 299, 299)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (306, N'Erskine', N'Daveen', N'Chuney', N'Snooks', 300, 300, 300)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (307, N'Tito', N'Theressa', N'Botton', N'Harvey', 301, 301, 301)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (308, N'Myrta', N'Rosita', N'Belleny', N'Coase', 302, 302, 302)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (309, N'Harriot', N'Betty', N'Snarr', N'Roels', 303, 303, 303)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (310, N'Maudie', N'Ursola', N'Rattrie', N'Albasiny', 304, 304, 304)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (311, N'Andros', N'Letizia', N'Spencock', N'Nortunen', 305, 305, 305)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (312, N'Olin', N'Gibby', N'Turmell', N'Caldwall', 306, 306, 306)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (313, N'Hally', N'Martguerita', N'Lineham', N'Dowsett', 307, 307, 307)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (314, N'Herbert', N'Magda', N'Folland', N'Winsom', 308, 308, 308)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (315, N'Clarence', N'Modestine', N'Exrol', N'Castletine', 309, 309, 309)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (316, N'Siegfried', N'Erica', N'MacDonogh', N'Dalgarnocht', 310, 310, 310)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (317, N'Beaufort', N'Lanette', N'Robyns', N'Cooksey', 311, 311, 311)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (318, N'Malia', N'Jodie', N'Klimentyonok', N'Shuttell', 312, 312, 312)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (319, N'Zack', N'Jacquette', N'Pearsey', N'Fearnall', 313, 313, 313)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (320, N'Bil', N'Kathi', N'Ciccottini', N'Fosdyke', 314, 314, 314)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (321, N'Roley', N'Shane', N'Seally', N'Arrighi', 315, 315, 315)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (322, N'Gabby', N'Pauly', N'Hoff', N'Armstead', 316, 316, 316)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (323, N'Richardo', N'Kathi', N'Pagnin', N'Filpi', 317, 317, 317)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (324, N'Cheston', N'Helaina', N'Habens', N'Christoffels', 318, 318, 318)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (325, N'Kaitlynn', N'Avis', N'Aldersea', N'Swannick', 319, 319, 319)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (326, N'Jarad', N'Jeramie', N'Yesenin', N'Affleck', 320, 320, 320)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (327, N'Izak', N'Keary', N'Jouandet', N'Tregunna', 321, 321, 321)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (328, N'Haleigh', N'Mervin', N'Keemer', N'Ewert', 322, 322, 322)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (329, N'Odell', N'Gladys', N'Ickowics', N'Dibbert', 323, 323, 323)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (330, N'Emily', N'Timoteo', N'Cove', N'Byart', 324, 324, 324)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (331, N'Lindy', N'Joane', N'MacChaell', N'Stoves', 325, 325, 325)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (332, N'Willetta', N'Inger', N'Eivers', N'Manes', 326, 326, 326)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (333, N'Adolphe', N'Amelita', N'Tuffrey', N'Gilmartin', 327, 327, 327)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (334, N'Eleonore', N'Waiter', N'Olivi', N'Chettle', 328, 328, 328)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (335, N'Cchaddie', N'Wilfred', N'Bagnold', N'Bartholat', 329, 329, 329)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (336, N'Dulciana', N'Angelika', N'Jepp', N'Killick', 330, 330, 330)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (337, N'Marrilee', N'Rik', N'McAuliffe', N'Maskill', 331, 331, 331)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (338, N'Rhodia', N'Orelee', N'Bottomer', N'Meiklem', 332, 332, 332)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (339, N'Dita', N'Ariana', N'Sommerfeld', N'Johnsson', 333, 333, 333)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (340, N'Theodore', N'Ashla', N'Keyser', N'Dennitts', 334, 334, 334)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (341, N'Ban', N'Fitzgerald', N'Garrod', N'Lutton', 335, 335, 335)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (342, N'Ron', N'Bobine', N'Fenemore', N'Corneljes', 336, 336, 336)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (343, N'Shandra', N'Brianne', N'Cawte', N'Scarse', 337, 337, 337)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (344, N'Lynett', N'Lyn', N'McGilvra', N'Lanchester', 338, 338, 338)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (345, N'Isak', N'Illa', N'Nance', N'Yeskin', 339, 339, 339)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (346, N'De witt', N'Sonya', N'Kalisz', N'Skatcher', 340, 340, 340)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (347, N'Darice', N'Federica', N'Knoble', N'Muino', 341, 341, 341)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (348, N'Chico', N'Koren', N'Broke', N'Kobpac', 342, 342, 342)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (349, N'Camille', N'Oralia', N'Gilleon', N'Voff', 343, 343, 343)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (350, N'Tedman', N'Karol', N'Rolfs', N'Camoys', 344, 344, 344)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (351, N'Aile', N'Rosabel', N'Costan', N'McLucky', 345, 345, 345)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (352, N'Domenic', N'Janot', N'Presdie', N'Aimer', 346, 346, 346)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (353, N'Eldin', N'Ofella', N'Bonnett', N'Greedy', 347, 347, 347)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (354, N'Maury', N'Marve', N'Zanneli', N'Doag', 348, 348, 348)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (355, N'Ced', N'Ileane', N'Troy', N'Allchorn', 349, 349, 349)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (356, N'Ollie', N'Ingar', N'Avrahamof', N'Lindner', 350, 350, 350)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (357, N'Sella', N'Gloriana', N'Cornford', N'Soffe', 351, 351, 351)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (358, N'Alic', N'Northrup', N'Richemond', N'Botler', 352, 352, 352)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (359, N'Willie', N'Carmel', N'Sheard', N'Tales', 353, 353, 353)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (360, N'Levon', N'Vlad', N'Whybray', N'Smout', 354, 354, 354)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (361, N'Deane', N'Milt', N'Locksley', N'Carous', 355, 355, 355)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (362, N'Gradey', N'Jedediah', N'Shere', N'Vaszoly', 356, 356, 356)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (363, N'Evangelia', N'Weber', N'Andryszczak', N'Tarquinio', 357, 357, 357)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (364, N'Karee', N'Emile', N'Wimmer', N'Rochester', 358, 358, 358)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (365, N'Lora', N'Brittan', N'Parsons', N'Crossingham', 359, 359, 359)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (366, N'Darrick', N'Kit', N'Fontell', N'Mc Carrick', 360, 360, 360)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (367, N'Huntington', N'Chrissie', N'Althorpe', N'Eccleston', 361, 361, 361)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (368, N'Chantalle', N'Lizzy', N'Guard', N'Britt', 362, 362, 362)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (369, N'Vasili', N'Evvy', N'Acory', N'Davidge', 363, 363, 363)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (370, N'Franchot', N'Lorilyn', N'MacAdam', N'Calf', 364, 364, 364)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (371, N'Elfie', N'Consuelo', N'Kamienski', N'Whitley', 365, 365, 365)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (372, N'Nana', N'Melania', N'Blanckley', N'Carson', 366, 366, 366)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (373, N'Chris', N'Rourke', N'Swalwell', N'Thornebarrow', 367, 367, 367)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (374, N'Vance', N'Katalin', N'Lowdeane', N'Iddenden', 368, 368, 368)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (375, N'Verne', N'Harland', N'Rykert', N'Dumingos', 369, 369, 369)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (376, N'Avril', N'Lothario', N'Mulberry', N'Linstead', 370, 370, 370)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (377, N'Cyrille', N'Sheelagh', N'Rihosek', N'Gilburt', 371, 371, 371)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (378, N'Adriana', N'Ram', N'Pool', N'Pearl', 372, 372, 372)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (379, N'Michele', N'Gwynne', N'Hulme', N'Stonall', 373, 373, 373)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (380, N'Honoria', N'Germain', N'Yarnell', N'MacKnockiter', 374, 374, 374)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (381, N'Benyamin', N'Perren', N'Abbe', N'Canadine', 375, 375, 375)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (382, N'Jessalin', N'Joby', N'Wingham', N'Talby', 376, 376, 376)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (383, N'Hadria', N'Nisse', N'Nipper', N'Organer', 377, 377, 377)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (384, N'Coleen', N'Ralina', N'Marfe', N'Martello', 378, 378, 378)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (385, N'Jaye', N'Val', N'Colwell', N'Dincey', 379, 379, 379)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (386, N'Bald', N'Gayla', N'Witcherley', N'Jamieson', 380, 380, 380)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (387, N'Shalna', N'Wade', N'Grassi', N'Bavidge', 381, 381, 381)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (388, N'Baxy', N'Ilyssa', N'Lukesch', N'Peat', 382, 382, 382)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (389, N'Sanders', N'Carmella', N'Risman', N'Roubottom', 383, 383, 383)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (390, N'Pierce', N'Norrie', N'Josse', N'Gladman', 384, 384, 384)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (391, N'Ophelia', N'Ibbie', N'Scotney', N'Taye', 385, 385, 385)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (392, N'Clarita', N'Geoff', N'Kimmince', N'Konzelmann', 386, 386, 386)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (393, N'Mallory', N'Sean', N'Tomasini', N'Barrowcliff', 387, 387, 387)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (394, N'Haywood', N'Louie', N'MacKnocker', N'McGowan', 388, 388, 388)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (395, N'Gael', N'Barclay', N'Grabiec', N'Goldson', 389, 389, 389)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (396, N'Godart', N'Dan', N'Dixcee', N'Cheshire', 390, 390, 390)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (397, N'Ludovika', N'Kelley', N'Bredbury', N'Laux', 391, 391, 391)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (398, N'Rebecka', N'Nicol', N'Glamart', N'Lamdin', 392, 392, 392)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (399, N'Catherina', N'Sandi', N'Hatliffe', N'Goadby', 393, 393, 393)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (400, N'Rickie', N'Devondra', N'Pendrigh', N'Ambrogetti', 394, 394, 394)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (401, N'Rossie', N'Ford', N'Hinrich', N'Vazquez', 395, 395, 395)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (402, N'Orsa', N'Conn', N'Southon', N'Bridell', 396, 396, 396)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (403, N'Kiele', N'Ania', N'Petracchi', N'Gendrich', 397, 397, 397)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (404, N'Tam', N'Othelia', N'Emmitt', N'Rhys', 398, 398, 398)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (405, N'Torrie', N'Iorgo', N'Wisniowski', N'Cudd', 399, 399, 399)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (406, N'Alford', N'Sherry', N'Clash', N'Sutch', 400, 400, 400)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (407, N'Merilee', N'Sari', N'Faint', N'Rawlison', 401, 401, 401)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (408, N'Grant', N'Mandel', N'Strewther', N'Coldridge', 402, 402, 402)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (409, N'Lynn', N'Griff', N'McElhargy', N'Pavett', 403, 403, 403)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (410, N'Pauli', N'Selestina', N'Cleave', N'Kennard', 404, 404, 404)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (411, N'Thaxter', N'Libbi', N'McRavey', N'Ernke', 405, 405, 405)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (412, N'Lissa', N'Emelia', N'Jovasevic', N'Daffey', 406, 406, 406)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (413, N'Roselin', N'Madella', N'Whitely', N'Tripean', 407, 407, 407)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (414, N'Gale', N'Adey', N'Maudlen', N'Karlolak', 408, 408, 408)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (415, N'Geneva', N'Ranique', N'Reiners', N'Driffe', 409, 409, 409)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (416, N'Millicent', N'Rockey', N'Rolin', N'Isitt', 410, 410, 410)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (417, N'Antone', N'Carl', N'Lannin', N'Iorizzo', 411, 411, 411)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (418, N'Nelson', N'Brenn', N'Ellis', N'Tilbury', 412, 412, 412)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (419, N'Ludvig', N'Mic', N'Mayberry', N'Girdlestone', 413, 413, 413)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (420, N'Ashla', N'Ariana', N'Zamora', N'Provis', 414, 414, 414)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (421, N'Fidelity', N'Dodie', N'Ielden', N'Tumayan', 415, 415, 415)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (422, N'Darryl', N'Ora', N'Luter', N'Feely', 416, 416, 416)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (423, N'Elissa', N'Elna', N'Slesser', N'Bowton', 417, 417, 417)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (424, N'Sherlock', N'Corbie', N'Rosenstiel', N'Frudd', 418, 418, 418)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (425, N'Inga', N'Garrik', N'Stoven', N'Coleson', 419, 419, 419)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (426, N'Kirsten', N'Chrystel', N'MacRannell', N'Enbury', 420, 420, 420)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (427, N'Gabi', N'Lurlene', N'Grivori', N'Goodsell', 421, 421, 421)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (428, N'Erhart', N'Biddy', N'Anersen', N'Hazard', 422, 422, 422)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (429, N'Marilee', N'Mel', N'Rout', N'Bodd', 423, 423, 423)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (430, N'Alexia', N'Denni', N'Krier', N'Pedler', 424, 424, 424)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (431, N'Mirabella', N'Silva', N'Dingsdale', N'Donnison', 425, 425, 425)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (432, N'Hymie', N'Val', N'Boniface', N'Abbati', 426, 426, 426)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (433, N'Sydelle', N'Angelique', N'Bartolozzi', N'Peers', 427, 427, 427)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (434, N'Noelani', N'Theodoric', N'Probbin', N'Beazer', 428, 428, 428)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (435, N'Zilvia', N'Jesse', N'Darnbrook', N'Padberry', 429, 429, 429)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (436, N'Toddie', N'Branden', N'Tambling', N'Addinall', 430, 430, 430)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (437, N'Sabina', N'Rodrick', N'Sivyer', N'Ferrarini', 431, 431, 431)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (438, N'Efrem', N'Baird', N'Parnall', N'Partington', 432, 432, 432)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (439, N'Netty', N'Marcelo', N'Triplow', N'Dewi', 433, 433, 433)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (440, N'Tom', N'Bary', N'Brummell', N'Dealy', 434, 434, 434)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (441, N'Inigo', N'Dov', N'MacGaughy', N'Fibbitts', 435, 435, 435)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (442, N'Brittani', N'Sigrid', N'Iiannoni', N'Brigge', 436, 436, 436)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (443, N'Hale', N'Karon', N'Drugan', N'Frankes', 437, 437, 437)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (444, N'Regina', N'Berkeley', N'Davisson', N'McGiffie', 438, 438, 438)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (445, N'Piggy', N'Neddie', N'Tomasini', N'Springtorpe', 439, 439, 439)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (446, N'Quinton', N'Krystalle', N'Abramovitz', N'Lembcke', 440, 440, 440)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (447, N'Sol', N'Nealson', N'Swatton', N'Budik', 441, 441, 441)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (448, N'Maybelle', N'Lesley', N'Amort', N'Myner', 442, 442, 442)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (449, N'Denice', N'Dorothy', N'Damsell', N'Stredwick', 443, 443, 443)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (450, N'Johna', N'Emory', N'Ferroni', N'Aireton', 444, 444, 444)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (451, N'Bobby', N'Dicky', N'Tanfield', N'Arkil', 445, 445, 445)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (452, N'Margaretta', N'Mal', N'Hammand', N'Deegin', 446, 446, 446)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (453, N'Saudra', N'Junina', N'Musgrave', N'Laming', 447, 447, 447)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (454, N'Melitta', N'Cory', N'Balfe', N'Sottell', 448, 448, 448)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (455, N'Lucy', N'Richard', N'Sandy', N'Upcraft', 449, 449, 449)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (456, N'Alric', N'Reggie', N'Caldairou', N'Marvelley', 450, 450, 450)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (457, N'Royal', N'Stan', N'O Mullen', N'Choudhury', 451, 451, 451)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (458, N'Emmaline', N'Analiese', N'Dysart', N'Rishworth', 452, 452, 452)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (459, N'Pen', N'Bernelle', N'Henzley', N'Boichat', 453, 453, 453)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (460, N'Phillip', N'Falkner', N'Ruppert', N'Crookes', 454, 454, 454)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (461, N'Hephzibah', N'Reba', N'Balleine', N'Stout', 455, 455, 455)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (462, N'Juditha', N'Jean', N'Pagelsen', N'Rulton', 456, 456, 456)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (463, N'Winnah', N'Tybi', N'Hick', N'Tander', 457, 457, 457)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (464, N'Winne', N'Maybelle', N'Urry', N'Moffet', 458, 458, 458)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (465, N'Teddy', N'Aurora', N'Serjeantson', N'Huckstepp', 459, 459, 459)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (466, N'Germain', N'Brenn', N'Gouldthorpe', N'Demann', 460, 460, 460)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (467, N'Malina', N'Kippie', N'Kiernan', N'Hirsch', 461, 461, 461)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (468, N'Lurette', N'Brietta', N'Haggus', N'Beurich', 462, 462, 462)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (469, N'Gwyn', N'Harcourt', N'Lennon', N'Howden', 463, 463, 463)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (470, N'Filmore', N'Carmina', N'Snoad', N'Brabant', 464, 464, 464)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (471, N'Matteo', N'Elianora', N'Ferney', N'Chantler', 465, 465, 465)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (472, N'Natal', N'Emilie', N'Yesson', N'Lindores', 466, 466, 466)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (473, N'Averil', N'Joelynn', N'Celiz', N'Romeuf', 467, 467, 467)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (474, N'Jayne', N'Valencia', N'Carus', N'Gare', 468, 468, 468)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (475, N'Collete', N'Malachi', N'Toyer', N'Minghetti', 469, 469, 469)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (476, N'Penelopa', N'Lynea', N'Iuorio', N'Tremmil', 470, 470, 470)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (477, N'Amble', N'Roxanne', N'Greson', N'Hocking', 471, 471, 471)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (478, N'Ariel', N'Marisa', N'Selwyne', N'Bavridge', 472, 472, 472)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (479, N'Tull', N'Grant', N'Abramof', N'Perell', 473, 473, 473)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (480, N'Lyndsie', N'Britt', N'Hackforth', N'Webberley', 474, 474, 474)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (481, N'Schuyler', N'Mordy', N'Cochet', N'Ewbach', 475, 475, 475)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (482, N'Clevey', N'Cassy', N'Towey', N'Mander', 476, 476, 476)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (483, N'Ludwig', N'Olva', N'Ellicombe', N'Fieller', 477, 477, 477)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (484, N'Reba', N'Giordano', N'Freke', N'Iashvili', 478, 478, 478)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (485, N'Fredek', N'Giordano', N'Malden', N'Bunworth', 479, 479, 479)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (486, N'Henryetta', N'Hussein', N'Smetoun', N'Gerold', 480, 480, 480)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (487, N'Artie', N'Bevan', N'Grunson', N'Belham', 481, 481, 481)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (488, N'Veradis', N'Rubi', N'Bompass', N'Josovitz', 482, 482, 482)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (489, N'Kristel', N'Miguel', N'Sculley', N'Guillond', 483, 483, 483)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (490, N'Uriah', N'Ruthy', N'Guerola', N'List', 484, 484, 484)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (491, N'Janna', N'Jesselyn', N'Pomroy', N'Crutcher', 485, 485, 485)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (492, N'Darrelle', N'Forster', N'Brisseau', N'Klass', 486, 486, 486)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (493, N'Jarid', N'Devland', N'Matterson', N'Rouch', 487, 487, 487)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (494, N'Regina', N'Ines', N'Gile', N'McCome', 488, 488, 488)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (495, N'Ogdon', N'Gay', N'Colman', N'McEnteggart', 489, 489, 489)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (496, N'Wallache', N'Faulkner', N'Werendell', N'Townend', 490, 490, 490)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (497, N'Susana', N'Tannie', N'Ferrucci', N'Foxon', 491, 491, 491)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (498, N'Louisette', N'Kellyann', N'Neachell', N'Lawles', 492, 492, 492)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (499, N'Kettie', N'Netta', N'Raffan', N'Plews', 493, 493, 493)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (500, N'Amabelle', N'Sherill', N'Coultish', N'Clayworth', 494, 494, 494)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (501, N'Carey', N'Bobbie', N'Pollicott', N'Brislane', 495, 495, 495)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (502, N'Percy', N'Jan', N'Roft', N'McCrostie', 496, 496, 496)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (503, N'Bruce', N'Mattie', N'Andrat', N'Bartolini', 497, 497, 497)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (504, N'Casper', N'Adolph', N'Tolle', N'Babber', 498, 498, 498)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (505, N'Lorne', N'Lilias', N'Brayson', N'Yegorkov', 499, 499, 499)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (506, N'Reiko', N'Johna', N'Fishly', N'Sproston', 500, 500, 500)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (507, N'William', N'Pepillo', N'Yitzhakov', N'Dulwich', 501, 501, 501)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (508, N'Land', N'Sidonnie', N'Fansy', N'Tuke', 502, 502, 502)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (509, N'Mercie', N'Naoma', N'Kelsow', N'Goodban', 503, 503, 503)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (510, N'Coretta', N'Gayla', N'Frayn', N'Salling', 504, 504, 504)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (511, N'Lyman', N'Myca', N'Teggin', N'Corbet', 505, 505, 505)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (512, N'Breanne', N'Aurelia', N'Nuss', N'Kingswood', 506, 506, 506)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (513, N'Robina', N'Nedda', N'Jeanon', N'Hammor', 507, 507, 507)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (514, N'Georgine', N'Harwilll', N'Doncom', N'Hearon', 508, 508, 508)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (515, N'Seumas', N'Enrico', N'Dowty', N'Ashlin', 509, 509, 509)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (516, N'Patrick', N'Ole', N'Odd', N'Aikenhead', 510, 510, 510)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (517, N'Dody', N'Farlay', N'Frank', N'Bartzen', 511, 511, 511)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (518, N'Shirleen', N'Issiah', N'Sutheran', N'Levi', 512, 512, 512)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (519, N'Ekaterina', N'Lester', N'Andrewartha', N'Heaffey', 513, 513, 513)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (520, N'Cami', N'Aloise', N'Dockwra', N'Seiller', 514, 514, 514)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (521, N'Christophe', N'Christyna', N'Van Rembrandt', N'Kubat', 515, 515, 515)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (522, N'Dino', N'Dita', N'Zorzenoni', N'Merrikin', 516, 516, 516)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (523, N'Tisha', N'Chrissie', N'Danilevich', N'Dalzell', 517, 517, 517)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (524, N'Katinka', N'Travus', N'Gottschalk', N'Cacacie', 518, 518, 518)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (525, N'Kimball', N'Darn', N'Gerritsma', N'Lithcow', 519, 519, 519)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (526, N'Shurlocke', N'Tarrah', N'Davidovicz', N'Bende', 520, 520, 520)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (527, N'Libbey', N'Yvor', N'Frays', N'Staddom', 521, 521, 521)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (528, N'Corny', N'Lorens', N'Bentz', N'Wigfield', 522, 522, 522)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (529, N'Pet', N'Perice', N'Jex', N'Chazelle', 523, 523, 523)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (530, N'Billy', N'Fey', N'Ilchenko', N'Grandin', 524, 524, 524)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (531, N'Caritta', N'Tamma', N'Dunbar', N'Bloss', 525, 525, 525)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (532, N'Bay', N'Eachelle', N'Salisbury', N'Maddocks', 526, 526, 526)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (533, N'Olwen', N'Daphna', N'MacLaverty', N'Wrighton', 527, 527, 527)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (534, N'Lyndsay', N'Alfredo', N'Dossett', N'Oatley', 528, 528, 528)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (535, N'Theresina', N'Hayley', N'Steiner', N'Young', 529, 529, 529)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (536, N'Wally', N'Sigmund', N'Cosgrive', N'Beri', 530, 530, 530)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (537, N'Gabriel', N'Suzette', N'Chafney', N'Esson', 531, 531, 531)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (538, N'Cathy', N'Halli', N'Scouse', N'Gilardengo', 532, 532, 532)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (539, N'Page', N'Oswell', N'Pratley', N'Munslow', 533, 533, 533)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (540, N'Eveleen', N'Cecily', N'Gogin', N'Umbers', 534, 534, 534)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (541, N'Roxanna', N'Tracie', N'Deelay', N'Blackadder', 535, 535, 535)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (542, N'Daveta', N'Selene', N'Proschke', N'Jiri', 536, 536, 536)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (543, N'Grenville', N'Lola', N'Samuel', N'Kilian', 537, 537, 537)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (544, N'Jamil', N'Jillene', N'Messham', N'Rookesby', 538, 538, 538)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (545, N'Chrystal', N'Ray', N'Schellig', N'Klulicek', 539, 539, 539)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (546, N'Rouvin', N'Iseabal', N'Cash', N'Manoelli', 540, 540, 540)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (547, N'Ellerey', N'Philbert', N'Stanway', N'Dobbings', 541, 541, 541)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (548, N'Abra', N'Dorey', N'Muglestone', N'Cardinal', 542, 542, 542)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (549, N'Tynan', N'Quintina', N'Spargo', N'McLeman', 543, 543, 543)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (550, N'Veronique', N'Lorilee', N'Petrosian', N'Maes', 544, 544, 544)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (551, N'Coral', N'Brucie', N'Raithmill', N'Colleck', 545, 545, 545)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (552, N'Sayres', N'Raphael', N'Berntssen', N'Tomaello', 546, 546, 546)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (553, N'Anne-corinne', N'Del', N'McCobb', N'Labbe', 547, 547, 547)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (554, N'Pammie', N'Latia', N'Winterbourne', N'Groll', 548, 548, 548)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (555, N'Meredith', N'Sascha', N'Lark', N'Peartree', 549, 549, 549)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (556, N'Gilbertine', N'Lorita', N'Craft', N'Bowry', 550, 550, 550)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (557, N'Eldridge', N'Carri', N'Clackers', N'Sawforde', 551, 551, 551)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (558, N'Claudette', N'Ronalda', N'Vedekhin', N'Yair', 552, 552, 552)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (559, N'Margi', N'Raul', N'Trowbridge', N'Crouse', 553, 553, 553)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (560, N'Salim', N'Sheilakathryn', N'Kearley', N'Guppie', 554, 554, 554)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (561, N'Chevalier', N'Hinze', N'Tertre', N'Myers', 555, 555, 555)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (562, N'Hyacintha', N'Giovanni', N'Ewart', N'Jessard', 556, 556, 556)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (563, N'Terra', N'Horatio', N'Massow', N'Rennix', 557, 557, 557)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (564, N'Kara-lynn', N'Anderson', N'Arnoll', N'Dust', 558, 558, 558)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (565, N'Jere', N'Noella', N'Salamon', N'Haysham', 559, 559, 559)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (566, N'Laughton', N'Shel', N'Tunnadine', N'Maltster', 560, 560, 560)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (567, N'Camey', N'Aurie', N'Rojas', N'Cattow', 561, 561, 561)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (568, N'Ema', N'Angie', N'Lampitt', N'Fronek', 562, 562, 562)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (569, N'Ainsley', N'Gennifer', N'Chinnock', N'Mitkcov', 563, 563, 563)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (570, N'Almire', N'Harry', N'Ludwikiewicz', N'Hurrell', 564, 564, 564)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (571, N'Ericka', N'Lyndsie', N'Dumbreck', N'Cressingham', 565, 565, 565)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (572, N'Tildi', N'Dur', N'Atherley', N'Bourtoumieux', 566, 566, 566)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (573, N'Franzen', N'Mellisent', N'Antoniewicz', N'Antonik', 567, 567, 567)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (574, N'Michail', N'Tyson', N'Hudson', N'Poveleye', 568, 568, 568)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (575, N'Eve', N'Murdoch', N'Girod', N'Yakushkin', 569, 569, 569)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (576, N'Evin', N'Gustaf', N'Middlemiss', N'Husthwaite', 570, 570, 570)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (577, N'Timofei', N'Elnora', N'Dillinger', N'Luis', 571, 571, 571)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (578, N'Clemens', N'Jard', N'Kochs', N'Tenny', 572, 572, 572)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (579, N'Amandy', N'Kalindi', N'Mushet', N'Islip', 573, 573, 573)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (580, N'Hyacinth', N'Idelle', N'Gross', N'Aylwin', 574, 574, 574)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (581, N'Harp', N'Harriott', N'Cromley', N'Insull', 575, 575, 575)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (582, N'Emilia', N'Lil', N'Lockwood', N'Walshe', 576, 576, 576)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (583, N'Jamie', N'Phaedra', N'Lawrence', N'Rawes', 577, 577, 577)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (584, N'Sigfried', N'Brnaby', N'Gonnin', N'Dullingham', 578, 578, 578)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (585, N'Estele', N'Clio', N'Avieson', N'Pressdee', 579, 579, 579)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (586, N'Winnifred', N'Rafferty', N'Offer', N'Belvin', 580, 580, 580)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (587, N'Yance', N'Rance', N'Samworth', N'Damiata', 581, 581, 581)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (588, N'Claire', N'Gilli', N'Corrao', N'Gavigan', 582, 582, 582)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (589, N'Kiri', N'Kaleena', N'Behn', N'Bertolaccini', 583, 583, 583)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (590, N'Bartholemy', N'Kandace', N'Berthomier', N'Anchor', 584, 584, 584)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (591, N'Dahlia', N'Marylou', N'Vallery', N'Cisec', 585, 585, 585)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (592, N'Augy', N'Marjory', N'Yoakley', N'Curlis', 586, 586, 586)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (593, N'Dennie', N'Hillel', N'Gallaway', N'Maun', 587, 587, 587)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (594, N'Connie', N'Charmian', N'Sedgeman', N'Rosbrough', 588, 588, 588)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (595, N'Scottie', N'Aloysius', N'Stubbings', N'Sterte', 589, 589, 589)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (596, N'Gilligan', N'Hunter', N'Eckersley', N'Eggerton', 590, 590, 590)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (597, N'Gery', N'Nisse', N'Peres', N'Coppen', 591, 591, 591)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (598, N'Eve', N'Gilburt', N'Gilbane', N'Farfalameev', 592, 592, 592)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (599, N'Olympia', N'Gilly', N'Combes', N'Crake', 593, 593, 593)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (600, N'Gwen', N'Torin', N'Etherton', N'Ramshay', 594, 594, 594)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (601, N'Andrej', N'Lanny', N'Dunbabin', N'Barhims', 595, 595, 595)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (602, N'Cassie', N'Loren', N'Bodycote', N'Melling', 596, 596, 596)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (603, N'Delaney', N'Corbet', N'Borit', N'Dering', 597, 597, 597)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (604, N'Odey', N'Gilligan', N'Jude', N'Matthewman', 598, 598, 598)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (605, N'Hunter', N'Tally', N'Shearn', N'Kineton', 599, 599, 599)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (606, N'Iorgo', N'Fleur', N'Kielt', N'Hannibal', 600, 600, 600)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (607, N'Pietra', N'Cy', N'Melody', N'Trevance', 601, 601, 601)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (608, N'Bone', N'Hanny', N'Smidmore', N'Frandsen', 602, 602, 602)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (609, N'Becky', N'Elfrida', N'Stuehmeyer', N'Traske', 603, 603, 603)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (610, N'Theodosia', N'Forbes', N'Afonso', N'Bielfelt', 604, 604, 604)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (611, N'Gretna', N'Frazer', N'Convery', N'Tippetts', 605, 605, 605)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (612, N'Lizabeth', N'Ealasaid', N'Dmitr', N'Stoneley', 606, 606, 606)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (613, N'Aprilette', N'Caz', N'Gohn', N'Coulthard', 607, 607, 607)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (614, N'Pia', N'Blaine', N'Dowgill', N'Croote', 608, 608, 608)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (615, N'Rollin', N'Tomas', N'McCathy', N'Minto', 609, 609, 609)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (616, N'Blaire', N'Miguela', N'Gaughan', N'Hynde', 610, 610, 610)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (617, N'Hal', N'Jamie', N'Robus', N'Jaffa', 611, 611, 611)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (618, N'Raviv', N'Killie', N'Wells', N'Halden', 612, 612, 612)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (619, N'Stephanie', N'Ferrell', N'Savidge', N'Jailler', 613, 613, 613)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (620, N'Vanya', N'Shawna', N'Ofen', N'McCrorie', 614, 614, 614)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (621, N'Corrie', N'Lara', N'Cullingford', N'Hollingby', 615, 615, 615)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (622, N'Isa', N'Wynn', N'Celier', N'Pollock', 616, 616, 616)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (623, N'Philippine', N'Tana', N'Kamien', N'Becerra', 617, 617, 617)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (624, N'Basilius', N'Candida', N'Houtbie', N'Piers', 618, 618, 618)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (625, N'Ardella', N'Katherine', N'Shavel', N'Baal', 619, 619, 619)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (626, N'Simone', N'Armando', N'Danaher', N'Habin', 620, 620, 620)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (627, N'Nicole', N'Gabriele', N'Chieco', N'Paye', 621, 621, 621)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (628, N'Selina', N'Rockey', N'Sartain', N'Shaudfurth', 622, 622, 622)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (629, N'Evangeline', N'Tami', N'Gradly', N'Dufton', 623, 623, 623)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (630, N'Omero', N'Dorree', N'Dorber', N'Pyzer', 624, 624, 624)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (631, N'Sofia', N'Tadeas', N'Sline', N'Stathor', 625, 625, 625)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (632, N'Petr', N'Abraham', N'Coopey', N'Froome', 626, 626, 626)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (633, N'Alford', N'Shannah', N'Callacher', N'Lobe', 627, 627, 627)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (634, N'Tarah', N'Weber', N'Haddrill', N'Eglington', 628, 628, 628)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (635, N'Giustino', N'Eda', N'Ethridge', N'Rushforth', 629, 629, 629)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (636, N'Osborne', N'Noah', N'Berlin', N'Guisby', 630, 630, 630)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (637, N'Wadsworth', N'Thorny', N'Siley', N'Bayford', 631, 631, 631)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (638, N'Dallis', N'Sullivan', N'Ughetti', N'O''Curneen', 632, 632, 632)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (639, N'Almira', N'Joelie', N'Saxton', N'Seers', 633, 633, 633)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (640, N'Wang', N'Luisa', N'De Cleyne', N'Gwillym', 634, 634, 634)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (641, N'Dalis', N'Thornton', N'Fannin', N'Ganter', 635, 635, 635)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (642, N'Carey', N'Vivien', N'Nance', N'Shmyr', 636, 636, 636)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (643, N'Genni', N'Hetti', N'Jankovic', N'Richardon', 637, 637, 637)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (644, N'Juliana', N'Ricca', N'Longforth', N'Tukely', 638, 638, 638)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (645, N'Peri', N'Berkeley', N'Domerq', N'Rainbird', 639, 639, 639)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (646, N'Zondra', N'Drucill', N'De Carolis', N'Farrer', 640, 640, 640)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (647, N'Brion', N'Audrey', N'Barz', N'Seldon', 641, 641, 641)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (648, N'Dev', N'Jarvis', N'Kempshall', N'Abramow', 642, 642, 642)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (649, N'Corilla', N'Pooh', N'Kenworth', N'Ainsbury', 643, 643, 643)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (650, N'Klemens', N'Mariele', N'Della', N'Blanking', 644, 644, 644)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (651, N'Ethelda', N'Leilah', N'Balazot', N'Girardengo', 645, 645, 645)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (652, N'Desmond', N'Lucienne', N'Casterot', N'Zettler', 646, 646, 646)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (653, N'Inge', N'Giorgia', N'Karczinski', N'Greenshiels', 647, 647, 647)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (654, N'Colver', N'Horacio', N'Alebrooke', N'Tireman', 648, 648, 648)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (655, N'Chloris', N'Enid', N'Shilstone', N'Siburn', 649, 649, 649)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (656, N'Maudie', N'Averell', N'Flips', N'Hirjak', 650, 650, 650)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (657, N'Marlee', N'Ema', N'Jendrich', N'Sage', 651, 651, 651)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (658, N'Maren', N'Virgie', N'Youdell', N'Knellen', 652, 652, 652)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (659, N'Margit', N'Diane-marie', N'Kewish', N'Sabine', 653, 653, 653)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (660, N'Farra', N'Nicolais', N'Mallabar', N'Bisp', 654, 654, 654)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (661, N'Brigham', N'Josefina', N'Bultitude', N'Chaman', 655, 655, 655)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (662, N'Artemus', N'Myron', N'Haxell', N'Slimm', 656, 656, 656)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (663, N'Joby', N'Janeta', N'Ciccottini', N'Scheffel', 657, 657, 657)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (664, N'Gay', N'Annabela', N'Berringer', N'Oolahan', 658, 658, 658)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (665, N'Cordula', N'Rab', N'Lago', N'Skewis', 659, 659, 659)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (666, N'North', N'Mildred', N'Adanet', N'Gogerty', 660, 660, 660)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (667, N'Beilul', N'Maggy', N'Prendeguest', N'Victor', 661, 661, 661)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (668, N'Jacquette', N'Vinny', N'Breydin', N'Miliffe', 662, 662, 662)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (669, N'Lothario', N'Remy', N'Wallbanks', N'Giral', 663, 663, 663)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (670, N'Clarinda', N'Emmery', N'Natalie', N'Allam', 664, 664, 664)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (671, N'Jemimah', N'Eleonore', N'Iiannoni', N'Gantz', 665, 665, 665)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (672, N'Rosella', N'Eva', N'Wickling', N'Achurch', 666, 666, 666)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (673, N'Cathie', N'Catarina', N'Monksfield', N'Pauncefoot', 667, 667, 667)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (674, N'Clerkclaude', N'Vincents', N'Buckle', N'Perring', 668, 668, 668)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (675, N'Gibby', N'Ellynn', N'Darmody', N'Paffot', 669, 669, 669)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (676, N'Margaretha', N'Bartlet', N'Reasun', N'Oaks', 670, 670, 670)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (677, N'Sherlocke', N'Waylon', N'Ander', N'Downage', 671, 671, 671)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (678, N'Darin', N'Henderson', N'Jobson', N'Eslie', 672, 672, 672)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (679, N'Terra', N'Reuben', N'O''Monahan', N'Barkess', 673, 673, 673)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (680, N'Rustie', N'Micheil', N'Possel', N'Gwilliams', 674, 674, 674)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (681, N'Clemmy', N'Casey', N'Henrichs', N'Alderwick', 675, 675, 675)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (682, N'Binnie', N'Katya', N'McAdam', N'Tichelaar', 676, 676, 676)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (683, N'Kath', N'Judd', N'Asling', N'Eam', 677, 677, 677)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (684, N'Adler', N'Rory', N'Petrov', N'Little', 678, 678, 678)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (685, N'Tammie', N'Travers', N'Milillo', N'Klimentov', 679, 679, 679)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (686, N'Yankee', N'Ursola', N'Blown', N'Burdas', 680, 680, 680)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (687, N'Burtie', N'Lothario', N'Schwant', N'Streak', 681, 681, 681)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (688, N'Garwin', N'Elmira', N'Albrooke', N'Graffham', 682, 682, 682)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (689, N'Raychel', N'Tony', N'Cassar', N'Blinerman', 683, 683, 683)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (690, N'Dianna', N'Chet', N'Hallows', N'Fawcitt', 684, 684, 684)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (691, N'Milli', N'Justine', N'Pakeman', N'MacAlpin', 685, 685, 685)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (692, N'Tamra', N'Barnaby', N'Stather', N'Duthy', 686, 686, 686)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (693, N'Abel', N'Crawford', N'Antonov', N'Atthowe', 687, 687, 687)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (694, N'Tan', N'Hubert', N'Gabrieli', N'Beardsdale', 688, 688, 688)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (695, N'Gerri', N'Mindy', N'Hardaway', N'Divine', 689, 689, 689)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (696, N'Queenie', N'Lydia', N'Raymen', N'Pude', 690, 690, 690)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (697, N'Inga', N'Rosalynd', N'Nerheny', N'Auchterlony', 691, 691, 691)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (698, N'Yolane', N'Dallas', N'Joburn', N'Munns', 692, 692, 692)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (699, N'Burke', N'Aveline', N'Fewless', N'Sine', 693, 693, 693)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (700, N'Colver', N'Noel', N'McGillivray', N'Maryon', 694, 694, 694)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (701, N'Ellynn', N'Martelle', N'Pighills', N'Burbridge', 695, 695, 695)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (702, N'Norene', N'Brannon', N'McGrann', N'Klimkov', 696, 696, 696)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (703, N'Galvan', N'Kienan', N'Lock', N'Locke', 697, 697, 697)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (704, N'Marthena', N'Evelina', N'Connachan', N'Rosenbusch', 698, 698, 698)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (705, N'Mina', N'Catharina', N'Skitterel', N'Paulsen', 699, 699, 699)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (706, N'Geri', N'Darill', N'Proger', N'Chanter', 700, 700, 700)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (707, N'Mignonne', N'Gerda', N'Keaveny', N'Reder', 701, 701, 701)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (708, N'Christina', N'Rosene', N'Lightwood', N'Toffoloni', 702, 702, 702)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (709, N'Nessie', N'Pavia', N'Boerderman', N'Sallarie', 703, 703, 703)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (710, N'Gardiner', N'Chaunce', N'Veljes', N'Le Floch', 704, 704, 704)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (711, N'Jeremy', N'Jeramey', N'Caplan', N'Gullis', 705, 705, 705)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (712, N'Simon', N'Fraser', N'Pavlenko', N'Shrimpton', 706, 706, 706)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (713, N'Kurt', N'Cindelyn', N'Aldgate', N'Sweetlove', 707, 707, 707)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (714, N'Hill', N'Muire', N'McReath', N'Ishchenko', 708, 708, 708)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (715, N'Hebert', N'Kandy', N'Hallowell', N'Yashin', 709, 709, 709)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (716, N'Jonie', N'Koenraad', N'Yeowell', N'Swigger', 710, 710, 710)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (717, N'Elyse', N'Rosco', N'Skace', N'Fenlon', 711, 711, 711)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (718, N'Aliza', N'Tuckie', N'Gockelen', N'Follett', 712, 712, 712)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (719, N'Claudette', N'Demetria', N'Blunsom', N'Griffitt', 713, 713, 713)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (720, N'Charmaine', N'Dimitry', N'Bravery', N'Peers', 714, 714, 714)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (721, N'Meryl', N'Ingra', N'Habershon', N'Stonestreet', 715, 715, 715)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (722, N'Clarice', N'Rhea', N'Barnewelle', N'Jerrom', 716, 716, 716)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (723, N'Dorotea', N'Hope', N'Slight', N'Philippsohn', 717, 717, 717)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (724, N'Paola', N'Georgeanne', N'Grint', N'Scammonden', 718, 718, 718)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (725, N'Annnora', N'Tabb', N'Tomasz', N'Pedel', 719, 719, 719)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (726, N'Kelila', N'Launce', N'Docker', N'Worling', 720, 720, 720)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (727, N'Henrik', N'Dorelle', N'Wemyss', N'McCuthais', 721, 721, 721)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (728, N'Orland', N'Winna', N'Gribbon', N'Eannetta', 722, 722, 722)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (729, N'Sibella', N'Mathew', N'Tutt', N'Bastie', 723, 723, 723)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (730, N'Amalia', N'Cornie', N'Paunsford', N'McLeese', 724, 724, 724)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (731, N'Wayne', N'Dyana', N'Petricek', N'Luberti', 725, 725, 725)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (732, N'Easter', N'Myrta', N'Cordero', N'Bronot', 726, 726, 726)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (733, N'Marcellina', N'Georgie', N'Cooper', N'Yuryaev', 727, 727, 727)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (734, N'Robenia', N'Wolfy', N'Trassler', N'Brudenell', 728, 728, 728)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (735, N'Gerard', N'Nicola', N'Humburton', N'Sherr', 729, 729, 729)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (736, N'Kim', N'Jorrie', N'Jencken', N'Stollenbecker', 730, 730, 730)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (737, N'Korrie', N'Trevar', N'Kitchinham', N'Ondracek', 731, 731, 731)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (738, N'Katusha', N'Siward', N'Eliaz', N'Beacroft', 732, 732, 732)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (739, N'Elisha', N'Hillery', N'Cousen', N'Joppich', 733, 733, 733)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (740, N'Graehme', N'Electra', N'Sjollema', N'McVittie', 734, 734, 734)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (741, N'Erl', N'Pauletta', N'Elks', N'McGoldrick', 735, 735, 735)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (742, N'Elsbeth', N'Janina', N'Vasyukhin', N'Pentland', 736, 736, 736)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (743, N'Bria', N'Abeu', N'Bruyet', N'Beavors', 737, 737, 737)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (744, N'Kylila', N'Berke', N'McCarty', N'Rubberts', 738, 738, 738)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (745, N'Dahlia', N'Nedda', N'Sharples', N'Hampshaw', 739, 739, 739)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (746, N'Elias', N'Truda', N'Dowbiggin', N'Poetz', 740, 740, 740)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (747, N'Gawen', N'Beau', N'Jumeau', N'Cleugh', 741, 741, 741)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (748, N'Codie', N'Daniela', N'Havercroft', N'McGillivray', 742, 742, 742)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (749, N'Pip', N'Nap', N'Thairs', N'Cisneros', 743, 743, 743)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (750, N'Tobe', N'Ly', N'Speerman', N'Wass', 744, 744, 744)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (751, N'Angus', N'Bernhard', N'Bladon', N'Pudge', 745, 745, 745)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (752, N'Marylou', N'Wilbert', N'Bidmead', N'Chantrell', 746, 746, 746)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (753, N'Reggi', N'Matt', N'Bloxham', N'Rosedale', 747, 747, 747)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (754, N'Marin', N'Jameson', N'Pagett', N'Shortland', 748, 748, 748)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (755, N'Barbabas', N'Ingunna', N'Rosenwald', N'Renwick', 749, 749, 749)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (756, N'Allegra', N'Annabelle', N'Kupisz', N'Tremmel', 750, 750, 750)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (757, N'Jenine', N'Ode', N'Davidove', N'Sexstone', 751, 751, 751)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (758, N'Brunhilda', N'Shaylyn', N'Jiggens', N'Clausner', 752, 752, 752)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (759, N'Joellyn', N'Ty', N'Durtnell', N'Pennino', 753, 753, 753)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (760, N'Rivy', N'Al', N'Padmore', N'Simionato', 754, 754, 754)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (761, N'Virge', N'Pierson', N'Puddicombe', N'Jantel', 755, 755, 755)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (762, N'Arel', N'Magdalen', N'Brevetor', N'Tweedell', 756, 756, 756)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (763, N'Marya', N'Margareta', N'Byres', N'Boni', 757, 757, 757)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (764, N'Nicolai', N'Tamiko', N'Woan', N'Whates', 758, 758, 758)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (765, N'Maure', N'Fidela', N'Birbeck', N'Dilleway', 759, 759, 759)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (766, N'Tansy', N'Catlin', N'Goldstein', N'Yarham', 760, 760, 760)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (767, N'Derron', N'Elbertine', N'Brownell', N'Busen', 761, 761, 761)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (768, N'Rene', N'Hobard', N'Patnelli', N'Casel', 762, 762, 762)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (769, N'Lockwood', N'Pearline', N'Mockford', N'Harnett', 763, 763, 763)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (770, N'Ragnar', N'Tawnya', N'Giffon', N'Ropking', 764, 764, 764)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (771, N'Calla', N'Peta', N'Shreeves', N'Pelman', 765, 765, 765)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (772, N'Ezekiel', N'Jorgan', N'Cabera', N'Eastlake', 766, 766, 766)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (773, N'Eleanore', N'Ramon', N'Elliston', N'Cargenven', 767, 767, 767)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (774, N'Maryjane', N'Ronny', N'Sandham', N'Tooting', 768, 768, 768)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (775, N'Dill', N'Karmen', N'Hollyman', N'Lorenzini', 769, 769, 769)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (776, N'Nikolai', N'Dominga', N'Janda', N'Josovich', 770, 770, 770)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (777, N'Luz', N'Amalie', N'MacGillivray', N'Gilluley', 771, 771, 771)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (778, N'Britt', N'Amandi', N'Plitz', N'Beane', 772, 772, 772)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (779, N'Tuckie', N'Delia', N'Cannicott', N'Furlow', 773, 773, 773)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (780, N'Star', N'Bette', N'Felkin', N'Houldcroft', 774, 774, 774)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (781, N'Aryn', N'Jeniffer', N'Hinstock', N'Jameson', 775, 775, 775)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (782, N'Maxie', N'Rachele', N'Castaner', N'Phillipp', 776, 776, 776)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (783, N'Eugen', N'Olivier', N'Deeprose', N'Cowgill', 777, 777, 777)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (784, N'North', N'Gale', N'Lanston', N'Petyt', 778, 778, 778)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (785, N'Tailor', N'Danni', N'Slide', N'Gosby', 779, 779, 779)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (786, N'Tabbie', N'Bertha', N'Gerssam', N'Myton', 780, 780, 780)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (787, N'Gaynor', N'Antonino', N'Ivanikov', N'Robertot', 781, 781, 781)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (788, N'Bridget', N'Aldus', N'Hoonahan', N'Pardi', 782, 782, 782)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (789, N'Orazio', N'Adlai', N'Crank', N'Ayers', 783, 783, 783)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (790, N'Gunther', N'Tamara', N'Purveys', N'Cornes', 784, 784, 784)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (791, N'Rory', N'August', N'McRobb', N'Lathleiff', 785, 785, 785)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (792, N'Derward', N'Yulma', N'Moles', N'Lorrie', 786, 786, 786)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (793, N'Celestyna', N'Hubie', N'Mangenot', N'Murthwaite', 787, 787, 787)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (794, N'Lia', N'Sigismundo', N'Shuttleworth', N'Immings', 788, 788, 788)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (795, N'Mikael', N'Donny', N'Wurz', N'Jewes', 789, 789, 789)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (796, N'Carly', N'Romeo', N'Betun', N'Entwistle', 790, 790, 790)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (797, N'Phillipe', N'Flem', N'Rosson', N'Babington', 791, 791, 791)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (798, N'Karlie', N'Natasha', N'Brundrett', N'Waller-Bridge', 792, 792, 792)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (799, N'Woodie', N'Adelind', N'Damato', N'Dunphie', 793, 793, 793)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (800, N'Georg', N'Fabien', N'Thomerson', N'Lonnon', 794, 794, 794)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (801, N'Sherline', N'Jeramey', N'Spanswick', N'Carvell', 795, 795, 795)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (802, N'Walker', N'Myra', N'Vignal', N'Watkiss', 796, 796, 796)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (803, N'Dominga', N'Jon', N'Brixey', N'Anneslie', 797, 797, 797)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (804, N'Pattie', N'Evangelina', N'Potebury', N'Caldicot', 798, 798, 798)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (805, N'Joni', N'Sarita', N'Rance', N'Folds', 799, 799, 799)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (806, N'Brena', N'Brunhilda', N'D''Enrico', N'Oldland', 800, 800, 800)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (807, N'Meade', N'Koralle', N'Gordon-Giles', N'Kleisel', 801, 801, 801)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (808, N'Westley', N'Alethea', N'Guidelli', N'Crandon', 802, 802, 802)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (809, N'Ermentrude', N'Worden', N'Keppe', N'Barti', 803, 803, 803)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (810, N'Merrill', N'Janeva', N'Justis', N'Ashford', 804, 804, 804)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (811, N'Benoit', N'Sheryl', N'Peepall', N'Howorth', 805, 805, 805)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (812, N'Prent', N'Shea', N'Kervin', N'Kirke', 806, 806, 806)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (813, N'Valaria', N'Marisa', N'Watsam', N'Gunthorpe', 807, 807, 807)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (814, N'Aubree', N'Deane', N'Lammers', N'Knotte', 808, 808, 808)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (815, N'Micaela', N'Pennie', N'Cuss', N'Blood', 809, 809, 809)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (816, N'Mathilde', N'Benedicta', N'Templar', N'Hartmann', 810, 810, 810)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (817, N'Katine', N'Fay', N'Forrest', N'Berthot', 811, 811, 811)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (818, N'Darryl', N'Winona', N'Wolland', N'Wortley', 812, 812, 812)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (819, N'Thea', N'Vanda', N'MacAlpine', N'Benneyworth', 813, 813, 813)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (820, N'Marge', N'Mae', N'Lanegran', N'Gernier', 814, 814, 814)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (821, N'Bibbie', N'Teresita', N'Grigoire', N'Hallowell', 815, 815, 815)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (822, N'Raleigh', N'Theobald', N'Shropsheir', N'Heinicke', 816, 816, 816)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (823, N'Anneliese', N'Oona', N'Berrisford', N'Ainscow', 817, 817, 817)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (824, N'Jacobo', N'Erminia', N'McCombe', N'Sheraton', 818, 818, 818)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (825, N'Agna', N'Rhys', N'Proudler', N'Meere', 819, 819, 819)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (826, N'Ian', N'Glad', N'Haquard', N'Pipe', 820, 820, 820)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (827, N'Caron', N'Brietta', N'Planke', N'Jenner', 821, 821, 821)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (828, N'Tadeas', N'Allyn', N'Mort', N'Grimmett', 822, 822, 822)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (829, N'Annnora', N'Roseline', N'Sarath', N'Hugo', 823, 823, 823)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (830, N'Wynne', N'Correy', N'Cornell', N'Stovin', 824, 824, 824)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (831, N'Brnaba', N'Hedwiga', N'Monkton', N'Lethabridge', 825, 825, 825)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (832, N'Sancho', N'Lester', N'Sausman', N'Durnian', 826, 826, 826)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (833, N'Drusie', N'Maire', N'Petrello', N'Blazewicz', 827, 827, 827)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (834, N'Leonore', N'Nicolette', N'Smaleman', N'Flight', 828, 828, 828)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (835, N'Julianna', N'Ferrell', N'Hanks', N'Venn', 829, 829, 829)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (836, N'Reggie', N'Killie', N'Garatty', N'Herity', 830, 830, 830)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (837, N'Deina', N'Max', N'Blackeby', N'Gaffer', 831, 831, 831)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (838, N'Mellisa', N'Moise', N'Sevier', N'Banting', 832, 832, 832)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (839, N'Kevin', N'Hobard', N'Benezet', N'Flement', 833, 833, 833)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (840, N'Josefa', N'Freddi', N'Azemar', N'Yitzhak', 834, 834, 834)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (841, N'Myrwyn', N'Fidelity', N'Tirte', N'Costelow', 835, 835, 835)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (842, N'Celestia', N'Carey', N'Winham', N'Huband', 836, 836, 836)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (843, N'Kessiah', N'Harrietta', N'Trythall', N'Steer', 837, 837, 837)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (844, N'Jo', N'Sallie', N'Volante', N'Olivi', 838, 838, 838)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (845, N'Dina', N'Farrel', N'Bebis', N'Learned', 839, 839, 839)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (846, N'Martita', N'Emlen', N'Shawcross', N'Clarey', 840, 840, 840)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (847, N'Silvio', N'Olenka', N'Sangar', N'Dwyer', 841, 841, 841)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (848, N'Joanna', N'Humberto', N'Brolan', N'Fellows', 842, 842, 842)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (849, N'Doralynn', N'Nanon', N'Siley', N'Carren', 843, 843, 843)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (850, N'Jamaal', N'Cal', N'Kobke', N'Codeman', 844, 844, 844)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (851, N'Martica', N'Oswell', N'Birdis', N'Test', 845, 845, 845)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (852, N'Ambrose', N'Catarina', N'Vaughan-Hughes', N'Bennike', 846, 846, 846)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (853, N'Danya', N'Cyril', N'Downe', N'Oxby', 847, 847, 847)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (854, N'Trude', N'Dosi', N'Bonefant', N'Lintall', 848, 848, 848)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (855, N'Parry', N'Alvina', N'Carpmile', N'Annatt', 849, 849, 849)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (856, N'Tammi', N'Erl', N'Hawken', N'Chieco', 850, 850, 850)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (857, N'Tawnya', N'Blayne', N'Bruno', N'Niemetz', 851, 851, 851)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (858, N'Byron', N'Evelyn', N'Filipczynski', N'Pomeroy', 852, 852, 852)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (859, N'Addie', N'Salomi', N'Magwood', N'Abell', 853, 853, 853)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (860, N'Duff', N'Rosanna', N'Caston', N'Goburn', 854, 854, 854)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (861, N'Ardelia', N'Penn', N'de Mendoza', N'Chidwick', 855, 855, 855)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (862, N'Ive', N'Jackie', N'Cortin', N'Macrow', 856, 856, 856)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (863, N'Pam', N'Maje', N'Bootton', N'Northcott', 857, 857, 857)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (864, N'Mathilda', N'Shaughn', N'Keirl', N'Keld', 858, 858, 858)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (865, N'Alejandro', N'Hersch', N'Bulgen', N'Ferroni', 859, 859, 859)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (866, N'Fran', N'Read', N'Pauls', N'Matis', 860, 860, 860)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (867, N'Mina', N'Grenville', N'Habbon', N'Renshall', 861, 861, 861)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (868, N'Darby', N'Murray', N'Keeting', N'Ferrar', 862, 862, 862)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (869, N'Basile', N'Mella', N'Sang', N'Presslee', 863, 863, 863)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (870, N'Lyle', N'Concordia', N'Palluschek', N'Lempel', 864, 864, 864)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (871, N'Jannelle', N'Madelina', N'Sancho', N'Shelmerdine', 865, 865, 865)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (872, N'Emelda', N'Irita', N'Laddle', N'Dibdale', 866, 866, 866)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (873, N'Anna-diane', N'Margi', N'Mardle', N'Ellinor', 867, 867, 867)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (874, N'Bertram', N'Elayne', N'Blenkensop', N'Munson', 868, 868, 868)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (875, N'Anya', N'Any', N'Roset', N'Jurries', 869, 869, 869)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (876, N'Lacee', N'Lenard', N'Spriggen', N'Ritelli', 870, 870, 870)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (877, N'Larissa', N'Kalle', N'Batthew', N'Faulder', 871, 871, 871)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (878, N'Skippie', N'Foss', N'Hendonson', N'Wallis', 872, 872, 872)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (879, N'Josefa', N'Whitaker', N'Silver', N'Tollmache', 873, 873, 873)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (880, N'Conant', N'Gilles', N'Skipping', N'Ferrier', 874, 874, 874)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (881, N'Almeda', N'Carmine', N'O''Crowley', N'Harragin', 875, 875, 875)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (882, N'Timmi', N'Ynez', N'Banke', N'Cornock', 876, 876, 876)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (883, N'Katharina', N'Margarete', N'Dederick', N'Broschke', 877, 877, 877)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (884, N'Rockey', N'Debee', N'Harrowell', N'Ram', 878, 878, 878)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (885, N'Patrizia', N'Dorris', N'Roelvink', N'Tremblot', 879, 879, 879)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (886, N'Gerardo', N'Natty', N'Gerber', N'Tomasello', 880, 880, 880)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (887, N'Meredith', N'Lyn', N'Brahan', N'Aslam', 881, 881, 881)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (888, N'Viva', N'Hendrick', N'Barette', N'Sallan', 882, 882, 882)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (889, N'Phillipe', N'Teresa', N'Sanday', N'Knibley', 883, 883, 883)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (890, N'Sherman', N'Dulcie', N'De Lacey', N'Aizkovitch', 884, 884, 884)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (891, N'Margalit', N'Catharina', N'Karet', N'Brymner', 885, 885, 885)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (892, N'Ashlee', N'Art', N'Bernardinelli', N'Dightham', 886, 886, 886)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (893, N'Nelie', N'Granger', N'Atwill', N'Weekland', 887, 887, 887)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (894, N'Kriste', N'Michal', N'Mucci', N'Jeacocke', 888, 888, 888)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (895, N'Florie', N'Charleen', N'Swallow', N'Fandrich', 889, 889, 889)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (896, N'Letta', N'Myrah', N'Chaudrelle', N'Hale', 890, 890, 890)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (897, N'Staci', N'Rick', N'Myring', N'Purkis', 891, 891, 891)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (898, N'Jesus', N'Buiron', N'Clem', N'Farrow', 892, 892, 892)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (899, N'Garv', N'Justinian', N'Dibley', N'McGinnell', 893, 893, 893)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (900, N'Hildagarde', N'Madelon', N'Habbon', N'Garling', 894, 894, 894)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (901, N'Lodovico', N'Stephannie', N'Frostdick', N'Cunney', 895, 895, 895)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (902, N'Mireille', N'Herbie', N'Skaife d''Ingerthorpe', N'Levin', 896, 896, 896)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (903, N'Aldwin', N'Vanya', N'Dressel', N'Machon', 897, 897, 897)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (904, N'Vikky', N'Marline', N'Copo', N'Kloisner', 898, 898, 898)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (905, N'Cassey', N'Rubin', N'Morrant', N'Bielfeld', 899, 899, 899)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (906, N'Jules', N'Kassandra', N'Sobey', N'Wisedale', 900, 900, 900)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (907, N'Andonis', N'Sharron', N'Drury', N'Abatelli', 901, 901, 901)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (908, N'Renie', N'Joelie', N'Cheke', N'Beamiss', 902, 902, 902)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (909, N'Melodie', N'Gelya', N'Racher', N'O'' Mara', 903, 903, 903)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (910, N'Marian', N'Leyla', N'Ilyasov', N'Coxall', 904, 904, 904)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (911, N'Cherianne', N'Rosy', N'Kasparski', N'Kleine', 905, 905, 905)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (912, N'Cordy', N'Shep', N'Duffie', N'Dibsdale', 906, 906, 906)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (913, N'Vaclav', N'Walker', N'Kleinstern', N'Pottery', 907, 907, 907)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (914, N'Ara', N'Adriane', N'Struan', N'Dwyr', 908, 908, 908)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (915, N'Alanson', N'Sib', N'Evenden', N'Springtorpe', 909, 909, 909)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (916, N'Otha', N'Elle', N'Stainton', N'Kleinsmuntz', 910, 910, 910)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (917, N'Elaina', N'Renelle', N'Mirralls', N'Marre', 911, 911, 911)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (918, N'Nyssa', N'Arron', N'Grocock', N'Adamou', 912, 912, 912)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (919, N'Tucky', N'Dorey', N'Raise', N'Bennellick', 913, 913, 913)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (920, N'Raoul', N'Allys', N'Durtnel', N'Noury', 914, 914, 914)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (921, N'Valentino', N'Audy', N'Goade', N'Janc', 915, 915, 915)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (922, N'Tobe', N'Shelton', N'Trolley', N'Ladley', 916, 916, 916)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (923, N'Darryl', N'Constantine', N'Brook', N'Tomkys', 917, 917, 917)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (924, N'Chalmers', N'Chadd', N'Gallahar', N'Sanpher', 918, 918, 918)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (925, N'Jacquelyn', N'Davida', N'Ashwin', N'Lawling', 919, 919, 919)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (926, N'Bone', N'Sol', N'Orae', N'Aimer', 920, 920, 920)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (927, N'Dominica', N'Erhard', N'MacTague', N'Sidwick', 921, 921, 921)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (928, N'Zelma', N'Pam', N'Will', N'Heiner', 922, 922, 922)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (929, N'Dicky', N'Lorrin', N'Bootell', N'Whitehorne', 923, 923, 923)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (930, N'Jephthah', N'Bronnie', N'Deadman', N'Basilio', 924, 924, 924)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (931, N'Cybil', N'Tabby', N'Bennen', N'Mc Grath', 925, 925, 925)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (932, N'Odille', N'Elora', N'Jenny', N'Gummery', 926, 926, 926)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (933, N'Masha', N'Hartley', N'Bakhrushkin', N'Krahl', 927, 927, 927)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (934, N'Ekaterina', N'Alex', N'Golsby', N'Bauser', 928, 928, 928)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (935, N'Ignacius', N'Wyn', N'Jurek', N'Abrami', 929, 929, 929)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (936, N'Shepperd', N'Averell', N'Eyles', N'Walls', 930, 930, 930)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (937, N'Dewey', N'Fernanda', N'Whorton', N'Deane', 931, 931, 931)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (938, N'Alphonse', N'Henderson', N'Linggard', N'Clancy', 932, 932, 932)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (939, N'Ellerey', N'Eldon', N'Filippov', N'Justun', 933, 933, 933)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (940, N'Pamela', N'Athene', N'Coakley', N'Akaster', 934, 934, 934)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (941, N'Zondra', N'Cindi', N'Trowill', N'Wooland', 935, 935, 935)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (942, N'Leonhard', N'Thorny', N'Karpf', N'Frankes', 936, 936, 936)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (943, N'Clo', N'Rabbi', N'Inkles', N'MacQueen', 937, 937, 937)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (944, N'Ina', N'Nanette', N'Bragge', N'Petegre', 938, 938, 938)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (945, N'Reinaldos', N'Lothaire', N'Pepis', N'Putland', 939, 939, 939)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (946, N'Evangeline', N'Niven', N'Hunnicutt', N'Buye', 940, 940, 940)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (947, N'Basilius', N'Koral', N'Greest', N'Gritland', 941, 941, 941)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (948, N'Carole', N'Hersh', N'Farquharson', N'Dunlop', 942, 942, 942)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (949, N'Nowell', N'Sharona', N'Styant', N'Grewes', 943, 943, 943)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (950, N'Worthington', N'Bettina', N'Florio', N'Janu', 944, 944, 944)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (951, N'Doreen', N'Elspeth', N'Olyet', N'Cogdell', 945, 945, 945)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (952, N'Brinn', N'Catherina', N'Fisbey', N'Forsdike', 946, 946, 946)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (953, N'Barnebas', N'Kikelia', N'Jurgen', N'Stedson', 947, 947, 947)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (954, N'Sarena', N'Pattin', N'Label', N'Phillcock', 948, 948, 948)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (955, N'Shepherd', N'Humfrey', N'Coggen', N'Sapey', 949, 949, 949)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (956, N'Amery', N'Camellia', N'Toderbrugge', N'Trimble', 950, 950, 950)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (957, N'Melisent', N'Nadeen', N'Trodd', N'Ekins', 951, 951, 951)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (958, N'Prisca', N'Gearard', N'Shirt', N'Oldale', 952, 952, 952)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (959, N'Titos', N'Louise', N'Comelini', N'Covey', 953, 953, 953)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (960, N'Ringo', N'Isador', N'Bewfield', N'Presslee', 954, 954, 954)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (961, N'Tabb', N'Chicky', N'O''Dogherty', N'Fetterplace', 955, 955, 955)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (962, N'Gabriel', N'Audra', N'Mattiazzi', N'Howship', 956, 956, 956)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (963, N'Raine', N'Ludvig', N'Van den Velde', N'Wringe', 957, 957, 957)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (964, N'Gena', N'Nydia', N'Lesly', N'Decourt', 958, 958, 958)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (965, N'Brigg', N'Mollie', N'Caselick', N'Castro', 959, 959, 959)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (966, N'Guntar', N'Balduin', N'Leither', N'Gibbon', 960, 960, 960)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (967, N'Tobin', N'Karl', N'Wegenen', N'Dibling', 961, 961, 961)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (968, N'Nikki', N'Portie', N'Stribbling', N'Di Ruggero', 962, 962, 962)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (969, N'Kelbee', N'Danni', N'Clunie', N'Cannicott', 963, 963, 963)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (970, N'Valli', N'Judd', N'Whawell', N'Brigham', 964, 964, 964)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (971, N'Rayner', N'Anetta', N'Blodg', N'Marion', 965, 965, 965)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (972, N'Mallorie', N'Adrien', N'Lauks', N'Chicco', 966, 966, 966)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (973, N'Timmie', N'Edy', N'Ollenbuttel', N'Cardiff', 967, 967, 967)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (974, N'Mariann', N'Jerri', N'Comoletti', N'Bromidge', 968, 968, 968)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (975, N'Kareem', N'Livvie', N'Bounde', N'Dymott', 969, 969, 969)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (976, N'Wade', N'Anderea', N'Yo', N'Jacqueminot', 970, 970, 970)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (977, N'Erminia', N'Raquela', N'Boarer', N'Twigg', 971, 971, 971)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (978, N'Efren', N'Mathilde', N'Jutson', N'Febry', 972, 972, 972)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (979, N'Cly', N'Dorella', N'Henze', N'Kilban', 973, 973, 973)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (980, N'Tremain', N'Jany', N'De Maine', N'Ralls', 974, 974, 974)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (981, N'Beniamino', N'Leif', N'Ruckhard', N'Plaskett', 975, 975, 975)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (982, N'Dov', N'Aron', N'Kitchenside', N'Thorius', 976, 976, 976)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (983, N'Trent', N'Guendolen', N'Caldecot', N'Buttriss', 977, 977, 977)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (984, N'Guillaume', N'Jessalin', N'Iacomettii', N'Skipton', 978, 978, 978)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (985, N'Lucian', N'Fairleigh', N'Claibourn', N'Craster', 979, 979, 979)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (986, N'Beckie', N'Lorrin', N'Earingey', N'Domerq', 980, 980, 980)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (987, N'Meris', N'Antonio', N'Sebborn', N'Pietrzyk', 981, 981, 981)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (988, N'Bernie', N'Lonnie', N'Chatteris', N'Reynalds', 982, 982, 982)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (989, N'Leann', N'Rab', N'Josselsohn', N'Sampson', 983, 983, 983)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (990, N'Ame', N'Leontine', N'Paur', N'Gasnoll', 984, 984, 984)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (991, N'Rickert', N'Sherill', N'Wyllcocks', N'Sackes', 985, 985, 985)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (992, N'Caspar', N'Sebastiano', N'Hourihan', N'Pawsey', 986, 986, 986)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (993, N'Aurelia', N'Melita', N'Richin', N'Farnes', 987, 987, 987)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (994, N'Arvie', N'Micaela', N'Percifer', N'Giffen', 988, 988, 988)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (995, N'Madonna', N'Sande', N'Casbolt', N'Carous', 989, 989, 989)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (996, N'Geneva', N'Anne', N'Androsik', N'Sanper', 990, 990, 990)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (997, N'Michaella', N'Marrissa', N'Hess', N'Falco', 991, 991, 991)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (998, N'Garnette', N'Angelina', N'Comello', N'Kleeman', 992, 992, 992)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (999, N'Etan', N'Petrina', N'Haggett', N'Patershall', 993, 993, 993)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1000, N'Haleigh', N'Obadias', N'Furse', N'Cassey', 994, 994, 994)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1001, N'Amalie', N'Charis', N'Chartman', N'Graser', 995, 995, 995)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1002, N'Garland', N'Rab', N'Petracci', N'Thunders', 996, 996, 996)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1003, N'Janis', N'Harbert', N'Loverock', N'Hassur', 997, 997, 997)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1004, N'Lynsey', N'Zebulen', N'Newburn', N'Ullyott', 998, 998, 998)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1005, N'Hewitt', N'Gillan', N'Blague', N'Richardson', 999, 999, 999)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1006, N'Kiel', N'Etan', N'MacKegg', N'Bonifazio', 1000, 1000, 1000)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1007, N'Nancy', N'Johnna', N'Goldup', N'Hemphrey', 1, 1, 1)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1008, N'Jobie', N'Phedra', N'Float', N'Metzig', 1, 1, 1)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1009, N'Nikkie', N'Bernadene', N'Williment', N'Layson', 2, 2, 2)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1010, N'Mona', N'Alanah', N'Hurch', N'Pont', 3, 3, 3)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1011, N'Trudi', N'Ivonne', N'Fassum', N'Birchett', 4, 4, 4)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1012, N'Sergei', N'Tad', N'Raynor', N'Corbould', 5, 5, 5)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1013, N'Ericha', N'Ardelis', N'Archanbault', N'Oakland', 6, 6, 6)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1014, N'Elinore', N'Joachim', N'Hanburry', N'Kierans', 7, 7, 7)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1015, N'Daveen', N'Regan', N'Nurcombe', N'Keming', 8, 8, 8)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1016, N'Boigie', N'Brooke', N'Strangeways', N'Andover', 9, 9, 9)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1017, N'Theo', N'Artie', N'Borborough', N'Toping', 10, 10, 10)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1018, N'Pammy', N'Adelheid', N'Harbertson', N'Whate', 11, 11, 11)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1019, N'Werner', N'Merlina', N'Goodfield', N'Veare', 12, 12, 12)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1020, N'Gertrud', N'Annnora', N'Moodie', N'Pethybridge', 13, 13, 13)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1021, N'Obidiah', N'Cam', N'Dulanty', N'Gwyneth', 14, 14, 14)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1022, N'Silvain', N'Kelsy', N'Hillatt', N'Druett', 15, 15, 15)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1023, N'Ethelyn', N'Franklin', N'Ipwell', N'Apark', 16, 16, 16)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1024, N'Austen', N'Melamie', N'Troni', N'Easson', 17, 17, 17)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1025, N'Hanson', N'Daniele', N'Boskell', N'Josipovic', 18, 18, 18)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1026, N'Natividad', N'Gael', N'Cheese', N'MacDonald', 19, 19, 19)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1027, N'Karilynn', N'Edlin', N'Ferrea', N'Pllu', 20, 20, 20)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1028, N'Doro', N'Michaelina', N'McInnery', N'Cuxson', 21, 21, 21)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1029, N'Randa', N'Kristo', N'Gilloran', N'Seckom', 22, 22, 22)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1030, N'Colver', N'Angie', N'Lindenbluth', N'Altree', 23, 23, 23)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1031, N'Hinda', N'Cherey', N'Batrick', N'Neillans', 24, 24, 24)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1032, N'Lina', N'Ramonda', N'Mudd', N'Griffoen', 25, 25, 25)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1033, N'Field', N'Garvy', N'Maulin', N'Egger', 26, 26, 26)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1034, N'Jerome', N'Rozelle', N'Basten', N'Leacy', 27, 27, 27)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1035, N'Giusto', N'Dottie', N'Dunbavin', N'd''Escoffier', 28, 28, 28)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1036, N'Morten', N'Blinnie', N'Everleigh', N'Seneschal', 29, 29, 29)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1037, N'Murielle', N'Henrieta', N'Fidele', N'Picford', 30, 30, 30)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1038, N'Evania', N'Rhianna', N'O''Cooney', N'Hadlee', 31, 31, 31)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1039, N'Amalea', N'Yvette', N'Windas', N'Cleevely', 32, 32, 32)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1040, N'Oralia', N'Ripley', N'Skettles', N'Tellenbrok', 33, 33, 33)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1041, N'Brandy', N'Michele', N'Haseldine', N'Harder', 34, 34, 34)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1042, N'Aimee', N'Alameda', N'Ridpath', N'Anthony', 35, 35, 35)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1043, N'Dolley', N'Morena', N'Graysmark', N'Minguet', 36, 36, 36)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1044, N'Vita', N'Marilin', N'Klais', N'Raycroft', 37, 37, 37)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1045, N'Ros', N'Rodie', N'Haton', N'Rihanek', 38, 38, 38)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1046, N'Evelina', N'Zandra', N'Spere', N'Ottewill', 39, 39, 39)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1047, N'Gweneth', N'Debbi', N'Didball', N'Swan', 40, 40, 40)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1048, N'Darryl', N'Estrella', N'Richardet', N'Liver', 41, 41, 41)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1049, N'Evelin', N'Loleta', N'Desforges', N'Hayesman', 42, 42, 42)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1050, N'Humberto', N'Arlene', N'Cratchley', N'Wysome', 43, 43, 43)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1051, N'Herve', N'Hulda', N'Etoile', N'Pauncefoot', 44, 44, 44)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1052, N'Bay', N'Clarette', N'Chopin', N'McCaskill', 45, 45, 45)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1053, N'Caldwell', N'Caritta', N'Fordham', N'Thurley', 46, 46, 46)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1054, N'Jeremiah', N'Shanna', N'Leser', N'Scrimgeour', 47, 47, 47)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1055, N'Jaquelyn', N'Maude', N'Guiducci', N'Hedworth', 48, 48, 48)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1056, N'Tuckie', N'Thacher', N'Auld', N'Ivushkin', 49, 49, 49)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1057, N'Davy', N'Obadias', N'Alker', N'Broomfield', 50, 50, 50)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1058, N'Gayle', N'Felix', N'Simonetto', N'Foulis', 51, 51, 51)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1059, N'Wynny', N'Nowell', N'Vlasenkov', N'Mews', 52, 52, 52)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1060, N'Ilse', N'Nikolaos', N'Cowling', N'Leser', 53, 53, 53)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1061, N'Elinor', N'Ariel', N'Egarr', N'Lodeke', 54, 54, 54)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1062, N'Penn', N'Roz', N'Kuna', N'Bedome', 55, 55, 55)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1063, N'Karon', N'Waverley', N'Fellowes', N'Ralph', 56, 56, 56)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1064, N'Loren', N'Herculie', N'Harradence', N'Jaques', 57, 57, 57)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1065, N'Nevil', N'Ravid', N'Batie', N'Byard', 58, 58, 58)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1066, N'Alfy', N'Clarette', N'Gowry', N'Reven', 59, 59, 59)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1067, N'Dael', N'Kaitlin', N'Crumly', N'Manolov', 60, 60, 60)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1068, N'Jessi', N'Nance', N'Van Bruggen', N'Courtes', 61, 61, 61)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1069, N'Florri', N'Rosita', N'Manus', N'Croke', 62, 62, 62)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1070, N'Eddi', N'Rurik', N'Wilprecht', N'Revie', 63, 63, 63)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1071, N'Brunhilde', N'Jess', N'Komorowski', N'Iuorio', 64, 64, 64)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1072, N'Rosana', N'Wilhelm', N'Harry', N'Delacour', 65, 65, 65)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1073, N'Alana', N'Melisa', N'Rawles', N'Juste', 66, 66, 66)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1074, N'Marjorie', N'Katinka', N'Stocky', N'Cordie', 67, 67, 67)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1075, N'Alexandre', N'Alta', N'Sara', N'Tschierasche', 68, 68, 68)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1076, N'Waldemar', N'Joyce', N'Kenningham', N'Sydenham', 69, 69, 69)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1077, N'Rene', N'Riccardo', N'Capsey', N'Fazackerley', 70, 70, 70)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1078, N'Wakefield', N'Bobette', N'Fortnon', N'Espina', 71, 71, 71)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1079, N'Carlynne', N'Casey', N'Sterrie', N'Capini', 72, 72, 72)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1080, N'Hadria', N'Karoline', N'Mattiazzo', N'Deakin', 73, 73, 73)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1081, N'Tally', N'Dorian', N'Whibley', N'Sings', 74, 74, 74)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1082, N'Neall', N'Laurent', N'Kitteringham', N'Etchell', 75, 75, 75)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1083, N'Darryl', N'Alasteir', N'Amery', N'Mathelon', 76, 76, 76)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1084, N'Louisa', N'Lorelle', N'Korn', N'Cowpertwait', 77, 77, 77)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1085, N'Julieta', N'Erik', N'Littlewood', N'Luxford', 78, 78, 78)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1086, N'Ephrem', N'Gussi', N'Fettiplace', N'Kyngdon', 79, 79, 79)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1087, N'Fidole', N'Meredithe', N'Kalaher', N'Gammon', 80, 80, 80)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1088, N'Karon', N'Von', N'Jime', N'Irvine', 81, 81, 81)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1089, N'Drusilla', N'Cleon', N'Brimilcombe', N'Eaklee', 82, 82, 82)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1090, N'Mose', N'Kiersten', N'Momery', N'Rheaume', 83, 83, 83)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1091, N'Lulita', N'Hy', N'Friskey', N'Wadly', 84, 84, 84)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1092, N'Leela', N'Elfrida', N'Temperton', N'Breton', 85, 85, 85)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1093, N'Wilone', N'Mandi', N'Coltherd', N'Benini', 86, 86, 86)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1094, N'Marilee', N'Farleigh', N'Wenban', N'Gillicuddy', 87, 87, 87)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1095, N'Clemence', N'Carola', N'Quittonden', N'Macconachy', 88, 88, 88)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1096, N'Antony', N'Corbie', N'Trundler', N'Kerans', 89, 89, 89)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1097, N'Vaughn', N'Christi', N'Posse', N'Macieiczyk', 90, 90, 90)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1098, N'Freedman', N'Monro', N'McCorkell', N'Von Helmholtz', 91, 91, 91)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1099, N'Jo', N'Calvin', N'Baskerfield', N'Hadland', 92, 92, 92)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1100, N'Bayard', N'Glennis', N'Spinage', N'Dadds', 93, 93, 93)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1101, N'Glynnis', N'Paulie', N'Sorton', N'McErlaine', 94, 94, 94)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1102, N'Sisely', N'Gabie', N'Wooderson', N'Gobolos', 95, 95, 95)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1103, N'Goldy', N'Germaine', N'Union', N'Korpal', 96, 96, 96)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1104, N'Vevay', N'Bucky', N'Gymlett', N'Tollow', 97, 97, 97)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1105, N'Lief', N'Ronny', N'Dickey', N'Leeder', 98, 98, 98)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1106, N'Kellen', N'Kalila', N'Hawkwood', N'Sans', 99, 99, 99)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1107, N'Kippy', N'Ronny', N'Mainwaring', N'Koene', 100, 100, 100)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1108, N'Rosalia', N'Sianna', N'Baxstare', N'Treacher', 101, 101, 101)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1109, N'Twyla', N'Roshelle', N'Shillabear', N'Libri', 102, 102, 102)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1110, N'Gracia', N'Ambrosi', N'Joskovitch', N'Bone', 103, 103, 103)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1111, N'Bengt', N'Yuma', N'Brunnen', N'Gaw', 104, 104, 104)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1112, N'Arman', N'Rancell', N'Stirrip', N'Weatherdon', 105, 105, 105)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1113, N'Gregorius', N'Jacenta', N'Headech', N'Beddis', 106, 106, 106)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1114, N'Romonda', N'Patty', N'Gamblin', N'Philipeaux', 107, 107, 107)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1115, N'Jo-anne', N'Shay', N'Gingel', N'Danilchik', 108, 108, 108)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1116, N'Baudoin', N'Hayyim', N'Splain', N'Porch', 109, 109, 109)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1117, N'Gregoor', N'Abbye', N'Twomey', N'Speenden', 110, 110, 110)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1118, N'Livvy', N'Reine', N'Muff', N'Corris', 111, 111, 111)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1119, N'Connie', N'Gabrielle', N'Blunkett', N'Peck', 112, 112, 112)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1120, N'Orel', N'Bradan', N'Yewdell', N'Maddox', 113, 113, 113)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1121, N'Olimpia', N'Mort', N'Render', N'Patchett', 114, 114, 114)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1122, N'Ari', N'Christa', N'Cluelow', N'Camerati', 115, 115, 115)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1123, N'Dale', N'Dicky', N'Fireman', N'Tetther', 116, 116, 116)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1124, N'Serena', N'Cally', N'Cudbird', N'Chicken', 117, 117, 117)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1125, N'Merola', N'Matt', N'Balleine', N'Holby', 118, 118, 118)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1126, N'Elsi', N'Janel', N'Harse', N'Dunnett', 119, 119, 119)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1127, N'Willyt', N'Hewe', N'Whitmore', N'Legrice', 120, 120, 120)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1128, N'Falito', N'Sandi', N'Johnys', N'Lunny', 121, 121, 121)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1129, N'Bea', N'Jolynn', N'Connochie', N'Ingraham', 122, 122, 122)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1130, N'Sauncho', N'Melania', N'Clarson', N'Heugel', 123, 123, 123)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1131, N'Burnard', N'Shanta', N'Rappaport', N'Shew', 124, 124, 124)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1132, N'Fawn', N'Barry', N'Hammersley', N'Yon', 125, 125, 125)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1133, N'Joni', N'Laureen', N'Bootell', N'Sulter', 126, 126, 126)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1134, N'Koenraad', N'Hymie', N'Manns', N'Atling', 127, 127, 127)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1135, N'Burty', N'Roxanne', N'Welton', N'Dugall', 128, 128, 128)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1136, N'Collin', N'Stella', N'Clulee', N'Liebermann', 129, 129, 129)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1137, N'Myriam', N'Ganny', N'Pulbrook', N'Durtnall', 130, 130, 130)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1138, N'Jacki', N'Bealle', N'Shotboulte', N'Inkle', 131, 131, 131)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1139, N'Dolli', N'Renata', N'Tatford', N'Denman', 132, 132, 132)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1140, N'Isaac', N'Griswold', N'Woolstenholmes', N'Poulsen', 133, 133, 133)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1141, N'Larina', N'Lulu', N'Gynn', N'Gyles', 134, 134, 134)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1142, N'Iseabal', N'Bastien', N'Diegan', N'Millhill', 135, 135, 135)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1143, N'Lotte', N'Willey', N'Prisley', N'Considine', 136, 136, 136)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1144, N'Vasilis', N'Marabel', N'Gorstidge', N'Wormstone', 137, 137, 137)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1145, N'Lorens', N'Marijo', N'Brims', N'Lawlee', 138, 138, 138)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1146, N'Aeriela', N'Kurt', N'Simao', N'McIver', 139, 139, 139)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1147, N'Rossie', N'Goldy', N'Klimas', N'Peiro', 140, 140, 140)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1148, N'Dani', N'Kiersten', N'Luis', N'Gorring', 141, 141, 141)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1149, N'Kristopher', N'Abigail', N'Swynley', N'Rubberts', 142, 142, 142)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1150, N'Yelena', N'Jan', N'Bradane', N'Thackston', 143, 143, 143)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1151, N'Cindi', N'Eziechiele', N'Frantzeni', N'Eakens', 144, 144, 144)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1152, N'Zane', N'Courtnay', N'Gavey', N'Chate', 145, 145, 145)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1153, N'Redford', N'Corbie', N'Leggs', N'Yerrall', 146, 146, 146)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1154, N'Anna-diana', N'Neda', N'Vigours', N'Ianinotti', 147, 147, 147)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1155, N'Carlynn', N'Issie', N'Wincott', N'Seddon', 148, 148, 148)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1156, N'Denny', N'Lawrence', N'Scartifield', N'Glencross', 149, 149, 149)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1157, N'Eliot', N'Sella', N'Gogay', N'Toulch', 150, 150, 150)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1158, N'Weidar', N'Joanna', N'Licciardello', N'Woolfenden', 151, 151, 151)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1159, N'Geralda', N'Geri', N'Duly', N'Tomblin', 152, 152, 152)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1160, N'Simona', N'Jaime', N'Sachno', N'Leamon', 153, 153, 153)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1161, N'Brendin', N'Dyan', N'Larroway', N'MacMenamy', 154, 154, 154)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1162, N'Thibaut', N'Antin', N'Cotelard', N'Cossom', 155, 155, 155)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1163, N'Lane', N'Eveleen', N'Wedon', N'Chatenet', 156, 156, 156)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1164, N'Ofella', N'Heall', N'Weston', N'Lytton', 157, 157, 157)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1165, N'Margalit', N'Tracee', N'Duckham', N'Teml', 158, 158, 158)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1166, N'Roderic', N'Roselin', N'Hesser', N'Goodburn', 159, 159, 159)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1167, N'Marion', N'Helaine', N'Constant', N'Blaszczyk', 160, 160, 160)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1168, N'Dougy', N'Sauncho', N'Elves', N'Shade', 161, 161, 161)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1169, N'Gilbertina', N'Myrlene', N'Sprey', N'Peterkin', 162, 162, 162)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1170, N'Arabella', N'Yoko', N'Gelder', N'Abele', 163, 163, 163)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1171, N'Thurston', N'Wilhelmine', N'MacLoughlin', N'Vooght', 164, 164, 164)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1172, N'Zora', N'Lark', N'Oret', N'Winyard', 165, 165, 165)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1173, N'Bess', N'Gusella', N'Sherred', N'Duggen', 166, 166, 166)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1174, N'Blake', N'Lucias', N'Vedstra', N'Mc Meekan', 167, 167, 167)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1175, N'Nikolas', N'Rosy', N'Attwood', N'Falconar', 168, 168, 168)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1176, N'Fredericka', N'Clarisse', N'Knoton', N'Eubank', 169, 169, 169)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1177, N'Salli', N'Willi', N'Takis', N'Sibun', 170, 170, 170)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1178, N'Bertram', N'Adey', N'Ash', N'Gorrick', 171, 171, 171)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1179, N'Thornie', N'Nelly', N'Born', N'Roscrigg', 172, 172, 172)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1180, N'Ashien', N'Dulcia', N'McCord', N'Durand', 173, 173, 173)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1181, N'Montgomery', N'Jewel', N'Frail', N'Kubalek', 174, 174, 174)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1182, N'Teador', N'Iolanthe', N'Ciccottio', N'Dudhill', 175, 175, 175)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1183, N'Rosy', N'Leta', N'Cockrill', N'Rentenbeck', 176, 176, 176)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1184, N'Chloris', N'Norma', N'Dinkin', N'Creese', 177, 177, 177)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1185, N'Erhart', N'Isa', N'Philipard', N'Jack', 178, 178, 178)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1186, N'Judie', N'Robbie', N'Coultas', N'Linforth', 179, 179, 179)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1187, N'Agosto', N'Falkner', N'Hendrichs', N'Negri', 180, 180, 180)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1188, N'Kathrine', N'Quinn', N'Winterson', N'Nottram', 181, 181, 181)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1189, N'Lindsey', N'Silvanus', N'Cottingham', N'Ivanonko', 182, 182, 182)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1190, N'Paten', N'Michaela', N'Sisley', N'Odell', 183, 183, 183)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1191, N'Kyle', N'Jonis', N'Grigolli', N'Gianilli', 184, 184, 184)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1192, N'Loren', N'Jeddy', N'Rummery', N'Glantz', 185, 185, 185)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1193, N'Clotilda', N'Alfy', N'Wegener', N'Twallin', 186, 186, 186)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1194, N'Colan', N'Alex', N'Eacle', N'Andreasen', 187, 187, 187)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1195, N'Casey', N'Antony', N'Batt', N'Everit', 188, 188, 188)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1196, N'Jeanine', N'Chantalle', N'Hoggan', N'Grzegorek', 189, 189, 189)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1197, N'Ilyse', N'Melloney', N'Raggitt', N'Sully', 190, 190, 190)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1198, N'Leta', N'Stefa', N'Gwinn', N'Grogono', 191, 191, 191)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1199, N'Ivett', N'Katina', N'Churchman', N'Wellington', 192, 192, 192)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1200, N'De', N'Dulcinea', N'Gaddesby', N'Varah', 193, 193, 193)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1201, N'Davina', N'Lynnette', N'Getsham', N'Creeghan', 194, 194, 194)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1202, N'Cirillo', N'Nathalia', N'Luigi', N'Klisch', 195, 195, 195)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1203, N'Sibylle', N'Sid', N'Form', N'Blaes', 196, 196, 196)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1204, N'Candis', N'Levey', N'Braunthal', N'Buzzing', 197, 197, 197)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1205, N'Duncan', N'Ruddy', N'Sneden', N'Belward', 198, 198, 198)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1206, N'Marrissa', N'Paula', N'Readshall', N'Chern', 199, 199, 199)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1207, N'Gordan', N'Sancho', N'Lawler', N'Ogden', 200, 200, 200)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1208, N'Violette', N'Morten', N'Perchard', N'Fearby', 201, 201, 201)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1209, N'Fayina', N'Chad', N'Liffe', N'Marchington', 202, 202, 202)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1210, N'Leta', N'Marieann', N'Marke', N'Scimoni', 203, 203, 203)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1211, N'Nestor', N'Mayne', N'Dellenbach', N'McComish', 204, 204, 204)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1212, N'Ketti', N'Eugenio', N'Rignall', N'Agott', 205, 205, 205)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1213, N'Cletis', N'Noll', N'Crowder', N'Davidovici', 206, 206, 206)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1214, N'Christopher', N'Bartolomeo', N'Connikie', N'Bromilow', 207, 207, 207)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1215, N'Ulric', N'Skyler', N'Sloley', N'Sneesby', 208, 208, 208)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1216, N'Jamaal', N'Michaela', N'Duckhouse', N'Chaters', 209, 209, 209)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1217, N'Teador', N'Town', N'Leheude', N'Kidgell', 210, 210, 210)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1218, N'Christoper', N'Scott', N'Tomik', N'Boeck', 211, 211, 211)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1219, N'Vannie', N'Fredek', N'Willingham', N'Kineton', 212, 212, 212)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1220, N'Alanson', N'Melli', N'Harsant', N'Stellin', 213, 213, 213)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1221, N'Grantham', N'Sheffie', N'Adess', N'Blaxall', 214, 214, 214)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1222, N'Brok', N'Rhys', N'Olivello', N'Zohrer', 215, 215, 215)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1223, N'Hagen', N'Wendy', N'Cabrera', N'Izsak', 216, 216, 216)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1224, N'Hatti', N'Maudie', N'Fayter', N'Orvis', 217, 217, 217)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1225, N'Rik', N'Hobard', N'Seak', N'Jimson', 218, 218, 218)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1226, N'Pierce', N'Jeniffer', N'Dispencer', N'Hardan', 219, 219, 219)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1227, N'Sheila', N'Rois', N'Matejovsky', N'Pavett', 220, 220, 220)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1228, N'Edvard', N'Merl', N'Cornau', N'Slite', 221, 221, 221)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1229, N'Davida', N'Mary', N'Clamp', N'McTeggart', 222, 222, 222)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1230, N'Dian', N'Fredi', N'Knoles', N'Spilisy', 223, 223, 223)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1231, N'Garrot', N'Agnola', N'Mannock', N'Dwelley', 224, 224, 224)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1232, N'Saree', N'Ruby', N'Clows', N'Ramalho', 225, 225, 225)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1233, N'Carr', N'Phylys', N'Taw', N'Stockle', 226, 226, 226)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1234, N'Cordie', N'Camille', N'Forre', N'MacHarg', 227, 227, 227)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1235, N'Carolin', N'Kristen', N'Morcombe', N'Delleschi', 228, 228, 228)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1236, N'Hussein', N'Ted', N'Milington', N'Kinforth', 229, 229, 229)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1237, N'Iggie', N'Aloisia', N'Donett', N'O''Nion', 230, 230, 230)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1238, N'Marquita', N'Kristo', N'Willman', N'McCaughey', 231, 231, 231)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1239, N'Marguerite', N'Farrel', N'Iacomettii', N'Griffithe', 232, 232, 232)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1240, N'Ros', N'Stillman', N'Wabersinke', N'Schieferstein', 233, 233, 233)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1241, N'Giulia', N'Silvio', N'Girling', N'Berthon', 234, 234, 234)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1242, N'Shari', N'Abey', N'Burbudge', N'Barroux', 235, 235, 235)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1243, N'Noami', N'Iorgo', N'Uff', N'Kinahan', 236, 236, 236)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1244, N'Derek', N'Karia', N'Klishin', N'Wanell', 237, 237, 237)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1245, N'Ulberto', N'Rowena', N'Meletti', N'Calow', 238, 238, 238)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1246, N'Jewel', N'Guenevere', N'Sprowle', N'Powney', 239, 239, 239)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1247, N'Barbaraanne', N'Kanya', N'Jurkowski', N'Worms', 240, 240, 240)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1248, N'Whitney', N'Frannie', N'Wimlet', N'Izatt', 241, 241, 241)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1249, N'Krispin', N'Dov', N'Larkins', N'Tomkiss', 242, 242, 242)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1250, N'Teddie', N'Melly', N'Tawton', N'Westbrook', 243, 243, 243)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1251, N'Terrye', N'Dorelia', N'Dollin', N'McGougan', 244, 244, 244)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1252, N'Lyn', N'Cristian', N'Tattersall', N'Cockran', 245, 245, 245)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1253, N'Dora', N'Rorie', N'Walworche', N'Boagey', 246, 246, 246)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1254, N'Tonye', N'Jena', N'Gummow', N'Vedmore', 247, 247, 247)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1255, N'Carmon', N'Sydelle', N'McKleod', N'Gulleford', 248, 248, 248)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1256, N'Andres', N'Freddie', N'Kunrad', N'Sydney', 249, 249, 249)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1257, N'Marguerite', N'Reginauld', N'Orht', N'Sanham', 250, 250, 250)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1258, N'Temple', N'Vickie', N'Laba', N'Skilling', 251, 251, 251)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1259, N'Leonelle', N'Lincoln', N'Marden', N'Le Provest', 252, 252, 252)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1260, N'Donnamarie', N'Rochelle', N'Reddick', N'Gaishson', 253, 253, 253)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1261, N'Burtie', N'Salem', N'Follos', N'McTavish', 254, 254, 254)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1262, N'Halley', N'Harwell', N'Gilvary', N'Ghelardi', 255, 255, 255)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1263, N'Gilburt', N'Hillel', N'Fonso', N'Leopold', 256, 256, 256)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1264, N'Skipton', N'Rosy', N'Demcak', N'Solomonides', 257, 257, 257)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1265, N'Papageno', N'Mona', N'Mattys', N'Heigho', 258, 258, 258)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1266, N'Lelia', N'Feodor', N'Inkin', N'Breed', 259, 259, 259)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1267, N'Kirstyn', N'Audy', N'Messer', N'Kinrade', 260, 260, 260)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1268, N'Merola', N'Lise', N'Challis', N'Mansford', 261, 261, 261)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1269, N'Nappy', N'Alyssa', N'Laffin', N'D''Emanuele', 262, 262, 262)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1270, N'Guthrie', N'Lebbie', N'Todari', N'O''Bradden', 263, 263, 263)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1271, N'Nial', N'Jasen', N'Robbie', N'Obell', 264, 264, 264)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1272, N'Ange', N'Marlon', N'Brookton', N'Kleinpeltz', 265, 265, 265)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1273, N'Philippa', N'Wynnie', N'Bohl', N'Rye', 266, 266, 266)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1274, N'Tess', N'Pembroke', N'Maris', N'Saffin', 267, 267, 267)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1275, N'Ulrich', N'Hilton', N'Jeduch', N'MacEvilly', 268, 268, 268)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1276, N'Lynde', N'Harley', N'Whiteway', N'Dinnis', 269, 269, 269)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1277, N'Kessia', N'Sheila-kathryn', N'Flintuff', N'McCarrell', 270, 270, 270)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1278, N'Caren', N'Gertruda', N'Van den Broek', N'Pyett', 271, 271, 271)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1279, N'Dolli', N'Elfie', N'Mobbs', N'Randals', 272, 272, 272)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1280, N'Dorris', N'Lowell', N'Diess', N'Spellar', 273, 273, 273)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1281, N'Andy', N'Hendrika', N'Leadbitter', N'Shorland', 274, 274, 274)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1282, N'Henriette', N'Raul', N'Goodspeed', N'Covill', 275, 275, 275)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1283, N'Carlotta', N'Tasha', N'MacMurray', N'Parsons', 276, 276, 276)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1284, N'Kendrick', N'Estel', N'Charlewood', N'Rown', 277, 277, 277)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1285, N'Velvet', N'Cherye', N'Tomaszek', N'Guiett', 278, 278, 278)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1286, N'Marni', N'Letti', N'Petett', N'Pennycord', 279, 279, 279)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1287, N'Nickie', N'Judon', N'Grieswood', N'Lipscomb', 280, 280, 280)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1288, N'Clayson', N'Alvinia', N'Rosas', N'Metson', 281, 281, 281)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1289, N'Angelica', N'Eddy', N'Ary', N'Aird', 282, 282, 282)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1290, N'Morey', N'Jarret', N'Saffran', N'Gartenfeld', 283, 283, 283)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1291, N'Denys', N'Melina', N'Maxwell', N'Hildrew', 284, 284, 284)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1292, N'Kari', N'Jeniffer', N'Gerssam', N'Aickin', 285, 285, 285)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1293, N'Sigismondo', N'Kellen', N'Templman', N'Purkiss', 286, 286, 286)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1294, N'Vivie', N'Davidde', N'Themann', N'Merigon', 287, 287, 287)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1295, N'Cherlyn', N'Jerrilyn', N'Ferreri', N'Macoun', 288, 288, 288)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1296, N'Dillon', N'Tammie', N'Flores', N'Laurence', 289, 289, 289)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1297, N'Andrea', N'Tore', N'MacGibbon', N'Cawkwell', 290, 290, 290)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1298, N'Ferguson', N'Cassandra', N'Grandison', N'Aiton', 291, 291, 291)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1299, N'Dewain', N'Rurik', N'Measey', N'Forde', 292, 292, 292)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1300, N'Selene', N'Hernando', N'Zoane', N'Lillecrap', 293, 293, 293)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1301, N'Denis', N'Billi', N'Andrei', N'Orth', 294, 294, 294)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1302, N'Frannie', N'Clio', N'Koppe', N'Chasney', 295, 295, 295)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1303, N'Myra', N'Lurette', N'Erik', N'Curnnokk', 296, 296, 296)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1304, N'Kipp', N'Lorin', N'Brewitt', N'Fenney', 297, 297, 297)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1305, N'Cindie', N'Neal', N'Guys', N'Isaak', 298, 298, 298)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1306, N'Rosmunda', N'Pennie', N'Sheer', N'Emanson', 299, 299, 299)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1307, N'Minerva', N'Theodoric', N'Duffrie', N'Roskelley', 300, 300, 300)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1308, N'Vittorio', N'Amberly', N'Sadler', N'Lancetter', 301, 301, 301)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1309, N'Laurens', N'Lib', N'Grigoli', N'Westman', 302, 302, 302)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1310, N'Marjie', N'Marja', N'Cass', N'Spellecy', 303, 303, 303)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1311, N'Ronald', N'Dur', N'Swatheridge', N'Stollery', 304, 304, 304)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1312, N'Burl', N'Bar', N'Drayn', N'Vouls', 305, 305, 305)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1313, N'Agnes', N'Lorettalorna', N'Ferens', N'Chatters', 306, 306, 306)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1314, N'Gilbert', N'Ertha', N'Gert', N'Hentze', 307, 307, 307)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1315, N'Adolf', N'Augusto', N'Garlicke', N'Setford', 308, 308, 308)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1316, N'Carlynne', N'Edie', N'Jewer', N'Spinige', 309, 309, 309)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1317, N'Jeramey', N'Tommy', N'Deakan', N'Haggus', 310, 310, 310)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1318, N'Annabelle', N'Rakel', N'Ellit', N'Robjant', 311, 311, 311)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1319, N'Lucie', N'Marsh', N'Issacoff', N'Moorhead', 312, 312, 312)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1320, N'Maud', N'Darin', N'Lewens', N'Yousef', 313, 313, 313)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1321, N'Marielle', N'Martina', N'Vicent', N'Daggett', 314, 314, 314)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1322, N'Yulma', N'Ashley', N'Matlock', N'Eskriet', 315, 315, 315)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1323, N'Cchaddie', N'Der', N'Truluck', N'Percy', 316, 316, 316)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1324, N'Carri', N'Ryon', N'Trassler', N'Itzkovwich', 317, 317, 317)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1325, N'Merci', N'Devland', N'Mozzini', N'Manueli', 318, 318, 318)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1326, N'Mavra', N'Anson', N'Van der Krui', N'Burg', 319, 319, 319)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1327, N'Conway', N'Belita', N'Matley', N'Whyman', 320, 320, 320)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1328, N'Sibilla', N'Kora', N'Cartmale', N'Klimp', 321, 321, 321)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1329, N'Ralph', N'Clevie', N'Obey', N'Breston', 322, 322, 322)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1330, N'Madelon', N'Wat', N'Forri', N'Matthai', 323, 323, 323)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1331, N'Nonna', N'Nanny', N'Rojahn', N'Bernardos', 324, 324, 324)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1332, N'Stefano', N'Trixi', N'Grushin', N'Topp', 325, 325, 325)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1333, N'Bil', N'Johnath', N'Bierton', N'Warwick', 326, 326, 326)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1334, N'Alvin', N'Kelsey', N'Ead', N'Slogrove', 327, 327, 327)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1335, N'Theresina', N'Amabelle', N'Duffit', N'Hewkin', 328, 328, 328)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1336, N'Reube', N'Lela', N'Sandell', N'Patchett', 329, 329, 329)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1337, N'Berget', N'Rania', N'Foystone', N'Vassall', 330, 330, 330)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1338, N'Jermaine', N'Nanine', N'Nardrup', N'Booty', 331, 331, 331)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1339, N'Reed', N'Lucien', N'Emanueli', N'Rollett', 332, 332, 332)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1340, N'Abbe', N'Joshia', N'Sevitt', N'MacRory', 333, 333, 333)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1341, N'Alexandra', N'Sheila', N'De Bischop', N'O''Neal', 334, 334, 334)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1342, N'Lionello', N'Flossie', N'Lismore', N'Richmond', 335, 335, 335)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1343, N'Karalynn', N'Becki', N'Ceresa', N'Ricci', 336, 336, 336)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1344, N'Norene', N'Ive', N'Dales', N'Blodgett', 337, 337, 337)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1345, N'Willem', N'Hakeem', N'Roads', N'Cotgrave', 338, 338, 338)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1346, N'Renato', N'Clovis', N'Misk', N'Conybear', 339, 339, 339)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1347, N'Carlen', N'Shelly', N'Lyfield', N'Husby', 340, 340, 340)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1348, N'Doretta', N'Claiborn', N'Liversage', N'Leads', 341, 341, 341)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1349, N'Constantia', N'Amalita', N'Brittain', N'Stubs', 342, 342, 342)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1350, N'Gabi', N'Marilee', N'Gleed', N'Filde', 343, 343, 343)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1351, N'Sinclare', N'Kelley', N'Carmichael', N'Dalwood', 344, 344, 344)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1352, N'Cheslie', N'Nels', N'Halling', N'Goward', 345, 345, 345)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1353, N'Sheba', N'Marna', N'Glandfield', N'Capaldo', 346, 346, 346)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1354, N'Jacques', N'Hollis', N'Eyes', N'Holhouse', 347, 347, 347)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1355, N'Alvan', N'Kylen', N'Hewlings', N'Woolard', 348, 348, 348)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1356, N'Nathanial', N'Hatti', N'Hawkey', N'Adlem', 349, 349, 349)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1357, N'Winnie', N'Jacquette', N'Musselwhite', N'Sendley', 350, 350, 350)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1358, N'Charlton', N'Rhona', N'Hodges', N'Fingleton', 351, 351, 351)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1359, N'Hildagard', N'Dollie', N'Keats', N'O''Crevy', 352, 352, 352)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1360, N'Josephine', N'Ellen', N'Rubertis', N'Hake', 353, 353, 353)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1361, N'Nevile', N'Libby', N'Huyche', N'Thridgould', 354, 354, 354)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1362, N'Bendite', N'Arni', N'Berntssen', N'Gladdolph', 355, 355, 355)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1363, N'Yancy', N'Clevie', N'Rankin', N'Vanns', 356, 356, 356)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1364, N'Andi', N'Barris', N'McCreery', N'Guterson', 357, 357, 357)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1365, N'Dalli', N'Gregoor', N'Klimmek', N'Askie', 358, 358, 358)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1366, N'Ely', N'Erie', N'Bricham', N'Wiggin', 359, 359, 359)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1367, N'Hazel', N'Hazel', N'Boardman', N'Probate', 360, 360, 360)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1368, N'Pooh', N'Kaela', N'Toke', N'Shawyers', 361, 361, 361)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1369, N'Gene', N'Gary', N'Belcham', N'Willcot', 362, 362, 362)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1370, N'Eliza', N'Helenka', N'Sandon', N'Dashwood', 363, 363, 363)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1371, N'Wylie', N'Gideon', N'Dilrew', N'Winspur', 364, 364, 364)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1372, N'Nara', N'Doralin', N'Vasyatkin', N'Erratt', 365, 365, 365)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1373, N'Isa', N'Lezlie', N'Ruler', N'Stebbin', 366, 366, 366)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1374, N'Cullen', N'Bevan', N'Fieldstone', N'Cramb', 367, 367, 367)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1375, N'Isa', N'Sorcha', N'Nodes', N'Birchall', 368, 368, 368)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1376, N'Mechelle', N'Ariadne', N'Krebs', N'Spolton', 369, 369, 369)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1377, N'Imogene', N'Bernette', N'Gadesby', N'Wherton', 370, 370, 370)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1378, N'Ashlin', N'Arlena', N'Davenhall', N'Bruckent', 371, 371, 371)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1379, N'Iver', N'Nathalia', N'Rampling', N'Deal', 372, 372, 372)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1380, N'Carolan', N'Shantee', N'Piatti', N'Bubbins', 373, 373, 373)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1381, N'Remington', N'Brendon', N'Lukash', N'Booler', 374, 374, 374)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1382, N'Veronique', N'Julieta', N'Averall', N'Addey', 375, 375, 375)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1383, N'Francois', N'Georgeanne', N'Egle', N'Van Niekerk', 376, 376, 376)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1384, N'Dierdre', N'Charyl', N'Prop', N'Bigglestone', 377, 377, 377)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1385, N'Morlee', N'Emily', N'Borgne', N'Connerry', 378, 378, 378)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1386, N'Cesya', N'Jaquenette', N'Dulany', N'Pipkin', 379, 379, 379)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1387, N'Grata', N'Michelle', N'Romi', N'Dowdeswell', 380, 380, 380)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1388, N'Uri', N'Harvey', N'Woolvin', N'Beddoes', 381, 381, 381)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1389, N'Vanna', N'Hayley', N'Fossitt', N'Renish', 382, 382, 382)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1390, N'Kattie', N'Lanae', N'Stockney', N'Tingly', 383, 383, 383)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1391, N'Britt', N'Daphene', N'Balle', N'Brazier', 384, 384, 384)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1392, N'Agosto', N'Dominica', N'Woodington', N'Hitzschke', 385, 385, 385)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1393, N'Dre', N'Matty', N'Losty', N'Armour', 386, 386, 386)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1394, N'Dennie', N'Natala', N'Trolley', N'Wareham', 387, 387, 387)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1395, N'Sean', N'Angeli', N'Judron', N'Nettleship', 388, 388, 388)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1396, N'Eunice', N'Brander', N'Dowell', N'Croal', 389, 389, 389)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1397, N'Hasheem', N'Meade', N'Geare', N'Gail', 390, 390, 390)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1398, N'Kendall', N'Yasmin', N'Mayell', N'Balmann', 391, 391, 391)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1399, N'Ceil', N'Shauna', N'Flegg', N'Partkya', 392, 392, 392)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1400, N'Flem', N'Talia', N'Mowatt', N'Recher', 393, 393, 393)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1401, N'Standford', N'Arman', N'Croley', N'Dwyer', 394, 394, 394)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1402, N'Nola', N'Sandy', N'Eccleshare', N'Wordsworth', 395, 395, 395)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1403, N'Ilyse', N'Jayne', N'Rusling', N'German', 396, 396, 396)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1404, N'Dael', N'Clarey', N'Greenig', N'McNeil', 397, 397, 397)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1405, N'Dulcea', N'Helen', N'Brayshaw', N'Manifield', 398, 398, 398)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1406, N'Padraig', N'Kikelia', N'Whyard', N'Count', 399, 399, 399)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1407, N'Gregorio', N'Lea', N'Delacroux', N'Stitle', 400, 400, 400)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1408, N'Othello', N'Bobbee', N'Boise', N'Kibbel', 401, 401, 401)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1409, N'Emelia', N'Duncan', N'Sapsed', N'Compfort', 402, 402, 402)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1410, N'Rennie', N'Kendra', N'Sertin', N'Croucher', 403, 403, 403)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1411, N'Eleanor', N'Boone', N'Garoghan', N'Vedenichev', 404, 404, 404)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1412, N'Evvy', N'Moira', N'Clint', N'McCabe', 405, 405, 405)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1413, N'Aharon', N'Howey', N'Downie', N'Pinare', 406, 406, 406)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1414, N'Phillis', N'Mildred', N'Ricks', N'Blodget', 407, 407, 407)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1415, N'Aeriela', N'Pollyanna', N'Oxenford', N'Cud', 408, 408, 408)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1416, N'Kirk', N'Jemima', N'Wilkie', N'Catherall', 409, 409, 409)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1417, N'Gabriellia', N'Lyndsie', N'Stivens', N'Edison', 410, 410, 410)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1418, N'Christye', N'Maynord', N'Piatkow', N'Titherington', 411, 411, 411)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1419, N'Trenton', N'Lorrayne', N'Chatelot', N'Basten', 412, 412, 412)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1420, N'Aindrea', N'Luisa', N'Richings', N'Benettini', 413, 413, 413)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1421, N'Tony', N'Linn', N'Takkos', N'Teasdale', 414, 414, 414)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1422, N'Tades', N'Mavra', N'Smithies', N'Iacovides', 415, 415, 415)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1423, N'Henrik', N'Ricki', N'Gatheral', N'Hanster', 416, 416, 416)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1424, N'Thaxter', N'Franciskus', N'Walsom', N'Radmore', 417, 417, 417)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1425, N'Jerry', N'Elliott', N'Murfett', N'Donner', 418, 418, 418)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1426, N'Miriam', N'Jimmy', N'Franceschi', N'Newarte', 419, 419, 419)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1427, N'Madlin', N'Silvain', N'Coughan', N'Pyburn', 420, 420, 420)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1428, N'Gerrilee', N'Rozanne', N'Fanthome', N'Bradbeer', 421, 421, 421)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1429, N'Dante', N'Dylan', N'Geffen', N'Kaming', 422, 422, 422)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1430, N'Geordie', N'Kippie', N'Ludlow', N'Redmond', 423, 423, 423)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1431, N'Rosa', N'Zollie', N'Guerin', N'O''Keevan', 424, 424, 424)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1432, N'Sauveur', N'Andee', N'Drakeley', N'Burrage', 425, 425, 425)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1433, N'Adria', N'Kimbra', N'Brunelli', N'Skedgell', 426, 426, 426)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1434, N'Guthry', N'Land', N'Aurelius', N'Romain', 427, 427, 427)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1435, N'Ynes', N'Zandra', N'Woolner', N'Evanson', 428, 428, 428)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1436, N'Salli', N'Meghann', N'Purkins', N'Peagrim', 429, 429, 429)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1437, N'Odille', N'Marina', N'Tucknott', N'Butchart', 430, 430, 430)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1438, N'Jule', N'Del', N'Shotboulte', N'Ivic', 431, 431, 431)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1439, N'Harlie', N'Joela', N'Ixer', N'Machon', 432, 432, 432)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1440, N'Rorie', N'Brandy', N'Baird', N'Dentith', 433, 433, 433)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1441, N'Olympia', N'Robinson', N'Kersting', N'Seamans', 434, 434, 434)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1442, N'Sherry', N'Angeli', N'Wyman', N'Eckersley', 435, 435, 435)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1443, N'Vanni', N'Gabriela', N'Sycamore', N'Keble', 436, 436, 436)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1444, N'Jane', N'Timothy', N'Marriot', N'MacCawley', 437, 437, 437)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1445, N'Sally', N'Ricca', N'Ferras', N'Creelman', 438, 438, 438)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1446, N'Bordy', N'Ingmar', N'Grandham', N'Ianno', 439, 439, 439)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1447, N'Jarrod', N'Banky', N'Hedge', N'Rands', 440, 440, 440)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1448, N'Tabina', N'Pammi', N'Bonar', N'Kryszka', 441, 441, 441)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1449, N'Audi', N'Gussie', N'Flintoff', N'Attril', 442, 442, 442)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1450, N'Fred', N'Tabbie', N'Seville', N'Stanlike', 443, 443, 443)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1451, N'Isac', N'Reece', N'Blenkinsop', N'Ackrill', 444, 444, 444)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1452, N'Birch', N'Jaimie', N'Seleway', N'Ros', 445, 445, 445)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1453, N'Innis', N'Guthry', N'Benninger', N'Repper', 446, 446, 446)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1454, N'Suzy', N'Berty', N'Plumstead', N'Gush', 447, 447, 447)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1455, N'Harwell', N'Geri', N'Brazur', N'Pendered', 448, 448, 448)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1456, N'Verine', N'Thacher', N'Youd', N'Sheran', 449, 449, 449)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1457, N'Mireielle', N'Danica', N'Handling', N'Overil', 450, 450, 450)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1458, N'Fernandina', N'Powell', N'Wapple', N'Sandal', 451, 451, 451)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1459, N'Dallis', N'Gregoor', N'Huebner', N'Headrick', 452, 452, 452)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1460, N'Darill', N'Phaedra', N'Stobbe', N'Colquite', 453, 453, 453)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1461, N'Yank', N'Connie', N'Kleinzweig', N'Benford', 454, 454, 454)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1462, N'Rebecka', N'Monti', N'Howse', N'Fullun', 455, 455, 455)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1463, N'Rheta', N'Jennilee', N'Ferrieres', N'Cheake', 456, 456, 456)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1464, N'Alanah', N'Saba', N'Filchagin', N'Lansberry', 457, 457, 457)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1465, N'Conchita', N'Geneva', N'Baston', N'Looker', 458, 458, 458)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1466, N'Stephenie', N'Ilsa', N'Ferandez', N'Hinrich', 459, 459, 459)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1467, N'Ernesta', N'Gunter', N'Stanhope', N'Joicey', 460, 460, 460)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1468, N'Kiley', N'Ettie', N'Breacher', N'Pretley', 461, 461, 461)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1469, N'Ariadne', N'Anthia', N'Ovendon', N'Kerans', 462, 462, 462)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1470, N'Spenser', N'Tootsie', N'Keech', N'Freeland', 463, 463, 463)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1471, N'Cornelia', N'Igor', N'Doubleday', N'Giraudo', 464, 464, 464)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1472, N'Glendon', N'Ebba', N'Pratley', N'Rowcliffe', 465, 465, 465)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1473, N'Hyatt', N'Gustave', N'Dessent', N'Pitkeathley', 466, 466, 466)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1474, N'Merwin', N'Quinta', N'Willas', N'Bizzey', 467, 467, 467)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1475, N'Aeriel', N'Baxie', N'Hamley', N'Cheevers', 468, 468, 468)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1476, N'Miguel', N'Trude', N'Lange', N'Fattori', 469, 469, 469)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1477, N'Tallie', N'Bill', N'Foxon', N'Drogan', 470, 470, 470)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1478, N'Morgan', N'Cordelia', N'Crose', N'Silcocks', 471, 471, 471)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1479, N'Haley', N'Syman', N'Still', N'Harrold', 472, 472, 472)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1480, N'Elnore', N'Kendell', N'Demange', N'Prydie', 473, 473, 473)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1481, N'Taddeusz', N'Cinnamon', N'Sibly', N'Redd', 474, 474, 474)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1482, N'Alford', N'Blair', N'Hencke', N'Dahlgren', 475, 475, 475)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1483, N'Jacklyn', N'Romonda', N'Shotboulte', N'Doddridge', 476, 476, 476)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1484, N'Barr', N'Gayle', N'Lines', N'Tuplin', 477, 477, 477)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1485, N'Ganny', N'Leigh', N'Dan', N'Lickess', 478, 478, 478)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1486, N'Carroll', N'Connie', N'Isacke', N'Griston', 479, 479, 479)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1487, N'Amelina', N'Richmond', N'Boothman', N'Foreman', 480, 480, 480)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1488, N'Siegfried', N'Odie', N'Hagston', N'Artois', 481, 481, 481)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1489, N'Chiquia', N'Betteanne', N'Rotherforth', N'Semarke', 482, 482, 482)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1490, N'Jenn', N'Jodee', N'Mattersley', N'Comini', 483, 483, 483)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1491, N'Renaldo', N'Opaline', N'Snodden', N'Prozescky', 484, 484, 484)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1492, N'Kipp', N'Ariadne', N'Brimblecomb', N'Perin', 485, 485, 485)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1493, N'Nixie', N'Bili', N'Davidovitch', N'Bake', 486, 486, 486)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1494, N'Filippa', N'Correna', N'McGirr', N'Errol', 487, 487, 487)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1495, N'Nata', N'Jan', N'MacRanald', N'Deniseau', 488, 488, 488)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1496, N'Carlota', N'Cammy', N'Folbigg', N'Lingner', 489, 489, 489)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1497, N'Ashleigh', N'Ulises', N'Willcock', N'Gilbanks', 490, 490, 490)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1498, N'Cort', N'Clint', N'Caney', N'Guwer', 491, 491, 491)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1499, N'Parry', N'Wallache', N'Cranston', N'Sawkin', 492, 492, 492)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1500, N'Ronnie', N'Gwenni', N'Domb', N'Lapslie', 493, 493, 493)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1501, N'Collen', N'Haily', N'Bradlaugh', N'Sheeran', 494, 494, 494)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1502, N'Willi', N'Magnum', N'Kyne', N'Blaske', 495, 495, 495)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1503, N'Prince', N'Samantha', N'Pocklington', N'Kernermann', 496, 496, 496)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1504, N'Alvin', N'Gonzalo', N'Twinbourne', N'Paz', 497, 497, 497)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1505, N'Claudia', N'Cam', N'Cartmell', N'Gathercoal', 498, 498, 498)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1506, N'Donnie', N'Bianca', N'Tupper', N'Scouse', 499, 499, 499)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1507, N'Kristal', N'Washington', N'Scranney', N'Sange', 500, 500, 500)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1508, N'Isidora', N'Nicki', N'Dowglass', N'Summerell', 501, 501, 501)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1509, N'Mischa', N'Jobi', N'Mattheissen', N'Haydney', 502, 502, 502)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1510, N'Wake', N'Dee dee', N'Morson', N'Haslen', 503, 503, 503)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1511, N'Shaine', N'Meier', N'Larrosa', N'Aitken', 504, 504, 504)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1512, N'Gaby', N'Ali', N'Brunone', N'Bonn', 505, 505, 505)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1513, N'Sergio', N'Arv', N'McLane', N'Echalier', 506, 506, 506)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1514, N'Cathryn', N'Augusta', N'MacLaughlin', N'Treadgold', 507, 507, 507)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1515, N'Michael', N'Brock', N'Blemings', N'Bernardeau', 508, 508, 508)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1516, N'Albert', N'Virgilio', N'Belliard', N'Shory', 509, 509, 509)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1517, N'Amii', N'Hildegaard', N'Ballintime', N'Foskett', 510, 510, 510)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1518, N'Stormy', N'Hi', N'Corona', N'Barbier', 511, 511, 511)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1519, N'Madeleine', N'Abelard', N'Guyonneau', N'Nicholes', 512, 512, 512)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1520, N'Chery', N'Stormy', N'Tomala', N'Kemsley', 513, 513, 513)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1521, N'Antone', N'Lilas', N'Perrott', N'Torrent', 514, 514, 514)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1522, N'Millicent', N'Ulrika', N'Cambling', N'Humbey', 515, 515, 515)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1523, N'Judah', N'Angus', N'McArthur', N'Brierly', 516, 516, 516)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1524, N'Dallas', N'Valery', N'Malenfant', N'Beadell', 517, 517, 517)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1525, N'Eugenie', N'Laryssa', N'Ryall', N'Crolla', 518, 518, 518)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1526, N'Sarge', N'Mellisent', N'Prangle', N'Helbeck', 519, 519, 519)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1527, N'Ethan', N'Moselle', N'Peeters', N'Ollivierre', 520, 520, 520)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1528, N'Aguistin', N'Harrietta', N'Spatig', N'Pennington', 521, 521, 521)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1529, N'Taryn', N'Samson', N'Endean', N'Garrish', 522, 522, 522)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1530, N'Audra', N'Merl', N'Gookey', N'Bourgeois', 523, 523, 523)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1531, N'Gussi', N'Dara', N'Izkoveski', N'Shearsby', 524, 524, 524)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1532, N'Porter', N'Currie', N'Hartburn', N'Casone', 525, 525, 525)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1533, N'Marga', N'Sonnnie', N'Aicheson', N'Tour', 526, 526, 526)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1534, N'Celestia', N'Glynn', N'Bastiman', N'Revening', 527, 527, 527)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1535, N'Janela', N'Hadlee', N'Rutledge', N'Sanday', 528, 528, 528)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1536, N'Luci', N'Helaina', N'Saggers', N'Ebdin', 529, 529, 529)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1537, N'Ruthie', N'Gill', N'Onele', N'Cosens', 530, 530, 530)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1538, N'Laurie', N'Stefanie', N'Flawn', N'O''Henehan', 531, 531, 531)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1539, N'Gaby', N'Harriette', N'Denham', N'Butfield', 532, 532, 532)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1540, N'Birch', N'Lesli', N'Badman', N'Cordova', 533, 533, 533)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1541, N'Judi', N'Steffi', N'Delacote', N'Svanetti', 534, 534, 534)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1542, N'Zeb', N'Galvin', N'Starbucke', N'Fiddiman', 535, 535, 535)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1543, N'Brander', N'Ruprecht', N'Derkes', N'Howell', 536, 536, 536)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1544, N'Misha', N'Morton', N'Stryde', N'Hirsthouse', 537, 537, 537)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1545, N'Peterus', N'Basil', N'Wilprecht', N'Markovic', 538, 538, 538)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1546, N'Christal', N'Martin', N'Lenz', N'Wimms', 539, 539, 539)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1547, N'Edith', N'Lorenza', N'Beekmann', N'Hierro', 540, 540, 540)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1548, N'Eduardo', N'Kaycee', N'Cloonan', N'Jacobowicz', 541, 541, 541)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1549, N'Adorne', N'Emory', N'Keller', N'Rowlson', 542, 542, 542)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1550, N'Gradeigh', N'Niki', N'Giacovetti', N'Raggles', 543, 543, 543)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1551, N'Phillip', N'Jenica', N'Gelder', N'Matzkaitis', 544, 544, 544)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1552, N'Wylie', N'Leupold', N'Tinmouth', N'Pontain', 545, 545, 545)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1553, N'Robenia', N'Elyse', N'Mattersey', N'Pentony', 546, 546, 546)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1554, N'Rodger', N'Gan', N'Dodd', N'Betchley', 547, 547, 547)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1555, N'Massimiliano', N'Cyrill', N'Millott', N'Eastham', 548, 548, 548)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1556, N'Denny', N'Malena', N'Yashanov', N'Gingles', 549, 549, 549)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1557, N'Roselle', N'Anestassia', N'Bonafacino', N'Woodburne', 550, 550, 550)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1558, N'Nanette', N'Meredithe', N'Tester', N'Bosson', 551, 551, 551)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1559, N'Xylina', N'Ellissa', N'McGinly', N'Mart', 552, 552, 552)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1560, N'Sylvester', N'Adah', N'Skeermor', N'Jobe', 553, 553, 553)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1561, N'Saba', N'Kaspar', N'Lannen', N'Illem', 554, 554, 554)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1562, N'Kyrstin', N'Toma', N'Van Der Hoog', N'Treker', 555, 555, 555)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1563, N'Meghann', N'Denyse', N'Foystone', N'Goudie', 556, 556, 556)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1564, N'Willa', N'Charity', N'Felgate', N'Percifer', 557, 557, 557)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1565, N'Tani', N'Carlye', N'Leverington', N'Claussen', 558, 558, 558)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1566, N'Torey', N'Adolph', N'Drakes', N'Brisson', 559, 559, 559)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1567, N'Yulma', N'Dolph', N'Dougal', N'McKirton', 560, 560, 560)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1568, N'Sissie', N'Jamal', N'Cazereau', N'Isworth', 561, 561, 561)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1569, N'Justen', N'Killy', N'Lambell', N'Brookton', 562, 562, 562)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1570, N'Patten', N'Loleta', N'Larter', N'Caherny', 563, 563, 563)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1571, N'Fabio', N'Kristen', N'Debrett', N'Reside', 564, 564, 564)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1572, N'Chip', N'Jermayne', N'Hinkens', N'Ruddom', 565, 565, 565)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1573, N'Honey', N'Dinny', N'Knightsbridge', N'Artin', 566, 566, 566)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1574, N'Reinaldos', N'Jarid', N'Kenrat', N'Kunzel', 567, 567, 567)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1575, N'Esme', N'Susette', N'Slaght', N'Strauss', 568, 568, 568)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1576, N'Gasper', N'Lurleen', N'Harrigan', N'Clendening', 569, 569, 569)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1577, N'Pembroke', N'Brigit', N'Kalisch', N'Harrow', 570, 570, 570)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1578, N'Domini', N'Hallsy', N'Gabriely', N'Risen', 571, 571, 571)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1579, N'Millard', N'Ignatius', N'Crackett', N'Carbin', 572, 572, 572)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1580, N'Zack', N'Maurits', N'Warham', N'Pedroli', 573, 573, 573)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1581, N'Vincents', N'Minetta', N'Gudgen', N'Fulloway', 574, 574, 574)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1582, N'Vernice', N'Jerrold', N'Claworth', N'Gerbi', 575, 575, 575)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1583, N'Rory', N'Leslie', N'Marczyk', N'Torrese', 576, 576, 576)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1584, N'Jaimie', N'Collen', N'Corkitt', N'Canas', 577, 577, 577)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1585, N'Kessia', N'Abrahan', N'Roiz', N'Napier', 578, 578, 578)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1586, N'Shaw', N'Polly', N'Klampk', N'Addlestone', 579, 579, 579)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1587, N'Kellsie', N'Patty', N'Laughtisse', N'McMorland', 580, 580, 580)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1588, N'Isa', N'Shane', N'Cartan', N'Mudd', 581, 581, 581)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1589, N'Fiona', N'Jany', N'Eloy', N'Capehorn', 582, 582, 582)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1590, N'Aldridge', N'Niel', N'Willoughby', N'Luna', 583, 583, 583)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1591, N'Lyndy', N'Emanuel', N'Gilpillan', N'Swindell', 584, 584, 584)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1592, N'Spenser', N'Allyce', N'Mallender', N'Pavlenko', 585, 585, 585)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1593, N'Lorrie', N'Bettye', N'Snowling', N'Moral', 586, 586, 586)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1594, N'Lorenzo', N'Gigi', N'Bertrand', N'Fritchley', 587, 587, 587)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1595, N'Torey', N'Britte', N'Cluitt', N'Carabet', 588, 588, 588)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1596, N'Aubry', N'Cordie', N'Galliver', N'Finnan', 589, 589, 589)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1597, N'Jens', N'Donella', N'Sleith', N'Cornborough', 590, 590, 590)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1598, N'Wynny', N'Kelbee', N'Pauluzzi', N'Mott', 591, 591, 591)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1599, N'Emilia', N'Ange', N'Gogin', N'Echallie', 592, 592, 592)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1600, N'Ricoriki', N'Zerk', N'Rodwell', N'Sturman', 593, 593, 593)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1601, N'Norma', N'Meridel', N'Longmuir', N'Cuff', 594, 594, 594)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1602, N'Darrick', N'Connie', N'Baunton', N'Shillinglaw', 595, 595, 595)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1603, N'Teodoor', N'Brook', N'Aspital', N'Feeney', 596, 596, 596)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1604, N'Shani', N'Giacinta', N'Matschuk', N'Esherwood', 597, 597, 597)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1605, N'Fey', N'Itch', N'Dumingos', N'McMarquis', 598, 598, 598)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1606, N'Rasia', N'Charline', N'Branscomb', N'Skate', 599, 599, 599)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1607, N'Alessandra', N'Melicent', N'Rutledge', N'Sandyford', 600, 600, 600)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1608, N'Marty', N'Katusha', N'Marquot', N'Kubelka', 601, 601, 601)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1609, N'Garrik', N'Essy', N'Ralston', N'Ruddin', 602, 602, 602)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1610, N'Verene', N'Sherry', N'Yukhnov', N'Southorn', 603, 603, 603)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1611, N'Alano', N'Egbert', N'Bilyard', N'Bolus', 604, 604, 604)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1612, N'Kassi', N'Nathanil', N'Amar', N'Kobus', 605, 605, 605)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1613, N'Addi', N'Claudia', N'Lefever', N'Farryan', 606, 606, 606)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1614, N'Andrus', N'Christi', N'Lacasa', N'MacNucator', 607, 607, 607)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1615, N'Ingemar', N'Charissa', N'Portman', N'Davinet', 608, 608, 608)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1616, N'Yolande', N'Ransom', N'Tomasoni', N'Bustard', 609, 609, 609)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1617, N'Elberta', N'Leontyne', N'Scherme', N'Pescud', 610, 610, 610)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1618, N'Tracey', N'Mabel', N'Tipens', N'Legonidec', 611, 611, 611)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1619, N'Rafferty', N'Mariellen', N'Cupitt', N'Gentry', 612, 612, 612)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1620, N'Stefanie', N'Devan', N'Keane', N'Caldero', 613, 613, 613)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1621, N'Boone', N'Rockwell', N'Lane', N'Kehri', 614, 614, 614)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1622, N'Aile', N'Evangelina', N'Fogden', N'Terrell', 615, 615, 615)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1623, N'Dolley', N'Arluene', N'Grist', N'Sooley', 616, 616, 616)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1624, N'Cornie', N'Eveleen', N'Ben', N'Mallya', 617, 617, 617)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1625, N'Veradis', N'Gwennie', N'Kender', N'Blues', 618, 618, 618)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1626, N'Inna', N'Bertina', N'Luckey', N'Damarell', 619, 619, 619)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1627, N'Rosmunda', N'Matthieu', N'Keunemann', N'Wynett', 620, 620, 620)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1628, N'Adrian', N'Yardley', N'Rowan', N'Rushsorth', 621, 621, 621)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1629, N'Delaney', N'Yank', N'Cheeseman', N'Parnall', 622, 622, 622)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1630, N'Anatollo', N'Gwyneth', N'Corkett', N'Bramer', 623, 623, 623)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1631, N'Torrin', N'Edith', N'Sunderland', N'Daniellot', 624, 624, 624)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1632, N'Heida', N'Mac', N'Sarver', N'Gozard', 625, 625, 625)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1633, N'Orren', N'Lyndsay', N'Stallard', N'Shallo', 626, 626, 626)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1634, N'Derrick', N'Mata', N'Linkleter', N'Ungerecht', 627, 627, 627)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1635, N'Simon', N'Gaston', N'Rothon', N'Lilley', 628, 628, 628)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1636, N'Ryan', N'Virginia', N'Cotter', N'Shoebottom', 629, 629, 629)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1637, N'Alano', N'Jobie', N'Theze', N'McAmish', 630, 630, 630)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1638, N'Alfonse', N'Vin', N'Tilt', N'Stickland', 631, 631, 631)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1639, N'Mathew', N'Natal', N'Riggulsford', N'Attril', 632, 632, 632)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1640, N'Emmey', N'Bari', N'Koschke', N'Bernhardi', 633, 633, 633)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1641, N'Ramonda', N'Dorene', N'Streatfield', N'Chesman', 634, 634, 634)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1642, N'Felix', N'Abby', N'Dybell', N'Wyllcock', 635, 635, 635)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1643, N'Yehudi', N'Alair', N'Cluer', N'O''Sirin', 636, 636, 636)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1644, N'Mathilde', N'Bay', N'Escalero', N'Ruggen', 637, 637, 637)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1645, N'Morry', N'Nev', N'Onn', N'Boules', 638, 638, 638)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1646, N'Manon', N'Shurlocke', N'Fothergill', N'Bineham', 639, 639, 639)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1647, N'Isiahi', N'Flossy', N'Cherry Holme', N'Alves', 640, 640, 640)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1648, N'Bel', N'Karrah', N'Sollett', N'Gravey', 641, 641, 641)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1649, N'Gardy', N'Cilka', N'Shemming', N'Kiebes', 642, 642, 642)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1650, N'Clementine', N'Hunfredo', N'Rizzillo', N'Brotheridge', 643, 643, 643)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1651, N'Shalne', N'Howey', N'Corder', N'Forshaw', 644, 644, 644)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1652, N'Ambrosio', N'Anstice', N'Phippin', N'Blackborne', 645, 645, 645)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1653, N'Riley', N'Shana', N'Creavin', N'Verrill', 646, 646, 646)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1654, N'Jeremy', N'Kennedy', N'Lanchbery', N'Brikner', 647, 647, 647)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1655, N'Carl', N'Sunny', N'McDirmid', N'Heephy', 648, 648, 648)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1656, N'Audi', N'Elora', N'Zimmermeister', N'Weins', 649, 649, 649)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1657, N'Tammi', N'Silvester', N'Staner', N'Saggs', 650, 650, 650)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1658, N'Aldrich', N'Ingaberg', N'Johansen', N'Duckerin', 651, 651, 651)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1659, N'Jessa', N'Bear', N'Robun', N'Blow', 652, 652, 652)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1660, N'Truda', N'Ruprecht', N'Noto', N'Trittam', 653, 653, 653)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1661, N'Heidi', N'Ailsun', N'Meert', N'Theriot', 654, 654, 654)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1662, N'Rubin', N'Jackqueline', N'Priditt', N'McLemon', 655, 655, 655)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1663, N'Worth', N'Toma', N'Broggetti', N'Bielfeld', 656, 656, 656)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1664, N'Nickola', N'Malcolm', N'Dunbar', N'Lafaye', 657, 657, 657)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1665, N'Sayer', N'Gustaf', N'Wooffitt', N'Deakes', 658, 658, 658)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1666, N'Malina', N'Cassie', N'Menat', N'Thorald', 659, 659, 659)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1667, N'Breanne', N'Nikola', N'Scrine', N'Brew', 660, 660, 660)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1668, N'Rafferty', N'Clayborn', N'Matyushonok', N'Sneath', 661, 661, 661)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1669, N'Sawyere', N'Cherrita', N'Guerri', N'Blinckhorne', 662, 662, 662)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1670, N'Onfroi', N'Nydia', N'Towler', N'Fried', 663, 663, 663)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1671, N'Cariotta', N'Regina', N'Skittrell', N'Spalton', 664, 664, 664)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1672, N'Neil', N'Gaylor', N'Neasam', N'Giscken', 665, 665, 665)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1673, N'Analise', N'Fidelio', N'Kilbride', N'Trowell', 666, 666, 666)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1674, N'Donny', N'Rosette', N'Beevers', N'Tallman', 667, 667, 667)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1675, N'Barr', N'Raddy', N'Wyne', N'Woodall', 668, 668, 668)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1676, N'Lemuel', N'Nomi', N'O''Mohun', N'Wicklin', 669, 669, 669)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1677, N'Godfry', N'Dru', N'Eynon', N'Matuskiewicz', 670, 670, 670)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1678, N'Lauretta', N'Coletta', N'Davydochkin', N'Cattemull', 671, 671, 671)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1679, N'Coleen', N'Halsy', N'Perez', N'Wimpress', 672, 672, 672)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1680, N'Anthe', N'Una', N'Glazebrook', N'Mauchlen', 673, 673, 673)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1681, N'Ollie', N'Stanly', N'Troop', N'Brownlea', 674, 674, 674)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1682, N'Rossie', N'Abran', N'Flintiff', N'Carnegie', 675, 675, 675)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1683, N'Rudolfo', N'Reeba', N'Brissenden', N'Erni', 676, 676, 676)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1684, N'Bonny', N'Corney', N'Voce', N'O''Shevlin', 677, 677, 677)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1685, N'Briana', N'Jacqueline', N'Kerner', N'Brabbs', 678, 678, 678)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1686, N'Aldus', N'Robbie', N'MacSwayde', N'Hoggins', 679, 679, 679)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1687, N'Katherine', N'Alvis', N'Nassy', N'Taw', 680, 680, 680)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1688, N'Bealle', N'Suzette', N'Zavattiero', N'Bolesma', 681, 681, 681)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1689, N'Nancey', N'Feodora', N'Illston', N'Billham', 682, 682, 682)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1690, N'Nicoli', N'Korney', N'Bradberry', N'Egel', 683, 683, 683)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1691, N'Teressa', N'Haroun', N'Nicol', N'Lovelace', 684, 684, 684)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1692, N'Stanfield', N'Kameko', N'Steers', N'Caccavale', 685, 685, 685)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1693, N'Jule', N'Jermayne', N'Stickford', N'Wasling', 686, 686, 686)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1694, N'Dominic', N'Berna', N'Mesias', N'Whitwell', 687, 687, 687)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1695, N'Vito', N'Iosep', N'Kaesmakers', N'Dorgan', 688, 688, 688)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1696, N'Doti', N'Wilt', N'Reely', N'Plaice', 689, 689, 689)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1697, N'Sumner', N'Olenolin', N'Pedroni', N'Standring', 690, 690, 690)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1698, N'Chelsie', N'Amandi', N'Hammonds', N'Tuddall', 691, 691, 691)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1699, N'Angie', N'Talya', N'Tute', N'Loiterton', 692, 692, 692)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1700, N'Alejoa', N'Con', N'Boxhill', N'Sinclaire', 693, 693, 693)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1701, N'Esmeralda', N'Dorella', N'Killen', N'Gowan', 694, 694, 694)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1702, N'Nellie', N'Rowena', N'Spary', N'de Courcy', 695, 695, 695)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1703, N'Clarinda', N'Sharona', N'Hardaway', N'Reily', 696, 696, 696)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1704, N'Maddy', N'Hansiain', N'McGonnell', N'Goford', 697, 697, 697)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1705, N'Karie', N'Carolin', N'O''Keevan', N'Sizzey', 698, 698, 698)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1706, N'Crissie', N'Lovell', N'Grimsdith', N'Deveral', 699, 699, 699)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1707, N'Baryram', N'Salomi', N'McCalum', N'Geerdts', 700, 700, 700)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1708, N'Hussein', N'Nobe', N'Skeeles', N'Bigg', 701, 701, 701)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1709, N'Dione', N'Rhetta', N'Selvey', N'Kleint', 702, 702, 702)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1710, N'Hilly', N'Ulberto', N'Ribey', N'Lacrouts', 703, 703, 703)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1711, N'Philipa', N'Leslie', N'Hardware', N'Schurcke', 704, 704, 704)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1712, N'Maridel', N'Dulcia', N'Wordsley', N'Capoun', 705, 705, 705)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1713, N'Sheri', N'Pierson', N'Fearon', N'Litterick', 706, 706, 706)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1714, N'Steffi', N'Maryann', N'Dannel', N'Matei', 707, 707, 707)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1715, N'Malory', N'Anneliese', N'Pinnock', N'Infante', 708, 708, 708)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1716, N'Arlyn', N'Jerry', N'Hagston', N'Dahlborg', 709, 709, 709)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1717, N'Gordie', N'Kippie', N'Hamsson', N'Edeler', 710, 710, 710)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1718, N'Paco', N'Aurlie', N'Dowderswell', N'MacKartan', 711, 711, 711)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1719, N'Seline', N'Mirabelle', N'Crippen', N'Waith', 712, 712, 712)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1720, N'Daisi', N'Emilee', N'Millberg', N'Rarity', 713, 713, 713)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1721, N'Brigitta', N'Norene', N'Rotchell', N'Torrent', 714, 714, 714)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1722, N'Berri', N'Sonya', N'McGrae', N'Birdsall', 715, 715, 715)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1723, N'Curran', N'Cheri', N'Mitchenson', N'Dwyr', 716, 716, 716)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1724, N'Meier', N'Blake', N'Cowwell', N'Oliva', 717, 717, 717)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1725, N'Robin', N'Adrienne', N'McLennan', N'Sandever', 718, 718, 718)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1726, N'Kurt', N'Dicky', N'Mosson', N'Pykerman', 719, 719, 719)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1727, N'Clarissa', N'Harriot', N'Gurley', N'Edsell', 720, 720, 720)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1728, N'Pegeen', N'Karissa', N'Tritten', N'Hinstock', 721, 721, 721)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1729, N'Karine', N'Claude', N'Bardnam', N'Oldall', 722, 722, 722)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1730, N'Sim', N'Collen', N'Walwood', N'O''Fearguise', 723, 723, 723)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1731, N'Breena', N'Cherianne', N'Hamsher', N'Dunnico', 724, 724, 724)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1732, N'Lina', N'Lauritz', N'Curry', N'Dibley', 725, 725, 725)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1733, N'Hobard', N'Breanne', N'Kopta', N'Erley', 726, 726, 726)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1734, N'Grayce', N'Ali', N'Anstee', N'Cattlemull', 727, 727, 727)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1735, N'Alfie', N'Nike', N'Rowen', N'Tunkin', 728, 728, 728)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1736, N'Valerie', N'Park', N'Baise', N'Morden', 729, 729, 729)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1737, N'Clarance', N'Shea', N'Cullabine', N'MacAlaster', 730, 730, 730)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1738, N'Sabina', N'Colline', N'Ashelford', N'Sanpher', 731, 731, 731)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1739, N'Gavra', N'Cherish', N'Rainforth', N'Demonge', 732, 732, 732)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1740, N'Delly', N'Kesley', N'Sheed', N'Brattell', 733, 733, 733)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1741, N'Allissa', N'Jenelle', N'Dadd', N'Bowlands', 734, 734, 734)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1742, N'Angil', N'Chrysler', N'Kleimt', N'Comi', 735, 735, 735)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1743, N'Noni', N'Inigo', N'Macura', N'Keen', 736, 736, 736)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1744, N'Jorry', N'Irv', N'Estevez', N'Kleinholz', 737, 737, 737)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1745, N'Giselbert', N'Maude', N'Littler', N'Rendle', 738, 738, 738)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1746, N'Yvette', N'Jamie', N'Kier', N'Suggett', 739, 739, 739)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1747, N'Wayland', N'Gwen', N'Barabich', N'Scraney', 740, 740, 740)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1748, N'Flemming', N'Libbey', N'Durie', N'Belfit', 741, 741, 741)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1749, N'Laney', N'Millicent', N'Van Halen', N'Barby', 742, 742, 742)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1750, N'Alina', N'Padraig', N'Barhims', N'McGonnell', 743, 743, 743)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1751, N'Salomi', N'Derrick', N'Maving', N'Jenne', 744, 744, 744)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1752, N'Yankee', N'Vaclav', N'Aberkirder', N'Hulkes', 745, 745, 745)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1753, N'Katey', N'Syd', N'Ellerker', N'Ashment', 746, 746, 746)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1754, N'Stormy', N'Arthur', N'McDarmid', N'McGahy', 747, 747, 747)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1755, N'Val', N'Delcina', N'Farrants', N'Chafer', 748, 748, 748)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1756, N'Hansiain', N'Hewie', N'Grangier', N'Winsom', 749, 749, 749)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1757, N'Rose', N'Hugibert', N'Pereira', N'Struan', 750, 750, 750)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1758, N'Obie', N'Alvera', N'Whieldon', N'Gundrey', 751, 751, 751)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1759, N'Jamaal', N'Zebadiah', N'Bloor', N'Vakhrushin', 752, 752, 752)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1760, N'Cathi', N'Tarrah', N'Maddin', N'Tunney', 753, 753, 753)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1761, N'Myrwyn', N'Georgina', N'Battie', N'Foxhall', 754, 754, 754)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1762, N'Curry', N'Zolly', N'Grevatt', N'Depka', 755, 755, 755)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1763, N'Alice', N'Dominik', N'Macquire', N'Jewson', 756, 756, 756)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1764, N'Anabelle', N'Ernestine', N'Deadman', N'Tebbutt', 757, 757, 757)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1765, N'Paddy', N'Angele', N'Bucktharp', N'Tyler', 758, 758, 758)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1766, N'Jeanne', N'Margarethe', N'Ovise', N'Dolbey', 759, 759, 759)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1767, N'Craig', N'Alika', N'Jakeman', N'Warkup', 760, 760, 760)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1768, N'Jareb', N'Issi', N'Pitway', N'Duffie', 761, 761, 761)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1769, N'Faina', N'Peta', N'Reeve', N'Spinola', 762, 762, 762)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1770, N'Nanette', N'Donnell', N'Silk', N'Haddacks', 763, 763, 763)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1771, N'Wallas', N'Lucia', N'Crumpton', N'Gathwaite', 764, 764, 764)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1772, N'Judye', N'Archibold', N'Syce', N'Fairs', 765, 765, 765)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1773, N'Selig', N'Rodolphe', N'Jensen', N'Hambidge', 766, 766, 766)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1774, N'Carlynne', N'Quincy', N'Begin', N'Kibel', 767, 767, 767)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1775, N'Rogers', N'Ranna', N'Peddar', N'Trundle', 768, 768, 768)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1776, N'Irma', N'Noni', N'Harbison', N'Spurr', 769, 769, 769)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1777, N'Brendon', N'Clayton', N'Tynan', N'Dwane', 770, 770, 770)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1778, N'Sascha', N'Mattias', N'Tibbs', N'Barnish', 771, 771, 771)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1779, N'Coleman', N'Anselma', N'Spraberry', N'Mainds', 772, 772, 772)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1780, N'Marika', N'Sydel', N'Syfax', N'Hanscome', 773, 773, 773)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1781, N'Andreas', N'Grazia', N'Lillie', N'Ninnotti', 774, 774, 774)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1782, N'Ronny', N'Tremayne', N'Mouan', N'Timcke', 775, 775, 775)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1783, N'Elianore', N'Martguerita', N'Knoller', N'Tal', 776, 776, 776)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1784, N'Neill', N'Cristionna', N'Croll', N'Coutthart', 777, 777, 777)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1785, N'Shannen', N'Anne', N'Buckenhill', N'Watkins', 778, 778, 778)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1786, N'Matthew', N'Benoit', N'Eary', N'Hixley', 779, 779, 779)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1787, N'Cora', N'Krystal', N'Normanvill', N'Reggio', 780, 780, 780)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1788, N'Wilbert', N'Rafferty', N'Anderbrugge', N'Gianullo', 781, 781, 781)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1789, N'Thor', N'Perkin', N'Mooring', N'Skally', 782, 782, 782)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1790, N'Taffy', N'Antonius', N'Wallach', N'Maccrae', 783, 783, 783)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1791, N'Xaviera', N'Lynnet', N'Vears', N'Cargill', 784, 784, 784)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1792, N'Clerc', N'Trixi', N'Sleigh', N'Castle', 785, 785, 785)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1793, N'Heath', N'Gertruda', N'Cordeux', N'Giamitti', 786, 786, 786)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1794, N'Inglebert', N'Bentlee', N'Jellicorse', N'Leindecker', 787, 787, 787)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1795, N'Aurea', N'Angus', N'Faudrie', N'Hyman', 788, 788, 788)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1796, N'Cami', N'Ileane', N'Ducarne', N'MacKnight', 789, 789, 789)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1797, N'Kakalina', N'Kristian', N'Kubiczek', N'Ridgwell', 790, 790, 790)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1798, N'Hyatt', N'Peadar', N'Shimwall', N'Collomosse', 791, 791, 791)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1799, N'Leanora', N'Tanner', N'Meadows', N'Krienke', 792, 792, 792)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1800, N'Kellyann', N'Carrol', N'McCurdy', N'Rubinowicz', 793, 793, 793)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1801, N'Corena', N'Obediah', N'Ineson', N'Sier', 794, 794, 794)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1802, N'Yolanda', N'Theodoric', N'Chetham', N'Beggin', 795, 795, 795)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1803, N'Tucker', N'Poul', N'Ivory', N'Grayshan', 796, 796, 796)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1804, N'Seline', N'Josephina', N'Iskowicz', N'Ribbon', 797, 797, 797)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1805, N'Myrta', N'Constantia', N'Neumann', N'Pietasch', 798, 798, 798)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1806, N'Alicea', N'Danya', N'Heppenspall', N'Spawforth', 799, 799, 799)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1807, N'Opal', N'Rudolph', N'Micklem', N'Hampe', 800, 800, 800)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1808, N'Jesse', N'Harley', N'Spratt', N'Algy', 801, 801, 801)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1809, N'Dunc', N'Chelsy', N'McKintosh', N'Phillcox', 802, 802, 802)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1810, N'Clyde', N'Ad', N'Merriott', N'Glyn', 803, 803, 803)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1811, N'Arluene', N'Tiphany', N'Chaffe', N'Willets', 804, 804, 804)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1812, N'Waylen', N'Emmaline', N'Gunthorp', N'Dubble', 805, 805, 805)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1813, N'Kristy', N'Nessi', N'Winny', N'Wellan', 806, 806, 806)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1814, N'Rorie', N'Tarah', N'Bruck', N'Basham', 807, 807, 807)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1815, N'Megan', N'Celle', N'Syalvester', N'Allatt', 808, 808, 808)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1816, N'Christina', N'Hernando', N'Andren', N'Schuelcke', 809, 809, 809)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1817, N'Waylin', N'Reggis', N'Baldrick', N'Shopcott', 810, 810, 810)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1818, N'Tiebout', N'Rebe', N'Cleveley', N'Ferronel', 811, 811, 811)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1819, N'Dew', N'Angel', N'Haymes', N'Kingsnorth', 812, 812, 812)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1820, N'Zane', N'Leah', N'Comusso', N'Jermin', 813, 813, 813)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1821, N'Thomas', N'Dodie', N'Grisbrook', N'Meadows', 814, 814, 814)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1822, N'Barbabra', N'Doy', N'Stear', N'Ayris', 815, 815, 815)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1823, N'Geoffry', N'Emalee', N'Kleewein', N'Balharry', 816, 816, 816)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1824, N'Harwell', N'Antin', N'Seel', N'Jendrich', 817, 817, 817)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1825, N'Jenna', N'Nikaniki', N'Maceur', N'Marner', 818, 818, 818)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1826, N'Lotti', N'Eimile', N'Lillistone', N'Obee', 819, 819, 819)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1827, N'Freemon', N'Darnall', N'Goodwins', N'Berndtsson', 820, 820, 820)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1828, N'Malina', N'Amalia', N'Winters', N'Wooding', 821, 821, 821)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1829, N'Catrina', N'Laurella', N'Drews', N'Agerskow', 822, 822, 822)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1830, N'Heindrick', N'Yolanthe', N'Meric', N'Cuesta', 823, 823, 823)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1831, N'Guido', N'Ardith', N'Braunston', N'Bangs', 824, 824, 824)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1832, N'Shoshana', N'Jacki', N'Cano', N'Presman', 825, 825, 825)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1833, N'Gayler', N'Flor', N'Vagges', N'Mewett', 826, 826, 826)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1834, N'Matti', N'Julee', N'Champkin', N'Standish', 827, 827, 827)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1835, N'Artus', N'Gates', N'Bernaldez', N'Scohier', 828, 828, 828)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1836, N'Elisabeth', N'Flossie', N'Epps', N'Agius', 829, 829, 829)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1837, N'Dalli', N'Isador', N'Haselwood', N'Madgin', 830, 830, 830)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1838, N'Sawyer', N'Shaylynn', N'Joynt', N'Cottie', 831, 831, 831)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1839, N'Ware', N'Doe', N'Wheatland', N'Henner', 832, 832, 832)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1840, N'Courtney', N'Andy', N'Amyes', N'Gindghill', 833, 833, 833)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1841, N'Gale', N'Happy', N'Dominy', N'Braikenridge', 834, 834, 834)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1842, N'Rheta', N'Graham', N'Strothers', N'Galiero', 835, 835, 835)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1843, N'Codi', N'Aleta', N'Stacey', N'Instrell', 836, 836, 836)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1844, N'Edi', N'Brit', N'Sutehall', N'Dole', 837, 837, 837)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1845, N'Wrennie', N'Darrick', N'Conelly', N'Duligal', 838, 838, 838)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1846, N'Buck', N'Shaylyn', N'Cockhill', N'Toon', 839, 839, 839)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1847, N'Calida', N'Trudey', N'Curless', N'Scripture', 840, 840, 840)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1848, N'Nicol', N'Bronny', N'Scawn', N'Hanvey', 841, 841, 841)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1849, N'James', N'Tobye', N'Vowles', N'Chatres', 842, 842, 842)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1850, N'Bev', N'Ariana', N'Heinel', N'Barukh', 843, 843, 843)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1851, N'Tatum', N'Neddie', N'Jura', N'Noni', 844, 844, 844)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1852, N'Tiphany', N'Lem', N'McCarthy', N'Parram', 845, 845, 845)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1853, N'Cornie', N'Lea', N'Phare', N'Cork', 846, 846, 846)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1854, N'Enriqueta', N'Aldrich', N'Deverose', N'Orwin', 847, 847, 847)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1855, N'Arden', N'Ines', N'Freegard', N'Birtwistle', 848, 848, 848)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1856, N'Alf', N'Mace', N'Djurdjevic', N'Thorp', 849, 849, 849)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1857, N'Alberik', N'Dwayne', N'Dunkerley', N'Nolot', 850, 850, 850)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1858, N'Dannie', N'Costa', N'Measor', N'Purchon', 851, 851, 851)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1859, N'Nevins', N'Corliss', N'Kenewel', N'Rene', 852, 852, 852)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1860, N'Rosalynd', N'Lamont', N'Ivatts', N'Loidl', 853, 853, 853)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1861, N'Flss', N'Michaeline', N'Crowdson', N'Ingarfield', 854, 854, 854)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1862, N'Adrianne', N'Cecil', N'Bernaldez', N'Lowry', 855, 855, 855)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1863, N'Nicolas', N'Phaedra', N'Clemensen', N'McMorran', 856, 856, 856)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1864, N'Junina', N'Reinaldo', N'Brislawn', N'Chesterfield', 857, 857, 857)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1865, N'Tarah', N'Esme', N'Chessel', N'Chritchlow', 858, 858, 858)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1866, N'Sybille', N'Orelle', N'Feeney', N'Tunnicliff', 859, 859, 859)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1867, N'Leupold', N'Boycie', N'Basezzi', N'Mebius', 860, 860, 860)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1868, N'Conny', N'Sabine', N'Marchment', N'Oughton', 861, 861, 861)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1869, N'Carlin', N'Oralia', N'Pilbeam', N'Caddy', 862, 862, 862)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1870, N'Christy', N'Deloris', N'Shailer', N'Phebee', 863, 863, 863)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1871, N'Luz', N'Isabelita', N'Gimblet', N'Preist', 864, 864, 864)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1872, N'Sigismundo', N'Harri', N'Francescuccio', N'Rawlinson', 865, 865, 865)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1873, N'Elfrieda', N'Hamid', N'Falkinder', N'Jeffes', 866, 866, 866)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1874, N'Moria', N'Norbie', N'Gawthorpe', N'Pannaman', 867, 867, 867)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1875, N'Marni', N'Jorrie', N'Creasey', N'Hammerton', 868, 868, 868)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1876, N'Celestyn', N'Zonda', N'Royans', N'Trood', 869, 869, 869)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1877, N'Bel', N'Sheila', N'Sandiland', N'Whiteside', 870, 870, 870)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1878, N'Win', N'Vidovic', N'Cawsy', N'Hufton', 871, 871, 871)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1879, N'Peirce', N'Romonda', N'Giacomozzo', N'Waddams', 872, 872, 872)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1880, N'Rodger', N'Madel', N'Quaif', N'Fitzackerley', 873, 873, 873)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1881, N'Krissy', N'Adore', N'Lemonby', N'Miskin', 874, 874, 874)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1882, N'Ester', N'Katharina', N'Iannello', N'Sked', 875, 875, 875)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1883, N'Natka', N'Germain', N'Iacovo', N'Zottoli', 876, 876, 876)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1884, N'Berte', N'Ricky', N'Adamo', N'Dyment', 877, 877, 877)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1885, N'Shirleen', N'Tasia', N'Malzard', N'Garnar', 878, 878, 878)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1886, N'Dermot', N'Gavan', N'Filoniere', N'Milington', 879, 879, 879)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1887, N'Kristien', N'Ingelbert', N'Carillo', N'Blackler', 880, 880, 880)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1888, N'Angelico', N'Andromache', N'Pinchback', N'Wheelhouse', 881, 881, 881)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1889, N'Kipp', N'Currey', N'McTear', N'Devonald', 882, 882, 882)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1890, N'Blondelle', N'Cordey', N'Gong', N'Haley', 883, 883, 883)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1891, N'Mariska', N'Judon', N'Balasini', N'Whether', 884, 884, 884)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1892, N'Jennilee', N'Nathalie', N'Verdy', N'Tabour', 885, 885, 885)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1893, N'Arvy', N'Marja', N'Cominotti', N'Evitts', 886, 886, 886)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1894, N'Rebeca', N'Humbert', N'Berfoot', N'Van Der Walt', 887, 887, 887)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1895, N'Putnem', N'Mommy', N'Loveless', N'MacElroy', 888, 888, 888)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1896, N'Ruy', N'Flynn', N'Kyttor', N'Bruntjen', 889, 889, 889)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1897, N'Shoshana', N'Damara', N'Creese', N'Gawkroge', 890, 890, 890)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1898, N'Morry', N'Felita', N'Jeens', N'Downes', 891, 891, 891)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1899, N'Isaiah', N'Hedda', N'Laverty', N'Daen', 892, 892, 892)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1900, N'Eugenius', N'Jazmin', N'Clappison', N'Markova', 893, 893, 893)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1901, N'Nikolai', N'Genevieve', N'Emptage', N'Waumsley', 894, 894, 894)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1902, N'Yvon', N'Carlotta', N'Garn', N'Bellocht', 895, 895, 895)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1903, N'Collen', N'Russ', N'Bonavia', N'Lofthouse', 896, 896, 896)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1904, N'Kaila', N'Clementine', N'Carn', N'Dudin', 897, 897, 897)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1905, N'Porter', N'Willy', N'Nickell', N'Bennellick', 898, 898, 898)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1906, N'Cletis', N'Dimitri', N'Vaneschi', N'Bolam', 899, 899, 899)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1907, N'Cassandre', N'Leslie', N'Grooby', N'Rainsden', 900, 900, 900)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1908, N'Hanna', N'Leelah', N'Ainsbury', N'Cotgrove', 901, 901, 901)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1909, N'Christye', N'Buddy', N'Jilkes', N'Ingliss', 902, 902, 902)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1910, N'Heinrick', N'Gordon', N'Spilsbury', N'Baignard', 903, 903, 903)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1911, N'Olivero', N'Sarene', N'Leonarde', N'Hamal', 904, 904, 904)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1912, N'Alley', N'Thedrick', N'Duquesnay', N'MacRedmond', 905, 905, 905)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1913, N'Ignaz', N'Isacco', N'Jayne', N'Piola', 906, 906, 906)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1914, N'Eudora', N'Mandi', N'Shrimplin', N'Triggs', 907, 907, 907)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1915, N'Gwennie', N'Cass', N'Fer', N'Harbar', 908, 908, 908)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1916, N'Jethro', N'Goldy', N'Gabbitus', N'Netherwood', 909, 909, 909)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1917, N'Renelle', N'Brewer', N'Alishoner', N'Gatward', 910, 910, 910)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1918, N'Elliot', N'Casey', N'Yair', N'Hovie', 911, 911, 911)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1919, N'Myca', N'Ambros', N'Slite', N'Mariault', 912, 912, 912)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1920, N'Alonzo', N'Elvira', N'Currey', N'Pitchers', 913, 913, 913)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1921, N'Phip', N'Marja', N'Mishaw', N'Yell', 914, 914, 914)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1922, N'Magdalena', N'Adena', N'Limpertz', N'Eick', 915, 915, 915)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1923, N'Camey', N'Judith', N'Aggiss', N'Pashan', 916, 916, 916)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1924, N'Barbey', N'Othilia', N'Orans', N'Millom', 917, 917, 917)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1925, N'Pauli', N'Darla', N'Ouldcott', N'Grisley', 918, 918, 918)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1926, N'Vernor', N'Laraine', N'Duinbleton', N'McAllen', 919, 919, 919)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1927, N'Belia', N'Viviyan', N'Drohan', N'Town', 920, 920, 920)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1928, N'Maurita', N'Sissy', N'Archbutt', N'De Cruz', 921, 921, 921)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1929, N'Gerrie', N'Rosa', N'Juett', N'Bougen', 922, 922, 922)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1930, N'Kellia', N'Brita', N'Dorro', N'Southey', 923, 923, 923)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1931, N'Rodolphe', N'Gaylene', N'Bramwich', N'Vickers', 924, 924, 924)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1932, N'Stormie', N'Maximilien', N'Sheahan', N'Braunlein', 925, 925, 925)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1933, N'Rancell', N'Lowrance', N'Yerrall', N'Salisbury', 926, 926, 926)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1934, N'Noel', N'Christin', N'Astill', N'Koene', 927, 927, 927)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1935, N'Karia', N'Leontyne', N'Flippini', N'Kieff', 928, 928, 928)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1936, N'Gerek', N'Devlin', N'Hamflett', N'Bruckstein', 929, 929, 929)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1937, N'Birgit', N'Lise', N'Wormald', N'Syvret', 930, 930, 930)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1938, N'Nicola', N'Elfreda', N'Connah', N'Currum', 931, 931, 931)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1939, N'Abigail', N'Adler', N'MacAskie', N'Sinkinson', 932, 932, 932)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1940, N'Nil', N'Ronni', N'Willerstone', N'Broughton', 933, 933, 933)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1941, N'Janot', N'Saundra', N'Getch', N'Leathes', 934, 934, 934)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1942, N'Clemente', N'Odelinda', N'Lamort', N'O''Kynsillaghe', 935, 935, 935)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1943, N'Jennette', N'Sherie', N'Nan Carrow', N'Carryer', 936, 936, 936)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1944, N'Guillermo', N'Pepito', N'Darlaston', N'Fancet', 937, 937, 937)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1945, N'Ninetta', N'Jocelyn', N'Yokley', N'Fountain', 938, 938, 938)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1946, N'Claudian', N'Norris', N'Plimmer', N'Pikesley', 939, 939, 939)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1947, N'Tonie', N'Whittaker', N'Wagner', N'Florio', 940, 940, 940)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1948, N'Vanda', N'Giff', N'Desmond', N'Clementucci', 941, 941, 941)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1949, N'Vittorio', N'Noach', N'Reuble', N'Klambt', 942, 942, 942)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1950, N'Erna', N'Burg', N'Epelett', N'Jerrold', 943, 943, 943)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1951, N'Cordelia', N'Patty', N'Cowpland', N'Posselwhite', 944, 944, 944)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1952, N'Chilton', N'Webster', N'Dall', N'Stratford', 945, 945, 945)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1953, N'Midge', N'Chastity', N'MacArdle', N'Perez', 946, 946, 946)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1954, N'Bunni', N'Corenda', N'Biasio', N'Blankau', 947, 947, 947)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1955, N'Husain', N'Rakel', N'Pickle', N'Dupoy', 948, 948, 948)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1956, N'Adriana', N'Baily', N'Scallon', N'Wimpress', 949, 949, 949)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1957, N'Wakefield', N'Geoffry', N'Legh', N'Callicott', 950, 950, 950)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1958, N'Blanca', N'Leanna', N'Casebourne', N'Slides', 951, 951, 951)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1959, N'Dian', N'Lisa', N'Fish', N'Sichardt', 952, 952, 952)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1960, N'Philip', N'Granny', N'Keys', N'Irlam', 953, 953, 953)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1961, N'Abner', N'Beckie', N'Coston', N'Pudge', 954, 954, 954)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1962, N'Beatriz', N'Justis', N'Calcott', N'Pidgeley', 955, 955, 955)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1963, N'Drucie', N'Aloysius', N'Giannazzi', N'Winborn', 956, 956, 956)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1964, N'Alexandrina', N'Bryanty', N'Serman', N'Eslemont', 957, 957, 957)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1965, N'Lynnea', N'Feodor', N'Larder', N'Lanfear', 958, 958, 958)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1966, N'Sawyere', N'Marrilee', N'Cabera', N'Kitteridge', 959, 959, 959)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1967, N'Tobye', N'Cesya', N'Vost', N'Lowth', 960, 960, 960)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1968, N'Rawley', N'Tana', N'Thake', N'MacCarter', 961, 961, 961)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1969, N'Hewe', N'Johnny', N'Cockney', N'Merrywether', 962, 962, 962)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1970, N'Esta', N'Emmeline', N'Kornousek', N'Harvatt', 963, 963, 963)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1971, N'Johnette', N'Ashia', N'Kernocke', N'Syres', 964, 964, 964)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1972, N'Barbey', N'Ash', N'Lossman', N'Burrus', 965, 965, 965)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1973, N'Jaquenette', N'Laurene', N'Bamell', N'Sheers', 966, 966, 966)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1974, N'Danella', N'Phil', N'Roset', N'Panyer', 967, 967, 967)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1975, N'Lowell', N'Guglielma', N'Havvock', N'Cupitt', 968, 968, 968)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1976, N'Heida', N'Diandra', N'Clappson', N'Hoggins', 969, 969, 969)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1977, N'April', N'D''arcy', N'Petters', N'Eberts', 970, 970, 970)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1978, N'Connor', N'Siffre', N'Stannislawski', N'Sherred', 971, 971, 971)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1979, N'Patty', N'Fifine', N'Mattiazzi', N'Chalcroft', 972, 972, 972)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1980, N'Kev', N'Eduard', N'Quarrie', N'Blow', 973, 973, 973)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1981, N'Brig', N'Wendeline', N'Shirtliff', N'Davidovic', 974, 974, 974)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1982, N'Carlotta', N'Cathryn', N'Kerkham', N'Garthside', 975, 975, 975)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1983, N'Robinette', N'Ottilie', N'Dalwood', N'Lembcke', 976, 976, 976)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1984, N'Gina', N'Humfrid', N'Leatherbarrow', N'Giggs', 977, 977, 977)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1985, N'Leroy', N'Isa', N'Skatcher', N'Broinlich', 978, 978, 978)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1986, N'Adriano', N'Marius', N'Tully', N'Mapis', 979, 979, 979)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1987, N'Merrel', N'Stacie', N'Hulburt', N'Coleford', 980, 980, 980)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1988, N'Innis', N'Merry', N'Climar', N'Claworth', 981, 981, 981)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1989, N'Christophorus', N'Emlyn', N'Grimsell', N'Biskupek', 982, 982, 982)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1990, N'Jillene', N'Price', N'Alloway', N'Fidell', 983, 983, 983)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1991, N'Delmar', N'Brenda', N'Rainey', N'Crystal', 984, 984, 984)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1992, N'Raimondo', N'Saloma', N'Palfrey', N'Speaks', 985, 985, 985)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1993, N'Georgie', N'Elisa', N'Sircombe', N'Winkle', 986, 986, 986)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1994, N'Katusha', N'Kerrie', N'Crandon', N'Airton', 987, 987, 987)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1995, N'Siegfried', N'Sacha', N'Sheer', N'Vose', 988, 988, 988)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1996, N'Clair', N'Rochelle', N'Lutwidge', N'Killcross', 989, 989, 989)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1997, N'Cecile', N'Quint', N'Seagood', N'Greatorex', 990, 990, 990)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1998, N'Nolie', N'Waylan', N'Linggood', N'Albers', 991, 991, 991)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (1999, N'Harvey', N'Bartolemo', N'Corradetti', N'Arondel', 992, 992, 992)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2000, N'Dredi', N'Roshelle', N'Snelgrove', N'Rumble', 993, 993, 993)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2001, N'Shena', N'Jacky', N'Jack', N'Dunsmore', 994, 994, 994)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2002, N'Lucilia', N'Diego', N'Wedge', N'Brunstan', 995, 995, 995)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2003, N'Amerigo', N'Mariana', N'O''Dunniom', N'Bedham', 996, 996, 996)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2004, N'Pacorro', N'Mirilla', N'Gregg', N'McFarland', 997, 997, 997)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2005, N'Kathe', N'Audry', N'Chrestien', N'Dobrowlski', 998, 998, 998)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2006, N'Lock', N'Donella', N'Wasielewicz', N'Mournian', 999, 999, 999)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2007, N'Pattie', N'Hilda', N'Pevreal', N'Szanto', 1000, 1000, 1000)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2008, N'Yehudi', N'Jenda', N'Hilbourne', N'Marchington', 1, 1, 1)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2009, N'Cos', N'Cullie', N'Carlan', N'Broe', 2, 2, 2)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2010, N'Chrissie', N'Bordy', N'Sawer', N'Megahey', 3, 3, 3)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2011, N'Prent', N'Lorant', N'Gozzett', N'Duplain', 4, 4, 4)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2012, N'Merrile', N'Roderich', N'Starkie', N'Hele', 5, 5, 5)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2013, N'Ebony', N'Chrysa', N'Nacci', N'Cumine', 6, 6, 6)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2014, N'Wenonah', N'Ulrika', N'Stephenson', N'Calley', 7, 7, 7)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2015, N'Katya', N'Deirdre', N'Arger', N'Gidney', 8, 8, 8)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2016, N'Ernestus', N'De', N'Jefford', N'Digginson', 9, 9, 9)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2017, N'Aline', N'Wash', N'Chippin', N'Guitte', 10, 10, 10)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2018, N'Rebecca', N'Carolan', N'Hugli', N'Dorgon', 11, 11, 11)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2019, N'Otis', N'Olympie', N'Zoane', N'Bensen', 12, 12, 12)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2020, N'Lynsey', N'Clarita', N'Olerenshaw', N'McNuff', 13, 13, 13)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2021, N'Trescha', N'Danella', N'Queen', N'Whoston', 14, 14, 14)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2022, N'Emilio', N'Damita', N'Fisher', N'Rechert', 15, 15, 15)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2023, N'Nye', N'Eleanore', N'McCadden', N'Saldler', 16, 16, 16)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2024, N'Glenine', N'Terrijo', N'Swales', N'Sweatman', 17, 17, 17)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2025, N'Selena', N'Bibbye', N'Bayston', N'Kiellor', 18, 18, 18)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2026, N'Gwenette', N'Kienan', N'Dominighi', N'Neighbour', 19, 19, 19)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2027, N'Dinnie', N'Waylon', N'Zamorrano', N'Cormode', 20, 20, 20)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2028, N'Faustine', N'Eugenie', N'Malt', N'Peyzer', 21, 21, 21)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2029, N'Eugenio', N'Grata', N'Woodroof', N'Goodwins', 22, 22, 22)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2030, N'Giorgi', N'Manuel', N'Rigts', N'Lacknor', 23, 23, 23)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2031, N'Eimile', N'Lucky', N'Wraighte', N'Claibourn', 24, 24, 24)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2032, N'Johnny', N'Celene', N'Lowdham', N'Egerton', 25, 25, 25)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2033, N'Concordia', N'Thayne', N'Becraft', N'Fagg', 26, 26, 26)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2034, N'Dewey', N'Kiley', N'Cohalan', N'Hemphrey', 27, 27, 27)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2035, N'Liam', N'Tremayne', N'Burtonshaw', N'Egell', 28, 28, 28)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2036, N'Van', N'Cal', N'Crockford', N'Hearley', 29, 29, 29)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2037, N'Louise', N'Nelle', N'Swindin', N'Butchers', 30, 30, 30)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2038, N'Arlie', N'Marlo', N'Pierucci', N'Hedaux', 31, 31, 31)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2039, N'Vaclav', N'Ive', N'Clemitt', N'Geall', 32, 32, 32)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2040, N'Opal', N'Lanae', N'Schubbert', N'Suddaby', 33, 33, 33)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2041, N'Lorettalorna', N'Cameron', N'Pic', N'Ray', 34, 34, 34)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2042, N'Toiboid', N'Andra', N'Pinckney', N'Dockray', 35, 35, 35)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2043, N'Kellina', N'Ramona', N'Forgie', N'Padrick', 36, 36, 36)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2044, N'Staci', N'Wright', N'Addeycott', N'Barthelemy', 37, 37, 37)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2045, N'Gussi', N'Benjie', N'Caghy', N'Bygreaves', 38, 38, 38)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2046, N'Aggie', N'Annamaria', N'Fairbourn', N'Tuppeny', 39, 39, 39)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2047, N'Reba', N'Norah', N'Trent', N'Yurkiewicz', 40, 40, 40)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2048, N'Clarinda', N'Terrel', N'De Lascy', N'Elphey', 41, 41, 41)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2049, N'Pavia', N'Mellisa', N'Gaber', N'McSweeney', 42, 42, 42)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2050, N'Patrizio', N'Artemis', N'Tidy', N'Sebborn', 43, 43, 43)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2051, N'Addy', N'Liv', N'Beatson', N'Gother', 44, 44, 44)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2052, N'Deny', N'Verile', N'Lively', N'Coke', 45, 45, 45)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2053, N'Quintana', N'Amaleta', N'Scarborough', N'Kuhnwald', 46, 46, 46)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2054, N'Antoni', N'Berke', N'Huckle', N'Bradly', 47, 47, 47)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2055, N'Christiano', N'Veronica', N'Rowe', N'Dobell', 48, 48, 48)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2056, N'Allix', N'Helenka', N'Giametti', N'Shercliff', 49, 49, 49)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2057, N'Kaia', N'Shelia', N'Ales', N'Keohane', 50, 50, 50)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2058, N'Teresina', N'Frasquito', N'Creus', N'McAlinion', 51, 51, 51)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2059, N'Maryanne', N'Raimondo', N'Crummay', N'Woolager', 52, 52, 52)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2060, N'Hayley', N'Perrine', N'Skilbeck', N'De Bruyne', 53, 53, 53)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2061, N'Tawsha', N'Vittorio', N'Lippiatt', N'Cowthard', 54, 54, 54)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2062, N'Melinde', N'Andris', N'Banaszczyk', N'Ianitti', 55, 55, 55)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2063, N'Bat', N'Jessee', N'Jeynes', N'O''Tierney', 56, 56, 56)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2064, N'Joella', N'Svend', N'Zink', N'Hansell', 57, 57, 57)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2065, N'Urbanus', N'Sinclare', N'Driffe', N'Bifield', 58, 58, 58)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2066, N'Quinton', N'Abey', N'Paulack', N'Scanterbury', 59, 59, 59)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2067, N'Jozef', N'Ricky', N'O'' Concannon', N'Lakeman', 60, 60, 60)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2068, N'Lanae', N'Ingunna', N'Saterweyte', N'Scamwell', 61, 61, 61)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2069, N'Eden', N'Karry', N'Sleford', N'Westover', 62, 62, 62)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2070, N'Michaela', N'Aggie', N'Batter', N'Gocke', 63, 63, 63)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2071, N'Fidole', N'Alice', N'Fremantle', N'Grenfell', 64, 64, 64)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2072, N'Wylie', N'Denver', N'Wilden', N'Carp', 65, 65, 65)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2073, N'Katha', N'Blaire', N'Alvar', N'Truran', 66, 66, 66)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2074, N'Lucille', N'Domingo', N'Blazejewski', N'Wetheril', 67, 67, 67)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2075, N'Shannon', N'Gerek', N'Corstorphine', N'Maddison', 68, 68, 68)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2076, N'Licha', N'Ingunna', N'Ayling', N'Mullett', 69, 69, 69)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2077, N'Cammie', N'Reinwald', N'Levy', N'Ayling', 70, 70, 70)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2078, N'Cass', N'Webster', N'Cubbin', N'Longcaster', 71, 71, 71)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2079, N'Dalila', N'Reuben', N'Otteridge', N'Evelyn', 72, 72, 72)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2080, N'Fletch', N'Shellie', N'Nealy', N'Abby', 73, 73, 73)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2081, N'Germaine', N'Tish', N'Shortan', N'Davidy', 74, 74, 74)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2082, N'Jonathon', N'Jefferson', N'Grzeszczyk', N'Parminter', 75, 75, 75)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2083, N'Glad', N'Lauralee', N'Casserley', N'Francombe', 76, 76, 76)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2084, N'Augustine', N'Lezlie', N'Harries', N'Trowel', 77, 77, 77)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2085, N'Gino', N'Ninnetta', N'Smidmoor', N'Grinaway', 78, 78, 78)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2086, N'Isiahi', N'Timmie', N'Avramovic', N'Maddaford', 79, 79, 79)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2087, N'Holmes', N'Reynard', N'Boddy', N'Hebburn', 80, 80, 80)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2088, N'Ulrikaumeko', N'Job', N'Ashfold', N'Boyland', 81, 81, 81)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2089, N'Morey', N'Ottilie', N'Newby', N'Wilsey', 82, 82, 82)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2090, N'Marchall', N'Charlot', N'Lesly', N'Downer', 83, 83, 83)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2091, N'Teressa', N'Kalinda', N'Runchman', N'Maxworthy', 84, 84, 84)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2092, N'Loralyn', N'Elwira', N'Sarginson', N'Basset', 85, 85, 85)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2093, N'Gelya', N'Aksel', N'Hedylstone', N'Fairnie', 86, 86, 86)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2094, N'Marcelle', N'Terri', N'Valentine', N'Simonyi', 87, 87, 87)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2095, N'Shalne', N'Katina', N'Sambedge', N'Cockarill', 88, 88, 88)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2096, N'Laetitia', N'Lewes', N'Mattiello', N'Spurden', 89, 89, 89)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2097, N'Avictor', N'Janek', N'Goldney', N'Culp', 90, 90, 90)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2098, N'Diana', N'Katrinka', N'O''Hogertie', N'Greathead', 91, 91, 91)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2099, N'Hubie', N'Mallissa', N'Frigot', N'Abrahmovici', 92, 92, 92)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2100, N'Ethelin', N'Silvia', N'Lembke', N'Ingon', 93, 93, 93)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2101, N'Brice', N'Nicolina', N'Toxell', N'Kimmings', 94, 94, 94)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2102, N'Tatum', N'Tersina', N'Lorenzetti', N'Klaiser', 95, 95, 95)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2103, N'Alikee', N'Winonah', N'Cuddihy', N'Brittles', 96, 96, 96)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2104, N'Anna-diana', N'Howey', N'Vankeev', N'Kuzma', 97, 97, 97)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2105, N'Matthaeus', N'Venita', N'Liepmann', N'Carverhill', 98, 98, 98)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2106, N'Mareah', N'Sarah', N'Chatwood', N'Stenner', 99, 99, 99)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2107, N'Chelsae', N'Grady', N'Basley', N'Castagnaro', 100, 100, 100)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2108, N'Kinny', N'Emanuel', N'Revie', N'Winters', 101, 101, 101)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2109, N'Henrieta', N'Geri', N'Rowter', N'Vail', 102, 102, 102)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2110, N'Zachariah', N'Tyler', N'Wittey', N'Vost', 103, 103, 103)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2111, N'Aurelie', N'Salvador', N'Puzey', N'Brigden', 104, 104, 104)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2112, N'Oralle', N'Edin', N'Jowle', N'Linstead', 105, 105, 105)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2113, N'Bethany', N'Kaile', N'Heynen', N'Rutherford', 106, 106, 106)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2114, N'Caterina', N'Leoline', N'Logsdail', N'Scading', 107, 107, 107)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2115, N'Rosalia', N'Shell', N'Twelvetree', N'Moakler', 108, 108, 108)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2116, N'Joan', N'Whitman', N'Torfin', N'Yglesia', 109, 109, 109)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2117, N'Lionello', N'Tallie', N'Hagley', N'Morffew', 110, 110, 110)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2118, N'Reinaldos', N'Joyce', N'Grocott', N'Paulazzi', 111, 111, 111)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2119, N'Pam', N'Susie', N'Kennifeck', N'Ely', 112, 112, 112)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2120, N'Jordan', N'Emlynn', N'Liptrod', N'Hovenden', 113, 113, 113)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2121, N'Faun', N'Maxwell', N'Curd', N'Maunsell', 114, 114, 114)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2122, N'Franni', N'Fabien', N'Feldon', N'Weedenburg', 115, 115, 115)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2123, N'Oriana', N'Hubert', N'Lambrook', N'Eagle', 116, 116, 116)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2124, N'Johannes', N'Federico', N'Kipling', N'Claybourn', 117, 117, 117)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2125, N'Axel', N'Melvin', N'Rivilis', N'Bernot', 118, 118, 118)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2126, N'Fern', N'Whitney', N'Dono', N'Finker', 119, 119, 119)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2127, N'Thayne', N'Dulcea', N'Raulston', N'Sprason', 120, 120, 120)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2128, N'Bobette', N'Donn', N'Wippermann', N'Larvin', 121, 121, 121)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2129, N'Joelly', N'Kathryn', N'Marklin', N'Coulston', 122, 122, 122)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2130, N'Garrard', N'Jammie', N'Witch', N'Deshorts', 123, 123, 123)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2131, N'Fredric', N'Falkner', N'Blaker', N'Tackle', 124, 124, 124)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2132, N'Royce', N'Nicoline', N'Filinkov', N'Petriello', 125, 125, 125)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2133, N'Emmanuel', N'Bobine', N'Matasov', N'Dicker', 126, 126, 126)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2134, N'Jephthah', N'Lindsay', N'Woolhouse', N'Vasentsov', 127, 127, 127)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2135, N'Tommy', N'Jeanelle', N'Curmi', N'MacBarron', 128, 128, 128)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2136, N'Demetri', N'Barthel', N'McVeighty', N'Ellicombe', 129, 129, 129)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2137, N'Cody', N'Ogdan', N'Blandamore', N'Farn', 130, 130, 130)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2138, N'Liane', N'Ginelle', N'Corey', N'Hawthorne', 131, 131, 131)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2139, N'Town', N'Shel', N'Riseborough', N'McElhinney', 132, 132, 132)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2140, N'Nike', N'Erminia', N'Seckom', N'Fuxman', 133, 133, 133)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2141, N'Cherlyn', N'Akim', N'Josephsen', N'Groll', 134, 134, 134)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2142, N'Patti', N'Lian', N'Holywell', N'Janes', 135, 135, 135)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2143, N'Freddy', N'Korie', N'Connerry', N'Krysztofowicz', 136, 136, 136)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2144, N'Kahaleel', N'Teddi', N'Dupree', N'Melville', 137, 137, 137)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2145, N'Dyanna', N'Noam', N'Hamlington', N'Westbrook', 138, 138, 138)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2146, N'Dario', N'Gilemette', N'Semon', N'McDougal', 139, 139, 139)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2147, N'Adan', N'Dara', N'Ponceford', N'Rubinovici', 140, 140, 140)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2148, N'Susie', N'Maureene', N'Babe', N'Viles', 141, 141, 141)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2149, N'Katheryn', N'Karim', N'Oloman', N'Feathers', 142, 142, 142)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2150, N'Torin', N'Karie', N'Wildsmith', N'Jiroutek', 143, 143, 143)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2151, N'Candie', N'Nicholle', N'Hyndley', N'Barford', 144, 144, 144)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2152, N'Sampson', N'Flss', N'Forsdicke', N'Goodswen', 145, 145, 145)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2153, N'Perry', N'Cleon', N'Slowly', N'Senussi', 146, 146, 146)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2154, N'Anjela', N'Johannes', N'Sibbert', N'Bricket', 147, 147, 147)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2155, N'Tracie', N'Kalle', N'Grigoli', N'Halls', 148, 148, 148)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2156, N'Felicity', N'Karel', N'Tunbridge', N'Malone', 149, 149, 149)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2157, N'Dalton', N'Derward', N'Ashpole', N'Edsall', 150, 150, 150)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2158, N'Eyde', N'Hailee', N'Marvel', N'Shelliday', 151, 151, 151)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2159, N'Daron', N'Pippy', N'Calvey', N'Rockcliffe', 152, 152, 152)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2160, N'Raf', N'Georgeanne', N'Ciccarelli', N'People', 153, 153, 153)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2161, N'Allissa', N'Jamison', N'Feasley', N'Caddock', 154, 154, 154)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2162, N'Dorian', N'Erica', N'Coleman', N'Raulin', 155, 155, 155)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2163, N'Laurette', N'Sarge', N'Danskine', N'Wickstead', 156, 156, 156)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2164, N'Legra', N'Giacinta', N'Shawyers', N'Diwell', 157, 157, 157)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2165, N'Didi', N'Neale', N'Ward', N'Rupert', 158, 158, 158)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2166, N'Olivier', N'Jacinda', N'Bolver', N'Fossey', 159, 159, 159)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2167, N'Cynthy', N'Sile', N'Glassman', N'Gawthrope', 160, 160, 160)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2168, N'Archibaldo', N'Dedra', N'Purkins', N'McGifford', 161, 161, 161)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2169, N'Giorgio', N'Humfrey', N'Josephy', N'Quernel', 162, 162, 162)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2170, N'Desmond', N'Anthe', N'Gosby', N'Kilban', 163, 163, 163)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2171, N'Florinda', N'Mei', N'Nethercott', N'Andrejs', 164, 164, 164)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2172, N'Zeb', N'Sari', N'Auton', N'Rawstron', 165, 165, 165)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2173, N'Efren', N'Ceil', N'McGinney', N'Meredyth', 166, 166, 166)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2174, N'Valli', N'Emeline', N'Sleet', N'McSperron', 167, 167, 167)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2175, N'Bevin', N'Nissa', N'Bougourd', N'Barensky', 168, 168, 168)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2176, N'Sandro', N'Brendan', N'Naulls', N'Girt', 169, 169, 169)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2177, N'Sheelah', N'Haskel', N'Scarffe', N'Raymont', 170, 170, 170)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2178, N'Rosie', N'Rosy', N'Milmo', N'Adamo', 171, 171, 171)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2179, N'Barbabra', N'Neel', N'Nottingam', N'Wenman', 172, 172, 172)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2180, N'Willy', N'Cherri', N'Robathon', N'Eldon', 173, 173, 173)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2181, N'Che', N'Lind', N'Sanderson', N'Dorsey', 174, 174, 174)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2182, N'Ralph', N'Dwain', N'Veldstra', N'Jannasch', 175, 175, 175)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2183, N'Lib', N'Nessie', N'Nears', N'Betho', 176, 176, 176)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2184, N'Margie', N'Josephine', N'Croad', N'Grolmann', 177, 177, 177)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2185, N'Rosmunda', N'Sinclare', N'Potbury', N'Colwell', 178, 178, 178)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2186, N'Bobbe', N'Sigrid', N'Janssens', N'Krahl', 179, 179, 179)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2187, N'Idelle', N'Arri', N'Richardot', N'Kuhlen', 180, 180, 180)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2188, N'Mirabel', N'Agosto', N'Shoveller', N'Prozillo', 181, 181, 181)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2189, N'Karina', N'Dody', N'Buntain', N'Evangelinos', 182, 182, 182)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2190, N'Star', N'Tarra', N'Benedek', N'Bastable', 183, 183, 183)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2191, N'Berty', N'Dwayne', N'Broadis', N'Van der Hoeven', 184, 184, 184)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2192, N'Eirena', N'Roselin', N'Tydeman', N'Roots', 185, 185, 185)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2193, N'Rianon', N'Arny', N'Cooper', N'Mechic', 186, 186, 186)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2194, N'Marge', N'Caro', N'Momford', N'Bonnavant', 187, 187, 187)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2195, N'Drona', N'Binni', N'Sasser', N'Boland', 188, 188, 188)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2196, N'Kalila', N'Ginnie', N'Treace', N'Budd', 189, 189, 189)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2197, N'Celestia', N'Randy', N'Klaves', N'Kiraly', 190, 190, 190)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2198, N'Trace', N'Stearn', N'Yurin', N'Creaney', 191, 191, 191)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2199, N'Isabelle', N'Odelia', N'Basten', N'Giacopello', 192, 192, 192)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2200, N'Sybilla', N'Olenka', N'Heads', N'St Ledger', 193, 193, 193)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2201, N'Kati', N'Vasilis', N'D''Angeli', N'Dargan', 194, 194, 194)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2202, N'Em', N'Nichols', N'Elsmere', N'Overthrow', 195, 195, 195)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2203, N'Creight', N'Clare', N'Carus', N'Colquete', 196, 196, 196)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2204, N'Conny', N'Loutitia', N'Dagnall', N'Embling', 197, 197, 197)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2205, N'Marlene', N'Symon', N'Kearton', N'Langmuir', 198, 198, 198)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2206, N'Ban', N'Kelila', N'Ascraft', N'Mainds', 199, 199, 199)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2207, N'Ellary', N'Homere', N'Heardman', N'Ruffell', 200, 200, 200)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2208, N'Casar', N'Sheelah', N'Pashler', N'Ticehurst', 201, 201, 201)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2209, N'Gray', N'Martica', N'Gartenfeld', N'Braywood', 202, 202, 202)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2210, N'Otis', N'Dill', N'Bawme', N'Iggalden', 203, 203, 203)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2211, N'Agnes', N'Sauveur', N'Wardell', N'Balogh', 204, 204, 204)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2212, N'Delaney', N'Tedra', N'Mahy', N'Hallgarth', 205, 205, 205)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2213, N'Richardo', N'Heywood', N'Offner', N'Arthey', 206, 206, 206)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2214, N'Wash', N'Meghann', N'Manuele', N'Brisco', 207, 207, 207)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2215, N'Ingar', N'Dasya', N'Frissell', N'Monnelly', 208, 208, 208)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2216, N'Virgil', N'Katti', N'Bennedick', N'Kier', 209, 209, 209)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2217, N'Mab', N'Moise', N'Keave', N'Crossdale', 210, 210, 210)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2218, N'Aili', N'Rosabel', N'Rigts', N'Owtram', 211, 211, 211)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2219, N'Joletta', N'Gabbey', N'Tampin', N'Moring', 212, 212, 212)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2220, N'Serge', N'Oralla', N'St. Clair', N'Halloran', 213, 213, 213)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2221, N'Ware', N'Vally', N'Hainey', N'Andri', 214, 214, 214)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2222, N'Harv', N'Dede', N'Brobak', N'Pumphrey', 215, 215, 215)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2223, N'Brnaby', N'Marrissa', N'Izac', N'Lohan', 216, 216, 216)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2224, N'Rosemarie', N'Mireille', N'Idill', N'Grooby', 217, 217, 217)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2225, N'William', N'Vinnie', N'Crumly', N'Bernaldez', 218, 218, 218)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2226, N'Daile', N'Oona', N'Blondell', N'Bhar', 219, 219, 219)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2227, N'Roderic', N'Piggy', N'Goudman', N'Olek', 220, 220, 220)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2228, N'Rourke', N'Aldous', N'Meardon', N'Dulinty', 221, 221, 221)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2229, N'Guglielma', N'Teresa', N'Rigard', N'Lemasney', 222, 222, 222)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2230, N'Cyrus', N'Robin', N'Bigley', N'Scandrite', 223, 223, 223)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2231, N'Clio', N'Haslett', N'Bore', N'Reeday', 224, 224, 224)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2232, N'Carie', N'Arni', N'Roantree', N'Salisbury', 225, 225, 225)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2233, N'Melinda', N'Phebe', N'Folley', N'Snellman', 226, 226, 226)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2234, N'Klemens', N'Meagan', N'Presley', N'Uccelli', 227, 227, 227)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2235, N'Hendrik', N'Yettie', N'Dimock', N'Spoole', 228, 228, 228)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2236, N'Genny', N'Fritz', N'Monketon', N'Walkden', 229, 229, 229)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2237, N'Alfredo', N'Marylee', N'O''Cullinane', N'McCoid', 230, 230, 230)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2238, N'Jesus', N'Elladine', N'Sanney', N'Fenney', 231, 231, 231)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2239, N'Frances', N'Frazer', N'Lage', N'Lowson', 232, 232, 232)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2240, N'Mada', N'Maggie', N'Dawnay', N'Moule', 233, 233, 233)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2241, N'Antons', N'Shir', N'Skipperbottom', N'Midgely', 234, 234, 234)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2242, N'Gilly', N'Syman', N'Leyfield', N'Shaw', 235, 235, 235)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2243, N'Tracey', N'Sibylla', N'Ioan', N'Dews', 236, 236, 236)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2244, N'Nathanael', N'Kimmi', N'De Andisie', N'Pawlata', 237, 237, 237)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2245, N'Dorelia', N'Haskell', N'Pellett', N'Goseling', 238, 238, 238)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2246, N'Jorey', N'Kaela', N'Matuszewski', N'Longo', 239, 239, 239)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2247, N'Nancie', N'Urson', N'Keuning', N'Sudran', 240, 240, 240)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2248, N'Audi', N'Myriam', N'Anfosso', N'Ellis', 241, 241, 241)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2249, N'Elita', N'Alena', N'Franzonello', N'Lehmann', 242, 242, 242)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2250, N'Marlyn', N'Annissa', N'Ithell', N'Tatlock', 243, 243, 243)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2251, N'Delcina', N'Wang', N'Oldis', N'Veldstra', 244, 244, 244)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2252, N'Cammy', N'Glenda', N'Brideau', N'McGoldrick', 245, 245, 245)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2253, N'Angel', N'Adelheid', N'Broad', N'Petofi', 246, 246, 246)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2254, N'Silva', N'Nanni', N'Brabbins', N'D''eath', 247, 247, 247)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2255, N'Cherish', N'Sonny', N'Avey', N'Sherrock', 248, 248, 248)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2256, N'Fredi', N'Athene', N'Maps', N'Topley', 249, 249, 249)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2257, N'Eddie', N'Jacklyn', N'Scrigmour', N'Philler', 250, 250, 250)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2258, N'Dietrich', N'Aili', N'Rubinsky', N'Gajewski', 251, 251, 251)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2259, N'Merrill', N'Amalea', N'Wilshire', N'Tuffin', 252, 252, 252)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2260, N'Vitoria', N'Lydon', N'Jeandot', N'Bowne', 253, 253, 253)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2261, N'Dew', N'Nadine', N'Aimer', N'Reast', 254, 254, 254)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2262, N'Shawn', N'Althea', N'Wilkerson', N'Kaminski', 255, 255, 255)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2263, N'Erv', N'Belinda', N'Binnall', N'Rattenbury', 256, 256, 256)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2264, N'Merola', N'Yurik', N'Hyams', N'Pascall', 257, 257, 257)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2265, N'Nicola', N'Adriane', N'Raise', N'Egdal', 258, 258, 258)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2266, N'Israel', N'Nanon', N'Casolla', N'Manske', 259, 259, 259)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2267, N'Nikos', N'Ingaborg', N'Hedgeman', N'Orkney', 260, 260, 260)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2268, N'Lyn', N'Ashia', N'Gowrich', N'Aupol', 261, 261, 261)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2269, N'Christian', N'Toby', N'Keelan', N'Carrodus', 262, 262, 262)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2270, N'Liam', N'Nickolas', N'Kenion', N'Lawland', 263, 263, 263)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2271, N'Wilfred', N'Natty', N'Apedaile', N'Cullivan', 264, 264, 264)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2272, N'Rosaleen', N'Cheslie', N'Troni', N'Priestnall', 265, 265, 265)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2273, N'Ruben', N'Ezmeralda', N'Labrone', N'Gemlett', 266, 266, 266)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2274, N'Dean', N'Inna', N'Rappa', N'Dutchburn', 267, 267, 267)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2275, N'Rhianon', N'Marya', N'Haile', N'Holsey', 268, 268, 268)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2276, N'Daryl', N'Kahlil', N'Gowenlock', N'Petel', 269, 269, 269)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2277, N'Yorke', N'Wynn', N'Popping', N'Brendel', 270, 270, 270)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2278, N'Morry', N'Raphaela', N'Brood', N'Whye', 271, 271, 271)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2279, N'Chrissy', N'Abagael', N'Manuele', N'Huxley', 272, 272, 272)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2280, N'Alessandro', N'Valentine', N'Bonsul', N'Mathevon', 273, 273, 273)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2281, N'Abbi', N'Bernardo', N'McNeil', N'Culham', 274, 274, 274)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2282, N'Roseline', N'Tandy', N'Pearl', N'McKern', 275, 275, 275)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2283, N'Larina', N'Gratiana', N'Leal', N'Haynes', 276, 276, 276)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2284, N'Kerry', N'Padraig', N'Dollar', N'Dressel', 277, 277, 277)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2285, N'Daisie', N'Karlis', N'Surplice', N'Matchitt', 278, 278, 278)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2286, N'Bay', N'D''arcy', N'Clerke', N'Barhams', 279, 279, 279)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2287, N'Andrei', N'Brittani', N'Santello', N'Cartman', 280, 280, 280)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2288, N'Trixi', N'Liane', N'Atack', N'Lorenzetto', 281, 281, 281)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2289, N'Marcello', N'Angelique', N'Pietroni', N'Smead', 282, 282, 282)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2290, N'Garland', N'Nanni', N'MacCollom', N'Forestall', 283, 283, 283)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2291, N'Allys', N'Eimile', N'Rawcliff', N'MacDougall', 284, 284, 284)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2292, N'Eliot', N'Efren', N'Pearlman', N'Whilde', 285, 285, 285)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2293, N'Erena', N'Ford', N'Djekic', N'Keilty', 286, 286, 286)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2294, N'Britt', N'Sinclare', N'Cubberley', N'Sydenham', 287, 287, 287)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2295, N'Dominique', N'Noella', N'Sesons', N'Vanderplas', 288, 288, 288)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2296, N'Tilly', N'Shep', N'Allenby', N'Hastin', 289, 289, 289)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2297, N'Moe', N'Moselle', N'Killingsworth', N'Bebbell', 290, 290, 290)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2298, N'Fransisco', N'Carey', N'Woolford', N'Wagstaffe', 291, 291, 291)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2299, N'Hildagard', N'Martguerita', N'Balfe', N'Hubach', 292, 292, 292)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2300, N'Sabine', N'Cherise', N'Scaysbrook', N'MacKellar', 293, 293, 293)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2301, N'Kim', N'Melisande', N'Dobing', N'Pavlata', 294, 294, 294)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2302, N'Grethel', N'Rowe', N'Simka', N'Danielkiewicz', 295, 295, 295)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2303, N'Renee', N'Cary', N'Dominick', N'Maile', 296, 296, 296)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2304, N'Mace', N'Jessamyn', N'Skatcher', N'Tincey', 297, 297, 297)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2305, N'Jeramie', N'Shepperd', N'Jaume', N'Le Guin', 298, 298, 298)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2306, N'Myrna', N'Zechariah', N'Abrahamson', N'Laurenty', 299, 299, 299)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2307, N'Maggy', N'Grenville', N'Shafier', N'De Ferrari', 300, 300, 300)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2308, N'Mignonne', N'Aldric', N'Roblett', N'Robun', 301, 301, 301)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2309, N'Corella', N'Johannah', N'Jagels', N'Barreau', 302, 302, 302)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2310, N'Sula', N'Nannie', N'Reditt', N'Itskovitz', 303, 303, 303)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2311, N'Sherry', N'Kirbie', N'Chatainier', N'Birtles', 304, 304, 304)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2312, N'Garrott', N'Tabitha', N'Kilmaster', N'Duffet', 305, 305, 305)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2313, N'Budd', N'Marthena', N'Emms', N'Parkhouse', 306, 306, 306)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2314, N'Carmel', N'Carlye', N'Barrasse', N'McTrustey', 307, 307, 307)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2315, N'Austin', N'Yurik', N'Toms', N'Schroeder', 308, 308, 308)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2316, N'Eveline', N'Giacopo', N'Lawler', N'Plues', 309, 309, 309)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2317, N'Moreen', N'Hanny', N'Boolsen', N'Beneix', 310, 310, 310)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2318, N'Morgan', N'Konstanze', N'Alpe', N'Squibbes', 311, 311, 311)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2319, N'Abeu', N'Veronika', N'Coatts', N'Roof', 312, 312, 312)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2320, N'Winn', N'Wandis', N'Cambell', N'Havesides', 313, 313, 313)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2321, N'Gavin', N'Abram', N'Schwandermann', N'Woolis', 314, 314, 314)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2322, N'Ben', N'Claire', N'Bolino', N'Darley', 315, 315, 315)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2323, N'Chloris', N'Anny', N'Friskey', N'Coade', 316, 316, 316)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2324, N'Hedy', N'Jonie', N'Kennham', N'Mayberry', 317, 317, 317)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2325, N'Rodie', N'Suellen', N'Bourdel', N'Reddings', 318, 318, 318)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2326, N'Auberon', N'Waylon', N'Yakolev', N'Croce', 319, 319, 319)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2327, N'Jerome', N'Junette', N'Lacaze', N'Aylin', 320, 320, 320)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2328, N'Natalya', N'Linus', N'Dottrell', N'MacCrossan', 321, 321, 321)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2329, N'Barbra', N'Trenna', N'Milner', N'McKerrow', 322, 322, 322)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2330, N'Estele', N'Felic', N'Unsworth', N'MacColm', 323, 323, 323)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2331, N'Alan', N'Isaak', N'Kubis', N'Kroin', 324, 324, 324)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2332, N'Rona', N'Glenda', N'Annett', N'Bertouloume', 325, 325, 325)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2333, N'Fabe', N'Avie', N'Finicj', N'Hartwright', 326, 326, 326)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2334, N'Ross', N'Candi', N'Stodart', N'Handyside', 327, 327, 327)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2335, N'Fairleigh', N'Gayler', N'Ewbanche', N'Gobeaux', 328, 328, 328)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2336, N'Lockwood', N'Alissa', N'Sarge', N'Wozencroft', 329, 329, 329)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2337, N'John', N'Garik', N'Ostridge', N'Cameron', 330, 330, 330)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2338, N'Lutero', N'Giuditta', N'Kenaway', N'Horick', 331, 331, 331)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2339, N'Dedie', N'Humfrid', N'Pallent', N'Borth', 332, 332, 332)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2340, N'Hastie', N'Ives', N'Mersh', N'Scrowson', 333, 333, 333)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2341, N'Harold', N'Chiquia', N'Ros', N'Travis', 334, 334, 334)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2342, N'Artemus', N'Christy', N'Caroll', N'Denys', 335, 335, 335)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2343, N'Sutherland', N'Malena', N'Lemmer', N'Alfonsini', 336, 336, 336)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2344, N'Creigh', N'Xymenes', N'Rider', N'Jachimak', 337, 337, 337)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2345, N'Winonah', N'Osbert', N'Heffron', N'Dufour', 338, 338, 338)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2346, N'Jo', N'Vladimir', N'Lawdham', N'Aubrey', 339, 339, 339)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2347, N'Gill', N'Gabby', N'Vanetti', N'Tainton', 340, 340, 340)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2348, N'Christoforo', N'Meade', N'Claydon', N'Thurner', 341, 341, 341)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2349, N'Gerald', N'Camey', N'O'' Clovan', N'Boodle', 342, 342, 342)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2350, N'Debi', N'Estrella', N'Tune', N'Woolfall', 343, 343, 343)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2351, N'Dominik', N'Janna', N'Collecott', N'Jentges', 344, 344, 344)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2352, N'Harriett', N'Ossie', N'Thickett', N'Carous', 345, 345, 345)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2353, N'Dagny', N'Charline', N'Eastment', N'Abrashkov', 346, 346, 346)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2354, N'Jase', N'Berta', N'Mainwaring', N'Jentin', 347, 347, 347)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2355, N'Carroll', N'Sibella', N'Cheeney', N'Gorham', 348, 348, 348)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2356, N'Artie', N'Fedora', N'Greenlies', N'Chieze', 349, 349, 349)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2357, N'Tammy', N'Constantino', N'Tartt', N'Tousy', 350, 350, 350)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2358, N'Mozes', N'Josie', N'Widocks', N'Pughsley', 351, 351, 351)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2359, N'Renelle', N'Julie', N'Broz', N'Antoniottii', 352, 352, 352)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2360, N'Hermia', N'Anny', N'Ragge', N'Found', 353, 353, 353)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2361, N'Dianna', N'Mikaela', N'Shalliker', N'Greir', 354, 354, 354)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2362, N'Dido', N'Spencer', N'Linge', N'Izod', 355, 355, 355)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2363, N'Forrester', N'Tessa', N'Cowpe', N'Hollington', 356, 356, 356)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2364, N'Tobie', N'Ford', N'Qualtro', N'Raubenheimer', 357, 357, 357)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2365, N'Peyter', N'Izzy', N'Danslow', N'Kubach', 358, 358, 358)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2366, N'Maurine', N'Abigale', N'Frankcombe', N'Joron', 359, 359, 359)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2367, N'Brand', N'Bobina', N'Blasli', N'Regina', 360, 360, 360)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2368, N'Mimi', N'Matthus', N'Corneck', N'Sugar', 361, 361, 361)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2369, N'Carlynn', N'Rockey', N'Marthen', N'Culbard', 362, 362, 362)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2370, N'Bev', N'Irwinn', N'Tomson', N'Jarville', 363, 363, 363)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2371, N'Ellyn', N'Teodora', N'Kimberley', N'Kerrigan', 364, 364, 364)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2372, N'Idaline', N'Barde', N'Howler', N'Dachey', 365, 365, 365)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2373, N'Eric', N'Stephanus', N'Philcock', N'Chambers', 366, 366, 366)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2374, N'Andrey', N'Eileen', N'Burgum', N'Becker', 367, 367, 367)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2375, N'Issi', N'Joellyn', N'Ellins', N'Ralton', 368, 368, 368)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2376, N'Deena', N'Lucia', N'Giscken', N'Blease', 369, 369, 369)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2377, N'Chaunce', N'Gal', N'Tiley', N'Dunkinson', 370, 370, 370)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2378, N'Justis', N'Davida', N'MacCulloch', N'McEntegart', 371, 371, 371)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2379, N'Nilson', N'Tatiana', N'Paty', N'Dominik', 372, 372, 372)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2380, N'Domenico', N'Rachel', N'Tolmie', N'La Batie', 373, 373, 373)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2381, N'Robenia', N'Dalenna', N'Dodworth', N'Icom', 374, 374, 374)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2382, N'Chrissie', N'Jessie', N'Tawn', N'Beaumont', 375, 375, 375)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2383, N'Kerk', N'Elianore', N'Charles', N'Clowsley', 376, 376, 376)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2384, N'Ethel', N'Allister', N'Brakespear', N'Cully', 377, 377, 377)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2385, N'Lombard', N'Chariot', N'Lazonby', N'Hellcat', 378, 378, 378)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2386, N'Patrizio', N'Ester', N'Murfill', N'Antram', 379, 379, 379)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2387, N'Gwendolyn', N'Bendick', N'McDougald', N'Swash', 380, 380, 380)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2388, N'Tabor', N'Gilemette', N'Kivlin', N'Gavozzi', 381, 381, 381)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2389, N'Reeva', N'Lanie', N'Gerber', N'Wherry', 382, 382, 382)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2390, N'Deina', N'Jammie', N'Jaquest', N'Gilhouley', 383, 383, 383)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2391, N'Corbin', N'Dur', N'Blake', N'Fischer', 384, 384, 384)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2392, N'Davina', N'Ruth', N'Gleeton', N'Bogie', 385, 385, 385)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2393, N'Melody', N'Papageno', N'Rameaux', N'Ganiford', 386, 386, 386)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2394, N'Brucie', N'Yanaton', N'Alishoner', N'Gambles', 387, 387, 387)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2395, N'Ogdon', N'Alison', N'Cranfield', N'Lamort', 388, 388, 388)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2396, N'Shellie', N'Wolfgang', N'Fishbourn', N'Tailby', 389, 389, 389)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2397, N'Agnella', N'Avictor', N'Uzzell', N'Niset', 390, 390, 390)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2398, N'Hazel', N'Andromache', N'Bradfield', N'Edwin', 391, 391, 391)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2399, N'Ondrea', N'Clemens', N'Layburn', N'Ibbs', 392, 392, 392)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2400, N'Jennie', N'Marietta', N'Dunsmuir', N'Edmett', 393, 393, 393)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2401, N'Shayla', N'Boonie', N'Waterhouse', N'Janousek', 394, 394, 394)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2402, N'Lisa', N'Allys', N'Blaase', N'Pitrasso', 395, 395, 395)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2403, N'Lyndsay', N'Gustaf', N'MacGuffie', N'Tunniclisse', 396, 396, 396)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2404, N'Clarine', N'Cosmo', N'Cartmael', N'Delacourt', 397, 397, 397)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2405, N'Rani', N'Eberto', N'Lammin', N'Orwell', 398, 398, 398)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2406, N'Roshelle', N'Joanne', N'Glave', N'Braxton', 399, 399, 399)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2407, N'Gabi', N'Lindy', N'Gossipin', N'Accomb', 400, 400, 400)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2408, N'Issi', N'Orelia', N'Fitter', N'Booley', 401, 401, 401)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2409, N'Garret', N'Sybila', N'Credland', N'Radmore', 402, 402, 402)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2410, N'Mercedes', N'Dru', N'Sanday', N'Daunay', 403, 403, 403)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2411, N'Garrett', N'Florance', N'Grebert', N'Bradnick', 404, 404, 404)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2412, N'Tomkin', N'Udell', N'Berrow', N'Redier', 405, 405, 405)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2413, N'Talyah', N'Charlotte', N'Drei', N'Sheryne', 406, 406, 406)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2414, N'Chilton', N'Verina', N'Cops', N'Licas', 407, 407, 407)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2415, N'Vivyan', N'Ad', N'Durek', N'Kirley', 408, 408, 408)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2416, N'Trefor', N'Cele', N'Palin', N'Broke', 409, 409, 409)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2417, N'Loreen', N'Alice', N'Desmond', N'Karpeev', 410, 410, 410)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2418, N'Katalin', N'Stephie', N'Smale', N'Jiruch', 411, 411, 411)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2419, N'Brandy', N'Bonni', N'Slocombe', N'Setchfield', 412, 412, 412)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2420, N'Randy', N'Ambros', N'Loosemore', N'Taffarello', 413, 413, 413)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2421, N'Kacie', N'Lurette', N'Martensen', N'Haworth', 414, 414, 414)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2422, N'Lannie', N'Joaquin', N'Lindborg', N'Burk', 415, 415, 415)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2423, N'Reece', N'Bryan', N'Thickin', N'Affuso', 416, 416, 416)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2424, N'Mike', N'Way', N'Phippin', N'Lupson', 417, 417, 417)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2425, N'Joycelin', N'Cori', N'Wadwell', N'Sussams', 418, 418, 418)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2426, N'Daile', N'Juanita', N'Ledgerton', N'Aartsen', 419, 419, 419)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2427, N'Saxon', N'Thomasa', N'Luck', N'Brushneen', 420, 420, 420)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2428, N'Kele', N'Wallace', N'Gowing', N'Carrick', 421, 421, 421)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2429, N'Egon', N'Fran', N'Amies', N'Goldingay', 422, 422, 422)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2430, N'Lizabeth', N'Margret', N'Lewin', N'Messer', 423, 423, 423)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2431, N'Wait', N'Flynn', N'Peyro', N'Delong', 424, 424, 424)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2432, N'Burt', N'Vanda', N'Maha', N'Comerford', 425, 425, 425)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2433, N'Dody', N'Ashia', N'Whatman', N'Newtown', 426, 426, 426)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2434, N'Joela', N'Jannelle', N'Tamlett', N'Prayer', 427, 427, 427)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2435, N'Steffane', N'Hastie', N'Croston', N'I''anson', 428, 428, 428)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2436, N'Aleksandr', N'Cassius', N'Brignell', N'Plitz', 429, 429, 429)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2437, N'Giusto', N'Yardley', N'Kynder', N'Monk', 430, 430, 430)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2438, N'Verena', N'Gunner', N'Matsell', N'Lehrahan', 431, 431, 431)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2439, N'Valaria', N'Lindon', N'O''Garmen', N'Rudsdell', 432, 432, 432)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2440, N'Delaney', N'Farleigh', N'Burn', N'Scrimshaw', 433, 433, 433)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2441, N'Blondell', N'Beverley', N'Nassi', N'Candish', 434, 434, 434)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2442, N'Leonelle', N'Morty', N'Joice', N'Harborow', 435, 435, 435)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2443, N'Shannen', N'Esme', N'Fair', N'Halms', 436, 436, 436)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2444, N'Hale', N'Cinda', N'Gyde', N'Chiddy', 437, 437, 437)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2445, N'Judon', N'Isobel', N'Dikle', N'Hanscombe', 438, 438, 438)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2446, N'Clotilda', N'Thia', N'Menendez', N'Sammars', 439, 439, 439)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2447, N'Bald', N'Sammy', N'Wescott', N'Clerc', 440, 440, 440)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2448, N'Shermy', N'Conrad', N'Hamp', N'Birkmyr', 441, 441, 441)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2449, N'Allison', N'Livvy', N'Devenport', N'Goodday', 442, 442, 442)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2450, N'Augustina', N'Marillin', N'Antonowicz', N'Staneland', 443, 443, 443)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2451, N'Honoria', N'Callean', N'Matyushenko', N'Wherrett', 444, 444, 444)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2452, N'Broderick', N'Uriah', N'MacGille', N'Janouch', 445, 445, 445)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2453, N'Clint', N'Kristofor', N'Corroyer', N'Joannic', 446, 446, 446)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2454, N'Sonya', N'Cristin', N'Bragger', N'Physick', 447, 447, 447)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2455, N'Lark', N'Phyllys', N'Papen', N'Bourley', 448, 448, 448)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2456, N'Beltran', N'Jo-ann', N'Yair', N'Clague', 449, 449, 449)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2457, N'Sisely', N'Serge', N'Vitler', N'Benoit', 450, 450, 450)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2458, N'Ariana', N'Shelden', N'Radden', N'Wynes', 451, 451, 451)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2459, N'Skip', N'Fremont', N'Garber', N'Hancell', 452, 452, 452)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2460, N'Lee', N'Abdul', N'Martygin', N'Samter', 453, 453, 453)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2461, N'Erna', N'Nikki', N'Blinco', N'Randell', 454, 454, 454)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2462, N'Gilemette', N'Romain', N'Melsome', N'Pineaux', 455, 455, 455)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2463, N'Gerrie', N'Normand', N'Shear', N'Vakhonin', 456, 456, 456)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2464, N'Rosabella', N'Stacia', N'Schulke', N'Goldingay', 457, 457, 457)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2465, N'Lavina', N'Trumaine', N'Frederick', N'Lilian', 458, 458, 458)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2466, N'Levy', N'Anestassia', N'Beades', N'Gimlet', 459, 459, 459)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2467, N'Leicester', N'Murdoch', N'Newrick', N'Mitchelmore', 460, 460, 460)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2468, N'Britteny', N'Darin', N'Currom', N'Hubbold', 461, 461, 461)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2469, N'Caye', N'Annalise', N'Stores', N'Cheyney', 462, 462, 462)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2470, N'Lira', N'Lotty', N'McIlhatton', N'Yansons', 463, 463, 463)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2471, N'Ogdan', N'Eddi', N'Postians', N'Prosser', 464, 464, 464)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2472, N'Brittney', N'Ariella', N'Pitkethly', N'Snowden', 465, 465, 465)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2473, N'Daven', N'Orin', N'Skepper', N'Petrello', 466, 466, 466)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2474, N'Ailina', N'Chaim', N'Pavyer', N'Fairnington', 467, 467, 467)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2475, N'Jackie', N'Deb', N'Brimson', N'Ladds', 468, 468, 468)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2476, N'Angelo', N'Glenn', N'Matveyev', N'Ledwich', 469, 469, 469)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2477, N'Bobinette', N'Haily', N'Roger', N'Dagger', 470, 470, 470)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2478, N'Perren', N'Blakeley', N'Mulcahy', N'Cathro', 471, 471, 471)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2479, N'Imojean', N'Mikkel', N'Delucia', N'May', 472, 472, 472)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2480, N'Jack', N'Brant', N'Marler', N'Le Port', 473, 473, 473)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2481, N'Dame', N'Addy', N'Shatliffe', N'Chalker', 474, 474, 474)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2482, N'Upton', N'Orran', N'Beckhurst', N'Ferrettini', 475, 475, 475)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2483, N'Base', N'Wright', N'Andrusov', N'Rosso', 476, 476, 476)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2484, N'Valle', N'Bess', N'Edghinn', N'Edgington', 477, 477, 477)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2485, N'Elnora', N'Renell', N'Osboldstone', N'MacCumiskey', 478, 478, 478)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2486, N'Janeen', N'Yettie', N'Raithbie', N'Anster', 479, 479, 479)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2487, N'Isaak', N'Roxanne', N'Tomet', N'Mahaddy', 480, 480, 480)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2488, N'Sibilla', N'Corissa', N'Dafforne', N'Cornelis', 481, 481, 481)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2489, N'Elliot', N'Jory', N'Dunkerley', N'Ding', 482, 482, 482)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2490, N'Sidonia', N'Thayne', N'Leethem', N'Warton', 483, 483, 483)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2491, N'Edyth', N'Berrie', N'Joyes', N'Nortcliffe', 484, 484, 484)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2492, N'Selestina', N'Farrell', N'Witchard', N'Yair', 485, 485, 485)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2493, N'Jarib', N'Madelena', N'Crucetti', N'Dowey', 486, 486, 486)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2494, N'Dick', N'Nikolaos', N'Ralphs', N'Penburton', 487, 487, 487)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2495, N'Esta', N'Idette', N'McBeith', N'Hedderly', 488, 488, 488)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2496, N'Julee', N'Olivia', N'Oldfield-Cherry', N'Jeandot', 489, 489, 489)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2497, N'Joyann', N'Leeann', N'Housley', N'Vanin', 490, 490, 490)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2498, N'Cassie', N'Salem', N'Libreros', N'O''Mara', 491, 491, 491)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2499, N'Jobey', N'Gauthier', N'Hrinishin', N'Hegerty', 492, 492, 492)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2500, N'Darby', N'Michal', N'Lerwell', N'Zannini', 493, 493, 493)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2501, N'Ingar', N'Kalle', N'Fawdrie', N'Mabon', 494, 494, 494)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2502, N'Priscilla', N'Leonhard', N'Andrich', N'Benini', 495, 495, 495)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2503, N'Effie', N'Flo', N'Scutchin', N'Cutchey', 496, 496, 496)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2504, N'Hillier', N'Kerianne', N'Jodkowski', N'Madders', 497, 497, 497)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2505, N'Keith', N'Loy', N'Locker', N'Maffey', 498, 498, 498)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2506, N'Dulcea', N'Wilhelmina', N'Coe', N'Blissitt', 499, 499, 499)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2507, N'Janette', N'Gardiner', N'Mattin', N'Cordeau]', 500, 500, 500)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2508, N'Toni', N'Suki', N'Brawn', N'Lillgard', 501, 501, 501)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2509, N'Montague', N'Ranna', N'Geffcock', N'Maydwell', 502, 502, 502)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2510, N'Marlie', N'Kendall', N'Elsby', N'Sidry', 503, 503, 503)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2511, N'Chad', N'Franklin', N'Skace', N'Bartali', 504, 504, 504)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2512, N'Dyanne', N'Ilse', N'Parsand', N'Boog', 505, 505, 505)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2513, N'Rafaelia', N'Sarah', N'Askew', N'Tomes', 506, 506, 506)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2514, N'Amara', N'Dunn', N'Van Cassel', N'Freeborne', 507, 507, 507)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2515, N'Tamma', N'Skyler', N'Shaw', N'Hugenin', 508, 508, 508)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2516, N'Jessey', N'Barri', N'Knappe', N'Saylor', 509, 509, 509)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2517, N'Padriac', N'Karim', N'Burchard', N'Fonquernie', 510, 510, 510)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2518, N'Olympe', N'Ewart', N'Dallmann', N'Mogey', 511, 511, 511)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2519, N'Rebe', N'Deny', N'Bromilow', N'Babbs', 512, 512, 512)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2520, N'Bran', N'Claribel', N'Schade', N'Banbrigge', 513, 513, 513)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2521, N'Bekki', N'Maddie', N'Eddison', N'Shanley', 514, 514, 514)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2522, N'Carol', N'Maisie', N'Tythe', N'Shitliffe', 515, 515, 515)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2523, N'Dagmar', N'Ellette', N'Fawlo', N'Johnstone', 516, 516, 516)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2524, N'Theodore', N'Angelica', N'Leber', N'Van der Linde', 517, 517, 517)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2525, N'Dniren', N'Stace', N'Shilston', N'Seven', 518, 518, 518)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2526, N'Kare', N'Modesty', N'Whiffen', N'Jennins', 519, 519, 519)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2527, N'Hugo', N'Teri', N'Hyde', N'Ivanilov', 520, 520, 520)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2528, N'Rosamond', N'Wilona', N'Wimpress', N'Petican', 521, 521, 521)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2529, N'Zulema', N'Gamaliel', N'Becerra', N'Vazquez', 522, 522, 522)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2530, N'Maire', N'Wolfgang', N'Astell', N'Huccaby', 523, 523, 523)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2531, N'Kissie', N'Sadie', N'Goburn', N'Boswell', 524, 524, 524)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2532, N'Alon', N'Marlon', N'Drillot', N'Coghill', 525, 525, 525)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2533, N'Pansie', N'Melisenda', N'Getcliff', N'Spinks', 526, 526, 526)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2534, N'Courtnay', N'Nicky', N'Ochiltree', N'Strongitharm', 527, 527, 527)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2535, N'Krisha', N'Rosella', N'Danieli', N'Cammish', 528, 528, 528)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2536, N'Randie', N'Zoe', N'Hansom', N'Denman', 529, 529, 529)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2537, N'Evvie', N'Ethan', N'Biddwell', N'Wheelhouse', 530, 530, 530)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2538, N'Cele', N'Rena', N'Gant', N'Payley', 531, 531, 531)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2539, N'Marylin', N'Joceline', N'Crass', N'Filipychev', 532, 532, 532)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2540, N'Shurlock', N'Angelle', N'Wasson', N'Gaine', 533, 533, 533)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2541, N'Tracy', N'Fenelia', N'Vanyushkin', N'Dorgon', 534, 534, 534)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2542, N'Andreas', N'Abby', N'Persey', N'Alexandersson', 535, 535, 535)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2543, N'Ingrid', N'Leroy', N'Denley', N'Costain', 536, 536, 536)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2544, N'Eb', N'Ammamaria', N'Wadesworth', N'Pirrone', 537, 537, 537)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2545, N'Lilah', N'Liuka', N'Zmitruk', N'Estabrook', 538, 538, 538)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2546, N'Terencio', N'Wayland', N'Binfield', N'Ilyas', 539, 539, 539)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2547, N'Emlen', N'Delly', N'Kett', N'Patington', 540, 540, 540)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2548, N'Hesther', N'Delinda', N'Arrighetti', N'Mensler', 541, 541, 541)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2549, N'Amara', N'Cordie', N'Ost', N'Burfitt', 542, 542, 542)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2550, N'Ari', N'Mommy', N'Klessmann', N'Rigden', 543, 543, 543)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2551, N'Bucky', N'Kirby', N'Noddle', N'Marshallsay', 544, 544, 544)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2552, N'Inger', N'Pall', N'Trustram', N'Oxtiby', 545, 545, 545)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2553, N'Fletcher', N'Yanaton', N'Paslow', N'Elix', 546, 546, 546)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2554, N'Leonie', N'Craggie', N'Hovey', N'Ciciari', 547, 547, 547)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2555, N'Shantee', N'Sherline', N'Brimmicombe', N'Wyldbore', 548, 548, 548)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2556, N'Jennifer', N'Luce', N'Lewzey', N'Rosetti', 549, 549, 549)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2557, N'Christean', N'Jemima', N'Curner', N'Cornau', 550, 550, 550)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2558, N'Wendeline', N'Rouvin', N'Humfrey', N'McKirdy', 551, 551, 551)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2559, N'Cindra', N'Gill', N'Georgeot', N'Denzilow', 552, 552, 552)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2560, N'Simeon', N'Jammie', N'Moulson', N'Deighton', 553, 553, 553)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2561, N'Franky', N'Scotty', N'McVicar', N'Vollam', 554, 554, 554)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2562, N'Claretta', N'Lewie', N'Bazire', N'Pincked', 555, 555, 555)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2563, N'Stacia', N'Eden', N'Inchbald', N'Corkel', 556, 556, 556)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2564, N'Kenn', N'Beau', N'Newns', N'Cawthera', 557, 557, 557)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2565, N'Kyle', N'Cris', N'Igounet', N'Klas', 558, 558, 558)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2566, N'Tanitansy', N'Bert', N'Pulford', N'Huertas', 559, 559, 559)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2567, N'Mead', N'Sigismond', N'Siret', N'Kerwood', 560, 560, 560)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2568, N'Alvin', N'Sherwin', N'Oliveras', N'Dauncey', 561, 561, 561)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2569, N'Ki', N'Caresa', N'Orrah', N'Riccio', 562, 562, 562)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2570, N'Audrye', N'Kiel', N'Le feuvre', N'Brady', 563, 563, 563)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2571, N'Auroora', N'Catherine', N'Titmus', N'Dockrey', 564, 564, 564)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2572, N'Tommie', N'Hamish', N'Paeckmeyer', N'Lapides', 565, 565, 565)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2573, N'Fidelia', N'Laina', N'Docker', N'McManamen', 566, 566, 566)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2574, N'Elyn', N'Bibi', N'Elgram', N'Bunworth', 567, 567, 567)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2575, N'Nicolas', N'Geoffrey', N'Forst', N'Kolakovic', 568, 568, 568)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2576, N'Curtis', N'Kevin', N'Farrar', N'Storrier', 569, 569, 569)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2577, N'Jameson', N'Idalina', N'Bolam', N'Ikringill', 570, 570, 570)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2578, N'Marja', N'Nichol', N'Holmyard', N'Wisdish', 571, 571, 571)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2579, N'Euphemia', N'Julia', N'Cone', N'Freyne', 572, 572, 572)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2580, N'Ewan', N'Munroe', N'Mitchard', N'Phillippo', 573, 573, 573)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2581, N'Esme', N'Kimberley', N'Danher', N'Casterot', 574, 574, 574)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2582, N'Winonah', N'Boycie', N'Benedtti', N'O'' Cloney', 575, 575, 575)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2583, N'Wallie', N'Madalena', N'Pawlowicz', N'Paley', 576, 576, 576)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2584, N'Welbie', N'Allan', N'Swan', N'Gillbey', 577, 577, 577)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2585, N'Almeria', N'Nappie', N'Gallager', N'Marten', 578, 578, 578)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2586, N'Haslett', N'Berty', N'Henriksson', N'Soro', 579, 579, 579)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2587, N'Vanda', N'Gabie', N'De Giovanni', N'Lillecrap', 580, 580, 580)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2588, N'Cobby', N'Brander', N'Gabbidon', N'Croxton', 581, 581, 581)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2589, N'Delmer', N'Jobina', N'Gumme', N'Cathrall', 582, 582, 582)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2590, N'Shannan', N'Gradeigh', N'Dreghorn', N'Millan', 583, 583, 583)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2591, N'Osbourn', N'Hart', N'Duthie', N'Ravenhills', 584, 584, 584)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2592, N'Wallie', N'Rancell', N'Bold', N'Drysdall', 585, 585, 585)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2593, N'Analiese', N'Jeralee', N'McGrowther', N'Noteyoung', 586, 586, 586)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2594, N'Cynthia', N'Pauletta', N'Revans', N'Greener', 587, 587, 587)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2595, N'Sibley', N'Cody', N'Braun', N'Slayny', 588, 588, 588)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2596, N'Kelcy', N'Wit', N'Pinard', N'Cuddihy', 589, 589, 589)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2597, N'Fae', N'Rafferty', N'Snary', N'Bursell', 590, 590, 590)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2598, N'Mavra', N'Ciro', N'Giacomasso', N'Hearmon', 591, 591, 591)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2599, N'Cary', N'Consuelo', N'Jenks', N'Gravenell', 592, 592, 592)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2600, N'Darell', N'Christoffer', N'Bruin', N'Otson', 593, 593, 593)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2601, N'Matilda', N'Mariel', N'Moorcraft', N'Stranger', 594, 594, 594)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2602, N'Glennie', N'Jarrad', N'Sinton', N'Worsfold', 595, 595, 595)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2603, N'Madelle', N'Kathrine', N'Evert', N'Checkley', 596, 596, 596)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2604, N'Dalton', N'Vale', N'Hutchins', N'Sarver', 597, 597, 597)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2605, N'Alejoa', N'Bernelle', N'Tinn', N'Jirasek', 598, 598, 598)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2606, N'Grazia', N'Tonnie', N'Strafen', N'Buckham', 599, 599, 599)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2607, N'Simone', N'Lawrence', N'Midgely', N'Hugonnet', 600, 600, 600)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2608, N'Ewell', N'Rriocard', N'Towsie', N'Ferenc', 601, 601, 601)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2609, N'Robers', N'Jeremias', N'Faucett', N'Quarterman', 602, 602, 602)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2610, N'Nerty', N'Noni', N'Kasbye', N'Ohanessian', 603, 603, 603)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2611, N'Olly', N'Glory', N'Fancutt', N'Templman', 604, 604, 604)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2612, N'Ursula', N'Pete', N'Acott', N'Stallibrass', 605, 605, 605)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2613, N'Em', N'Ward', N'Lightwing', N'Tremblot', 606, 606, 606)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2614, N'Fairleigh', N'Nanni', N'Durker', N'Bartosek', 607, 607, 607)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2615, N'Alene', N'Wynny', N'Jickles', N'Richardes', 608, 608, 608)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2616, N'Glenden', N'Reinhold', N'Cockman', N'Drepp', 609, 609, 609)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2617, N'Siana', N'Corissa', N'Abbett', N'Winchurst', 610, 610, 610)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2618, N'Sanders', N'Tomlin', N'Collick', N'Emmanueli', 611, 611, 611)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2619, N'Candie', N'Jewelle', N'Pendergast', N'Jerzyk', 612, 612, 612)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2620, N'Cherrita', N'Nevins', N'Gatward', N'Yurshev', 613, 613, 613)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2621, N'Layne', N'Trstram', N'Brooksby', N'Jeandillou', 614, 614, 614)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2622, N'Byran', N'Stefan', N'Elphinstone', N'Voice', 615, 615, 615)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2623, N'Ralina', N'Jake', N'Botham', N'MacFarland', 616, 616, 616)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2624, N'Gertrudis', N'Golda', N'De Domenici', N'Hegden', 617, 617, 617)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2625, N'Bridget', N'Howard', N'Measen', N'Oxbe', 618, 618, 618)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2626, N'Gipsy', N'Valentine', N'Ion', N'Findlow', 619, 619, 619)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2627, N'Sheila-kathryn', N'Evin', N'Succamore', N'Batey', 620, 620, 620)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2628, N'Artie', N'Roselin', N'Truss', N'Klezmski', 621, 621, 621)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2629, N'Wakefield', N'Basile', N'Casier', N'Mack', 622, 622, 622)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2630, N'Quinn', N'Alexina', N'Maile', N'Naisbet', 623, 623, 623)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2631, N'Alane', N'Erik', N'Grimditch', N'Maybey', 624, 624, 624)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2632, N'Hobart', N'Mala', N'Fellona', N'Wenger', 625, 625, 625)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2633, N'Renae', N'Gaile', N'Gaywood', N'Philps', 626, 626, 626)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2634, N'Cynthy', N'Dosi', N'Aubry', N'Caslett', 627, 627, 627)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2635, N'Joye', N'Miran', N'Philo', N'Barrell', 628, 628, 628)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2636, N'Shandra', N'Burl', N'Benstead', N'Clemmey', 629, 629, 629)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2637, N'Poul', N'Rahel', N'Laxson', N'Digger', 630, 630, 630)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2638, N'Mada', N'Dorena', N'Judron', N'Shovlar', 631, 631, 631)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2639, N'Irvin', N'Hana', N'McQuillen', N'Goldthorp', 632, 632, 632)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2640, N'Katrina', N'Iosep', N'Clixby', N'Southerell', 633, 633, 633)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2641, N'Konstantin', N'Gill', N'Georgelin', N'Loudwell', 634, 634, 634)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2642, N'Mame', N'Adolf', N'Ivshin', N'Devita', 635, 635, 635)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2643, N'Mile', N'Corny', N'Winckle', N'Boone', 636, 636, 636)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2644, N'Desi', N'Jobina', N'Haseldine', N'Kenwood', 637, 637, 637)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2645, N'Lowell', N'Mart', N'Stubbe', N'Ponting', 638, 638, 638)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2646, N'Land', N'Neile', N'Peck', N'MacCombe', 639, 639, 639)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2647, N'Derril', N'Edith', N'Boerderman', N'Berlin', 640, 640, 640)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2648, N'Vickie', N'Zsa zsa', N'Pietersen', N'Wontner', 641, 641, 641)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2649, N'Marthena', N'Dimitri', N'Dengate', N'Gieves', 642, 642, 642)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2650, N'Stanley', N'Twyla', N'Cully', N'Gobel', 643, 643, 643)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2651, N'Doralia', N'Deny', N'Escalero', N'Huckett', 644, 644, 644)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2652, N'Biron', N'Matias', N'Adrienne', N'Vedntyev', 645, 645, 645)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2653, N'Moira', N'Helen', N'Konmann', N'Baron', 646, 646, 646)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2654, N'Venus', N'Abbie', N'Hurndall', N'Knill', 647, 647, 647)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2655, N'Shawn', N'Dolorita', N'Bourne', N'Scardifeild', 648, 648, 648)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2656, N'Cara', N'Rabbi', N'Caws', N'Strotton', 649, 649, 649)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2657, N'Norean', N'Ciel', N'Worcs', N'Mockler', 650, 650, 650)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2658, N'Florry', N'Maegan', N'Santarelli', N'Varvell', 651, 651, 651)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2659, N'Olivero', N'Enrichetta', N'Seres', N'Brookwood', 652, 652, 652)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2660, N'Celia', N'Trenna', N'Schonfelder', N'Ellacombe', 653, 653, 653)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2661, N'Lenka', N'Ozzy', N'McGairl', N'Bacop', 654, 654, 654)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2662, N'Kristoffer', N'Nana', N'Gebhardt', N'Tytler', 655, 655, 655)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2663, N'Zelda', N'Clive', N'Pinnington', N'Hillitt', 656, 656, 656)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2664, N'Chrisse', N'Jinny', N'Duplock', N'Wadly', 657, 657, 657)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2665, N'Heindrick', N'Ive', N'Brammer', N'MacCook', 658, 658, 658)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2666, N'Lisle', N'Alvy', N'Fairlaw', N'Saddler', 659, 659, 659)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2667, N'Mireille', N'Pryce', N'Gatrill', N'Eat', 660, 660, 660)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2668, N'Kasey', N'Justus', N'McLenaghan', N'Kildahl', 661, 661, 661)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2669, N'Perkin', N'Katerine', N'Quennell', N'Semon', 662, 662, 662)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2670, N'Gwenore', N'Diarmid', N'Hollyland', N'Spadelli', 663, 663, 663)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2671, N'Foss', N'Berky', N'Kibby', N'Sames', 664, 664, 664)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2672, N'Wren', N'Lammond', N'Chapiro', N'Baudin', 665, 665, 665)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2673, N'Nichole', N'Rice', N'Wrassell', N'Calton', 666, 666, 666)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2674, N'Laryssa', N'Ginnifer', N'Willows', N'MacKniely', 667, 667, 667)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2675, N'Jennica', N'Guillermo', N'Pittaway', N'Jurs', 668, 668, 668)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2676, N'Ralina', N'Thorny', N'Isenor', N'Blunn', 669, 669, 669)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2677, N'Shirline', N'Andriana', N'Shearston', N'Demaine', 670, 670, 670)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2678, N'Scarlett', N'Maryanne', N'Stag', N'Carren', 671, 671, 671)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2679, N'Jobyna', N'Gui', N'Hamblyn', N'Attawell', 672, 672, 672)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2680, N'Camille', N'Sheelagh', N'Larciere', N'Hanselman', 673, 673, 673)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2681, N'Nicholle', N'Ingaberg', N'Ondrasek', N'Nuccii', 674, 674, 674)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2682, N'Veronique', N'Naomi', N'Meckiff', N'Aubury', 675, 675, 675)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2683, N'Dniren', N'Joshuah', N'McClaren', N'Conichie', 676, 676, 676)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2684, N'Anna-diana', N'Kimberley', N'Pevsner', N'Theobold', 677, 677, 677)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2685, N'Odele', N'Chrissy', N'Dowears', N'Bog', 678, 678, 678)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2686, N'Elwin', N'Errol', N'Pammenter', N'Braffington', 679, 679, 679)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2687, N'Vail', N'Lena', N'Simioni', N'Baildon', 680, 680, 680)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2688, N'Marris', N'Dorotea', N'Oxenford', N'Seiler', 681, 681, 681)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2689, N'Fidel', N'Meghan', N'Sang', N'Mullard', 682, 682, 682)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2690, N'Jourdain', N'Fabe', N'Beet', N'McCamish', 683, 683, 683)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2691, N'Phillie', N'Ethelbert', N'Cowoppe', N'Vasnetsov', 684, 684, 684)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2692, N'Trista', N'Halli', N'Stolz', N'Jarnell', 685, 685, 685)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2693, N'Alfy', N'Tate', N'Axell', N'Goldsbrough', 686, 686, 686)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2694, N'Isaac', N'Audie', N'Heymann', N'Baline', 687, 687, 687)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2695, N'Bucky', N'Boot', N'Twist', N'Alexandrou', 688, 688, 688)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2696, N'Gregorius', N'Alexandre', N'Candey', N'Abbett', 689, 689, 689)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2697, N'Cherilynn', N'Gussy', N'Gower', N'Daintry', 690, 690, 690)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2698, N'Sylas', N'Issi', N'Pole', N'Oldis', 691, 691, 691)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2699, N'Virge', N'Lyn', N'Turbayne', N'Hew', 692, 692, 692)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2700, N'Jeddy', N'Llywellyn', N'Mortlock', N'Webby', 693, 693, 693)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2701, N'Candi', N'Oralie', N'Margiotta', N'Reeds', 694, 694, 694)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2702, N'Asa', N'Clair', N'Davage', N'Pirson', 695, 695, 695)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2703, N'Noelle', N'Claybourne', N'Janeczek', N'Locksley', 696, 696, 696)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2704, N'Leonie', N'Gallagher', N'Herculeson', N'Finicj', 697, 697, 697)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2705, N'Dal', N'Carolynn', N'Mac Geaney', N'Fernyhough', 698, 698, 698)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2706, N'Pail', N'Carlyn', N'Albon', N'Chinge', 699, 699, 699)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2707, N'Mathilde', N'Dev', N'Greenley', N'Shimon', 700, 700, 700)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2708, N'Shel', N'Quinton', N'Schule', N'Garraway', 701, 701, 701)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2709, N'Josepha', N'Vanya', N'MacGillespie', N'Mewburn', 702, 702, 702)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2710, N'Charles', N'Myrtle', N'Garnul', N'Capper', 703, 703, 703)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2711, N'Abba', N'Pierrette', N'Lockart', N'Lyfield', 704, 704, 704)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2712, N'Dagmar', N'Jacinda', N'Spykings', N'Chennells', 705, 705, 705)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2713, N'Damien', N'Dare', N'Alsobrook', N'Heffernan', 706, 706, 706)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2714, N'Kelcie', N'Farrah', N'Benedetti', N'Pleaden', 707, 707, 707)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2715, N'Daisy', N'Giovanna', N'Calafato', N'Armstead', 708, 708, 708)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2716, N'Thorvald', N'Terri', N'Djorvic', N'Dearnly', 709, 709, 709)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2717, N'Jarrid', N'Conny', N'Coslett', N'Avrahamov', 710, 710, 710)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2718, N'Reynold', N'Kathleen', N'Finn', N'Pelos', 711, 711, 711)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2719, N'Galen', N'Paulie', N'Brekonridge', N'Biasotti', 712, 712, 712)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2720, N'Phelia', N'Davita', N'Maudson', N'Rotlauf', 713, 713, 713)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2721, N'Babara', N'Karena', N'Brearton', N'Lockney', 714, 714, 714)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2722, N'Judas', N'Adara', N'Balassa', N'Ternouth', 715, 715, 715)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2723, N'Alia', N'Marve', N'Sorby', N'Aubrun', 716, 716, 716)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2724, N'Loretta', N'Oswell', N'Beaston', N'Baybutt', 717, 717, 717)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2725, N'Janos', N'Dinny', N'Lochrie', N'Babington', 718, 718, 718)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2726, N'Cecile', N'Sholom', N'Simmens', N'Mannock', 719, 719, 719)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2727, N'Craig', N'Alexandros', N'Hauxby', N'Karlmann', 720, 720, 720)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2728, N'Arthur', N'Antonin', N'Colwell', N'Malby', 721, 721, 721)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2729, N'Blondie', N'Jarrett', N'Chanders', N'Tuer', 722, 722, 722)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2730, N'Gabriella', N'Derk', N'Sorton', N'Geaveny', 723, 723, 723)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2731, N'Ingrim', N'Maurizio', N'Dunsford', N'Warland', 724, 724, 724)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2732, N'Bail', N'Lynde', N'Renackowna', N'Bouller', 725, 725, 725)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2733, N'Isadore', N'Gordie', N'Antonnikov', N'Grellier', 726, 726, 726)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2734, N'Hamish', N'Sosanna', N'Milbourn', N'Shippard', 727, 727, 727)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2735, N'Cello', N'Penn', N'Grombridge', N'Tal', 728, 728, 728)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2736, N'Herschel', N'Traver', N'Espie', N'Beinisch', 729, 729, 729)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2737, N'Caresse', N'Buddy', N'Peaurt', N'Peasegod', 730, 730, 730)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2738, N'Domenic', N'Benedetto', N'Tather', N'Lamberton', 731, 731, 731)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2739, N'Eudora', N'Sigfrid', N'Mouser', N'Spuner', 732, 732, 732)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2740, N'Ninette', N'Gasper', N'Chestnutt', N'Yarnall', 733, 733, 733)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2741, N'Sally', N'Vilhelmina', N'Mityashev', N'D''Alessio', 734, 734, 734)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2742, N'Lion', N'Lloyd', N'Upwood', N'Filipczak', 735, 735, 735)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2743, N'Malvina', N'Faustine', N'Wavish', N'Tumber', 736, 736, 736)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2744, N'Kyle', N'Ava', N'Borrott', N'Trood', 737, 737, 737)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2745, N'Mitch', N'Paulo', N'Sidery', N'Arboin', 738, 738, 738)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2746, N'Euphemia', N'Clayson', N'Bednell', N'Tring', 739, 739, 739)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2747, N'Gerald', N'Wenonah', N'Philipeaux', N'Sprowson', 740, 740, 740)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2748, N'Urban', N'Maure', N'Conrart', N'Webburn', 741, 741, 741)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2749, N'Collete', N'Tam', N'Pashbee', N'Botting', 742, 742, 742)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2750, N'Jonell', N'Theo', N'Duley', N'Fabri', 743, 743, 743)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2751, N'Stanislaus', N'Steward', N'Astell', N'Arkcoll', 744, 744, 744)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2752, N'Inglis', N'Ole', N'Maroney', N'Cosely', 745, 745, 745)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2753, N'Tommy', N'Ara', N'Carloni', N'Moryson', 746, 746, 746)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2754, N'Jdavie', N'Isa', N'Stuer', N'Franca', 747, 747, 747)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2755, N'Edsel', N'Lemmy', N'Beverage', N'Leeming', 748, 748, 748)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2756, N'Dill', N'Vinson', N'Vondrak', N'Sallans', 749, 749, 749)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2757, N'Anastassia', N'Bette', N'Mendonca', N'Milvarnie', 750, 750, 750)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2758, N'Yank', N'Brenden', N'Shildrake', N'Linn', 751, 751, 751)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2759, N'Hulda', N'Joshia', N'Brandes', N'Wildbore', 752, 752, 752)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2760, N'Carling', N'Hasty', N'Rannells', N'Esslement', 753, 753, 753)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2761, N'Merola', N'Charlotte', N'Relph', N'Ogelsby', 754, 754, 754)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2762, N'Gerrie', N'Shannon', N'Pether', N'Kynsey', 755, 755, 755)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2763, N'Erskine', N'Carmela', N'Chorley', N'Mariel', 756, 756, 756)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2764, N'Zarla', N'Toddie', N'Dreng', N'Thornhill', 757, 757, 757)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2765, N'Elicia', N'Anastasie', N'Schorah', N'Rudsdale', 758, 758, 758)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2766, N'Bebe', N'Darlene', N'Barrus', N'Bartosinski', 759, 759, 759)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2767, N'Garret', N'Henrietta', N'Marshland', N'Pegden', 760, 760, 760)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2768, N'Jamesy', N'Dayna', N'Tommei', N'Hyrons', 761, 761, 761)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2769, N'Danika', N'Tate', N'Roscrigg', N'Imlin', 762, 762, 762)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2770, N'Gina', N'Erinna', N'Senecaux', N'Robberts', 763, 763, 763)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2771, N'Sayre', N'Georgie', N'Pomphrett', N'Pavy', 764, 764, 764)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2772, N'Brigitta', N'Brinn', N'Le Huquet', N'Grunder', 765, 765, 765)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2773, N'Mae', N'Anders', N'Guite', N'Snoding', 766, 766, 766)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2774, N'Tommy', N'Christian', N'Comiam', N'Blythin', 767, 767, 767)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2775, N'Sauncho', N'Johannah', N'Demange', N'Balog', 768, 768, 768)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2776, N'Toinette', N'Hussein', N'Godbold', N'Hadden', 769, 769, 769)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2777, N'Baron', N'Shell', N'Balls', N'O''Docherty', 770, 770, 770)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2778, N'Marge', N'Lew', N'Mahaddie', N'Bolens', 771, 771, 771)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2779, N'Tabor', N'Rickie', N'Neath', N'MacCaughan', 772, 772, 772)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2780, N'Boyce', N'Tallie', N'Attwater', N'Gabotti', 773, 773, 773)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2781, N'Jourdain', N'Calli', N'Abbe', N'Jowett', 774, 774, 774)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2782, N'Leanna', N'Forbes', N'Brandrick', N'Reignould', 775, 775, 775)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2783, N'Keir', N'Tammara', N'Comolli', N'Stennings', 776, 776, 776)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2784, N'Georges', N'Brantley', N'Kensett', N'Kubasek', 777, 777, 777)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2785, N'Kermit', N'Wait', N'Marking', N'Carlick', 778, 778, 778)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2786, N'Ram', N'Gilbert', N'Dillinger', N'Amber', 779, 779, 779)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2787, N'Jana', N'Aidan', N'Catterson', N'Roblin', 780, 780, 780)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2788, N'Peggie', N'Tris', N'Szymanek', N'Daysh', 781, 781, 781)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2789, N'Leonardo', N'Ross', N'Plastow', N'Kernermann', 782, 782, 782)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2790, N'Valentin', N'Si', N'Letchmore', N'Castro', 783, 783, 783)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2791, N'Donny', N'Reggi', N'Iannello', N'Rutty', 784, 784, 784)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2792, N'Marrissa', N'Adda', N'Mildner', N'Jakuszewski', 785, 785, 785)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2793, N'Frasier', N'Raye', N'Siggery', N'Grafton', 786, 786, 786)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2794, N'Juli', N'Daria', N'Blumsom', N'O''Carney', 787, 787, 787)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2795, N'Ashlee', N'Cher', N'Radwell', N'Yoell', 788, 788, 788)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2796, N'Doy', N'Amby', N'Leaning', N'Yakunkin', 789, 789, 789)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2797, N'Davon', N'Georgena', N'Klaaasen', N'Featherstone', 790, 790, 790)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2798, N'Rosalia', N'Patsy', N'Wellbank', N'Murrey', 791, 791, 791)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2799, N'Antin', N'Verney', N'Battyll', N'Boon', 792, 792, 792)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2800, N'Elias', N'Jacky', N'Cancellieri', N'Gager', 793, 793, 793)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2801, N'Coop', N'Cherida', N'Thripp', N'O''Dunniom', 794, 794, 794)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2802, N'Nickolaus', N'Duncan', N'Dalbey', N'Pursey', 795, 795, 795)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2803, N'Doralynne', N'Ferdinande', N'Eddis', N'Joyner', 796, 796, 796)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2804, N'Nickola', N'Nelli', N'Marcham', N'Normanvell', 797, 797, 797)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2805, N'Francesco', N'Venita', N'Cominetti', N'Hellewell', 798, 798, 798)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2806, N'Muire', N'Cassandra', N'Pucknell', N'Diprose', 799, 799, 799)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2807, N'Lisa', N'Garland', N'Sivewright', N'Figura', 800, 800, 800)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2808, N'Andras', N'Lacey', N'Pahler', N'Jessope', 801, 801, 801)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2809, N'Lindsey', N'Angel', N'Lockley', N'Bradbury', 802, 802, 802)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2810, N'Ashleigh', N'Melitta', N'Hessel', N'Quernel', 803, 803, 803)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2811, N'Melisenda', N'Carol', N'Routham', N'Blinder', 804, 804, 804)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2812, N'Harley', N'Morgen', N'Whiskin', N'Flower', 805, 805, 805)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2813, N'Cristionna', N'Ripley', N'Hartington', N'Gruby', 806, 806, 806)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2814, N'Ruthe', N'Luelle', N'Samsin', N'Thurston', 807, 807, 807)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2815, N'Jacenta', N'Darbee', N'MacAfee', N'Purcell', 808, 808, 808)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2816, N'Lianna', N'Emmit', N'Giorgini', N'Gavrielli', 809, 809, 809)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2817, N'Aretha', N'Karlotta', N'Fishby', N'Mapowder', 810, 810, 810)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2818, N'Emmanuel', N'Wright', N'Templeton', N'Cicullo', 811, 811, 811)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2819, N'Meridith', N'Maynard', N'Mellody', N'Klement', 812, 812, 812)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2820, N'Owen', N'Lilyan', N'Hillin', N'Spittle', 813, 813, 813)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2821, N'Sean', N'Domenic', N'Lethbury', N'Ramel', 814, 814, 814)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2822, N'Dun', N'Evelin', N'Jahner', N'Blanket', 815, 815, 815)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2823, N'Patrizio', N'Reed', N'Orteu', N'Challicombe', 816, 816, 816)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2824, N'Idalia', N'Tommie', N'Sherston', N'Jacobsson', 817, 817, 817)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2825, N'Linn', N'Susana', N'Quiddington', N'Mourbey', 818, 818, 818)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2826, N'Fraser', N'Afton', N'Kreutzer', N'Allmark', 819, 819, 819)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2827, N'Golda', N'Maggy', N'Nail', N'Oxton', 820, 820, 820)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2828, N'Edgardo', N'Nertie', N'Bartelli', N'Frensche', 821, 821, 821)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2829, N'Aldis', N'Ingra', N'Blankau', N'Sandars', 822, 822, 822)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2830, N'Daisie', N'Lawrence', N'Littleover', N'Kyberd', 823, 823, 823)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2831, N'Shaylah', N'Joye', N'Digwood', N'Garnsworth', 824, 824, 824)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2832, N'Darby', N'Pearl', N'Churchill', N'Aveyard', 825, 825, 825)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2833, N'Dore', N'Ellen', N'Klosterman', N'Cockerell', 826, 826, 826)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2834, N'Shadow', N'Lauryn', N'McMylor', N'Kunneke', 827, 827, 827)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2835, N'Ian', N'Roselin', N'MacNish', N'Turpey', 828, 828, 828)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2836, N'Max', N'Maximo', N'Egdal', N'Thornham', 829, 829, 829)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2837, N'Denis', N'Linnea', N'Veysey', N'Chesworth', 830, 830, 830)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2838, N'Laird', N'Teodor', N'Pau', N'Alexsandrev', 831, 831, 831)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2839, N'Sherrie', N'Taite', N'Boorman', N'Colquyte', 832, 832, 832)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2840, N'Joellen', N'Kristan', N'Eldrid', N'Whimpenny', 833, 833, 833)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2841, N'Linda', N'Vale', N'Kaser', N'Tal', 834, 834, 834)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2842, N'Vite', N'Muire', N'Baldacchi', N'Maliffe', 835, 835, 835)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2843, N'Darsey', N'Guillema', N'Maystone', N'Dulwich', 836, 836, 836)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2844, N'Elset', N'Chrystal', N'Dadson', N'Defont', 837, 837, 837)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2845, N'Johannes', N'Dorothee', N'Iglesias', N'Jacobson', 838, 838, 838)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2846, N'Kelli', N'Janeen', N'Pindred', N'Winstone', 839, 839, 839)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2847, N'Delila', N'Karrie', N'Shorthill', N'Mulford', 840, 840, 840)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2848, N'Mar', N'Bard', N'Goatcher', N'Prettyman', 841, 841, 841)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2849, N'Mitch', N'Tripp', N'Castle', N'Smowton', 842, 842, 842)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2850, N'Chelsea', N'Nicky', N'Linnard', N'Mundell', 843, 843, 843)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2851, N'Antonius', N'Janie', N'Sitford', N'Sall', 844, 844, 844)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2852, N'Bobette', N'Noel', N'Langmead', N'Fitchett', 845, 845, 845)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2853, N'Araldo', N'Rainer', N'Cobon', N'St. Leger', 846, 846, 846)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2854, N'Cam', N'Debor', N'Andraud', N'Neicho', 847, 847, 847)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2855, N'Noreen', N'Alika', N'Ovey', N'Abden', 848, 848, 848)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2856, N'Bobbi', N'Dannie', N'Danelut', N'Rydeard', 849, 849, 849)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2857, N'Reeba', N'Greg', N'Hawket', N'Hill', 850, 850, 850)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2858, N'Seline', N'Bern', N'Josskoviz', N'Shillom', 851, 851, 851)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2859, N'Michale', N'Mel', N'Prazor', N'Gudgin', 852, 852, 852)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2860, N'Flossie', N'Nevin', N'Trewman', N'Collet', 853, 853, 853)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2861, N'Savina', N'Berton', N'Dicken', N'Plitz', 854, 854, 854)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2862, N'Brigid', N'Chase', N'Eckert', N'Dongall', 855, 855, 855)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2863, N'Bellina', N'Aymer', N'Djekic', N'covino', 856, 856, 856)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2864, N'Therine', N'Denny', N'Bosward', N'McAlroy', 857, 857, 857)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2865, N'Hollie', N'Nessy', N'Dobbs', N'Quan', 858, 858, 858)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2866, N'Stanislas', N'Joya', N'Quigg', N'Vickress', 859, 859, 859)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2867, N'Pavia', N'Cristian', N'Gilchriest', N'Weller', 860, 860, 860)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2868, N'Dionis', N'Hermione', N'Eliaz', N'Brimley', 861, 861, 861)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2869, N'Dell', N'Lawrence', N'Horry', N'Bromwich', 862, 862, 862)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2870, N'Else', N'Trudie', N'Sherrington', N'Winspire', 863, 863, 863)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2871, N'Phillie', N'Georgia', N'Prawle', N'Towler', 864, 864, 864)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2872, N'Sallyanne', N'Aurore', N'Lutman', N'Loudwell', 865, 865, 865)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2873, N'Veriee', N'Brant', N'Vernau', N'Agates', 866, 866, 866)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2874, N'Ariel', N'Stanford', N'Renshaw', N'Haestier', 867, 867, 867)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2875, N'Trudey', N'Jori', N'Pancoust', N'Pert', 868, 868, 868)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2876, N'Teddy', N'Hube', N'Brocklesby', N'Gear', 869, 869, 869)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2877, N'Leonie', N'Dona', N'Menlow', N'Hesey', 870, 870, 870)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2878, N'Genna', N'Upton', N'Okey', N'Blackway', 871, 871, 871)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2879, N'Delphinia', N'Frederik', N'Mattiello', N'Curedale', 872, 872, 872)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2880, N'Jaime', N'Dicky', N'Cogger', N'Arrol', 873, 873, 873)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2881, N'Darren', N'Jeni', N'Boyn', N'Nix', 874, 874, 874)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2882, N'Lisette', N'Tabbie', N'Samways', N'McKleod', 875, 875, 875)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2883, N'Paddy', N'Leeann', N'Brennans', N'Bracco', 876, 876, 876)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2884, N'Donovan', N'Jesse', N'Badby', N'Tarn', 877, 877, 877)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2885, N'Sayer', N'Clary', N'Toynbee', N'Sustin', 878, 878, 878)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2886, N'Essy', N'Mina', N'Bea', N'Almeida', 879, 879, 879)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2887, N'Anatola', N'Kinna', N'Di Pietro', N'Huntar', 880, 880, 880)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2888, N'Brok', N'Haroun', N'Luttger', N'Gierok', 881, 881, 881)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2889, N'Hieronymus', N'Huberto', N'Overy', N'Kilfeather', 882, 882, 882)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2890, N'Lia', N'Shelton', N'Wotherspoon', N'Hakeworth', 883, 883, 883)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2891, N'Broderick', N'Kalle', N'Jakubovicz', N'Mitchelmore', 884, 884, 884)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2892, N'Dolley', N'Bobine', N'Pomeroy', N'Scales', 885, 885, 885)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2893, N'Ana', N'Fredra', N'Every', N'Eddy', 886, 886, 886)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2894, N'Korney', N'Shaughn', N'Ruzek', N'Jeyes', 887, 887, 887)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2895, N'Solly', N'Charmain', N'Dyke', N'Gillice', 888, 888, 888)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2896, N'Benny', N'Shawna', N'Gaspard', N'Arnau', 889, 889, 889)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2897, N'Travus', N'Itch', N'Masser', N'Ripley', 890, 890, 890)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2898, N'Cassondra', N'Waly', N'Guard', N'Gunn', 891, 891, 891)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2899, N'Terrel', N'Hewe', N'Hamor', N'Minchin', 892, 892, 892)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2900, N'Vonnie', N'Sarajane', N'Midson', N'Goutcher', 893, 893, 893)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2901, N'Ilene', N'Mia', N'Wheaton', N'Winterton', 894, 894, 894)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2902, N'Petronella', N'Rica', N'Rudham', N'State', 895, 895, 895)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2903, N'Marris', N'Elbertine', N'Horder', N'Grimbaldeston', 896, 896, 896)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2904, N'Suzie', N'Maynord', N'Allain', N'Plane', 897, 897, 897)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2905, N'Avery', N'Dud', N'Iacobini', N'Lisett', 898, 898, 898)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2906, N'Rikki', N'Emlynne', N'Pond', N'Vamplew', 899, 899, 899)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2907, N'Lindsay', N'Lana', N'Bollam', N'Patrono', 900, 900, 900)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2908, N'Thekla', N'Peter', N'Whistlecroft', N'Sandwick', 901, 901, 901)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2909, N'Consuela', N'Marjorie', N'Poate', N'Dawid', 902, 902, 902)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2910, N'Lulita', N'Inger', N'Labden', N'Tarquini', 903, 903, 903)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2911, N'Archibaldo', N'Fritz', N'Tilio', N'Horley', 904, 904, 904)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2912, N'Becca', N'Harrison', N'Carnihan', N'Farragher', 905, 905, 905)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2913, N'Eloisa', N'Frankie', N'Hawford', N'Sterke', 906, 906, 906)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2914, N'Nettie', N'Phelia', N'Ghelardoni', N'Daice', 907, 907, 907)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2915, N'Sayer', N'Ginevra', N'Aitchison', N'Weagener', 908, 908, 908)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2916, N'Herold', N'Kerrin', N'Kemmis', N'Perl', 909, 909, 909)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2917, N'Coleen', N'Edithe', N'Paxton', N'Pitchford', 910, 910, 910)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2918, N'Chris', N'Friedrich', N'Birwhistle', N'Bromwich', 911, 911, 911)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2919, N'Horace', N'Margalit', N'Giacopelo', N'Longrigg', 912, 912, 912)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2920, N'Ninnette', N'Graeme', N'Langeley', N'Linbohm', 913, 913, 913)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2921, N'Ediva', N'Giorgi', N'Turneux', N'Sorensen', 914, 914, 914)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2922, N'Pierrette', N'Lois', N'Pietrasik', N'Vlasin', 915, 915, 915)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2923, N'Mano', N'Corine', N'Powdrell', N'Ughini', 916, 916, 916)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2924, N'Kirbee', N'Erhard', N'Lamp', N'Lyddiard', 917, 917, 917)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2925, N'Devan', N'Calla', N'Suero', N'Brace', 918, 918, 918)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2926, N'Herminia', N'Coralie', N'Palfreyman', N'Tongue', 919, 919, 919)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2927, N'Roanne', N'Bertram', N'Brigden', N'Saunper', 920, 920, 920)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2928, N'Lamont', N'Kristoffer', N'Annatt', N'Kingsmill', 921, 921, 921)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2929, N'Jo-anne', N'Dolf', N'Pourvoieur', N'Lowden', 922, 922, 922)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2930, N'Dmitri', N'Beverlee', N'Lawranson', N'Tatford', 923, 923, 923)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2931, N'Etan', N'Eberto', N'Gaishson', N'Rowland', 924, 924, 924)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2932, N'Cthrine', N'Marianne', N'Mattiazzo', N'Daldry', 925, 925, 925)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2933, N'Francis', N'Legra', N'Awin', N'Ribbon', 926, 926, 926)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2934, N'Louise', N'Harrie', N'Tofano', N'Norley', 927, 927, 927)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2935, N'Therine', N'Winston', N'Hanscombe', N'Pleaden', 928, 928, 928)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2936, N'Kerrie', N'Idell', N'Nuth', N'Fearby', 929, 929, 929)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2937, N'Helaine', N'Thain', N'Matts', N'Shermore', 930, 930, 930)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2938, N'Nollie', N'Godwin', N'Parratt', N'Godsafe', 931, 931, 931)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2939, N'Sandro', N'Dolley', N'Yeulet', N'Peat', 932, 932, 932)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2940, N'Filide', N'Noak', N'O''Scanlon', N'Robotham', 933, 933, 933)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2941, N'Giffer', N'Laurena', N'Suttaby', N'Butfield', 934, 934, 934)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2942, N'Jacquenette', N'Johny', N'Bleiman', N'Stoner', 935, 935, 935)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2943, N'Garrot', N'Gaylord', N'Glasgow', N'Hatliff', 936, 936, 936)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2944, N'Karin', N'Ario', N'Stother', N'Hotson', 937, 937, 937)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2945, N'Jaquelin', N'Barrie', N'Golston', N'Lumley', 938, 938, 938)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2946, N'Alfons', N'Estrellita', N'Mariot', N'Gottschalk', 939, 939, 939)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2947, N'Waverly', N'Beverie', N'Newsome', N'Sprigging', 940, 940, 940)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2948, N'Berni', N'Elyn', N'Clementi', N'Kirsopp', 941, 941, 941)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2949, N'Lorrayne', N'Winnie', N'Alcoran', N'Fairholme', 942, 942, 942)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2950, N'Alanah', N'Karlan', N'Harrigan', N'Cruess', 943, 943, 943)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2951, N'Cele', N'Kassey', N'Ferris', N'Skittreal', 944, 944, 944)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2952, N'Culver', N'Derward', N'Twinborough', N'Angrick', 945, 945, 945)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2953, N'Ninnette', N'Dillon', N'Gjerde', N'Motion', 946, 946, 946)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2954, N'Ruthe', N'Baxie', N'Paddeley', N'Krink', 947, 947, 947)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2955, N'Gerrie', N'Matti', N'McNelly', N'Everil', 948, 948, 948)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2956, N'Boyce', N'Sibelle', N'Baud', N'Whitear', 949, 949, 949)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2957, N'Tatiania', N'Leroy', N'Dyton', N'Flescher', 950, 950, 950)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2958, N'Abigael', N'Yorke', N'Klain', N'Huie', 951, 951, 951)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2959, N'Shannen', N'Myrle', N'Keune', N'Tonna', 952, 952, 952)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2960, N'Philip', N'Lily', N'Arboine', N'Noller', 953, 953, 953)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2961, N'Humbert', N'Heriberto', N'Szymanzyk', N'Dyott', 954, 954, 954)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2962, N'Chester', N'Rochester', N'Easterling', N'Dewane', 955, 955, 955)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2963, N'Arty', N'Lowrance', N'Keyte', N'Swaton', 956, 956, 956)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2964, N'Kalil', N'Cyrill', N'McEniry', N'Neward', 957, 957, 957)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2965, N'Carlotta', N'Ivette', N'Antley', N'Baxendale', 958, 958, 958)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2966, N'Davide', N'Bradan', N'Dalgarnocht', N'Northin', 959, 959, 959)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2967, N'Mireielle', N'Farlay', N'Screach', N'Paviour', 960, 960, 960)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2968, N'Humfrid', N'Anita', N'Konzelmann', N'Le Sieur', 961, 961, 961)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2969, N'Angie', N'Gerard', N'Walkden', N'McCrie', 962, 962, 962)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2970, N'Heddie', N'Binky', N'Hunnisett', N'Surgener', 963, 963, 963)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2971, N'Peta', N'Brody', N'Kock', N'Frick', 964, 964, 964)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2972, N'Kendra', N'Wilt', N'O''Ferris', N'Roadnight', 965, 965, 965)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2973, N'Darb', N'Giacinta', N'Backshaw', N'Redwall', 966, 966, 966)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2974, N'Kathye', N'Gabie', N'Fearneley', N'Kiraly', 967, 967, 967)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2975, N'Aretha', N'Trueman', N'Bunney', N'Fogden', 968, 968, 968)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2976, N'Alexander', N'Gran', N'Quade', N'Bourgourd', 969, 969, 969)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2977, N'Nobie', N'Fletcher', N'Ciciura', N'Kynd', 970, 970, 970)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2978, N'Constance', N'Tracy', N'Corkell', N'Ivakhno', 971, 971, 971)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2979, N'Marcela', N'Aurlie', N'Tethacot', N'Billingham', 972, 972, 972)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2980, N'Bambi', N'Burty', N'Honisch', N'Philimore', 973, 973, 973)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2981, N'Shirl', N'Nikki', N'Huish', N'Cordelette', 974, 974, 974)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2982, N'Gavin', N'Constantina', N'Gleader', N'Nelhams', 975, 975, 975)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2983, N'Ignace', N'Saundra', N'Pudding', N'Musk', 976, 976, 976)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2984, N'Augie', N'Nico', N'Fleay', N'Kruger', 977, 977, 977)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2985, N'Roby', N'Cherin', N'Le Quesne', N'Clayhill', 978, 978, 978)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2986, N'Moria', N'Leanora', N'Eichmann', N'Mottram', 979, 979, 979)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2987, N'Berty', N'Dur', N'Gillett', N'Peagram', 980, 980, 980)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2988, N'Rollie', N'Siouxie', N'Farrah', N'Legg', 981, 981, 981)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2989, N'Kelsy', N'Elset', N'Turbefield', N'Aldington', 982, 982, 982)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2990, N'Elihu', N'Annabela', N'Jee', N'Kirsop', 983, 983, 983)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2991, N'Shirlee', N'Larina', N'Fleeming', N'Picton', 984, 984, 984)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2992, N'Amitie', N'Erl', N'Gingold', N'Andraud', 985, 985, 985)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2993, N'Ekaterina', N'Mozes', N'Bestman', N'Deeney', 986, 986, 986)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2994, N'Annora', N'Xenia', N'Slatford', N'Pleming', 987, 987, 987)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2995, N'Tessi', N'Georgeanne', N'Brosnan', N'Whacket', 988, 988, 988)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2996, N'Haley', N'Renata', N'Pawellek', N'Martinon', 989, 989, 989)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2997, N'Tallie', N'Bailey', N'Gerardeaux', N'McIlrath', 990, 990, 990)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2998, N'Merwyn', N'Nerte', N'Worge', N'Petrol', 991, 991, 991)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (2999, N'Tallia', N'Ronalda', N'Gainforth', N'Fraczak', 992, 992, 992)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (3000, N'Wilton', N'Karilynn', N'Zipsell', N'Brewer', 993, 993, 993)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (3001, N'Theresita', N'Enrica', N'Pembry', N'Calltone', 994, 994, 994)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (3002, N'Dalt', N'Chrysler', N'Eskrigg', N'Hansill', 995, 995, 995)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (3003, N'Keane', N'Thom', N'Tailour', N'Lindenbluth', 996, 996, 996)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (3004, N'Jemie', N'Remus', N'Pie', N'Petyakov', 997, 997, 997)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (3005, N'Kellby', N'Salome', N'Penticost', N'Scranedge', 998, 998, 998)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (3006, N'Peggy', N'Wit', N'Stennings', N'Cammish', 999, 999, 999)
GO
INSERT [dbo].[Alumno] ([id], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Carnet], [Celular], [TelefonoCasa]) VALUES (3007, N'Bourke', N'Leese', N'Slainey', N'Halston', 1000, 1000, 1000)
GO
SET IDENTITY_INSERT [dbo].[Alumno] OFF
GO
USE [master]
GO
ALTER DATABASE [PrograIII2023COPY] SET  READ_WRITE 
GO
