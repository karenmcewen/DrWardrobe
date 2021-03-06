USE [master]
GO
/****** Object:  Database [DoctorsWardrobe]    Script Date: 11/7/2017 3:48:14 PM ******/
CREATE DATABASE [DoctorsWardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DoctorsWardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DoctorsWardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DoctorsWardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DoctorsWardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DoctorsWardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoctorsWardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoctorsWardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DoctorsWardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DoctorsWardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DoctorsWardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DoctorsWardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DoctorsWardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [DoctorsWardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DoctorsWardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DoctorsWardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DoctorsWardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DoctorsWardrobe]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 11/7/2017 3:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
	[AccessoryPhotoURL] [nvarchar](max) NULL,
	[AccessoryType] [nvarchar](50) NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottom]    Script Date: 11/7/2017 3:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottom](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[BottomPhotoURL] [nvarchar](max) NULL,
	[BottomType] [nvarchar](50) NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_Bottom] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color]    Script Date: 11/7/2017 3:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[ColorFamily] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NeckWear]    Script Date: 11/7/2017 3:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NeckWear](
	[NeckWearID] [int] IDENTITY(1,1) NOT NULL,
	[NeckWearName] [nvarchar](50) NOT NULL,
	[NeckWearPhotoURL] [nvarchar](max) NULL,
	[NeckWearType] [nvarchar](50) NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_NeckWear] PRIMARY KEY CLUSTERED 
(
	[NeckWearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occasion]    Script Date: 11/7/2017 3:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occasion](
	[OccasionID] [int] IDENTITY(1,1) NOT NULL,
	[OccasionType] [nchar](10) NULL,
 CONSTRAINT [PK_Occasion] PRIMARY KEY CLUSTERED 
(
	[OccasionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OuterWear]    Script Date: 11/7/2017 3:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OuterWear](
	[OuterWearID] [int] IDENTITY(1,1) NOT NULL,
	[OuterWearName] [nvarchar](50) NOT NULL,
	[OuterWearPhotoURL] [nvarchar](max) NULL,
	[OuterWearType] [nvarchar](50) NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_OuterWear] PRIMARY KEY CLUSTERED 
(
	[OuterWearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 11/7/2017 3:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfit](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NULL,
	[NeckWearID] [int] NULL,
	[OuterWearID] [int] NULL,
	[AccessoryID] [int] NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Season]    Script Date: 11/7/2017 3:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Top]    Script Date: 11/7/2017 3:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[TopPhotoURL] [nvarchar](max) NULL,
	[TopType] [nvarchar](50) NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_Top] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessory] ON 

INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhotoURL], [AccessoryType], [ColorID], [OccasionID], [SeasonID]) VALUES (4, N'Glasses - 3D', N'~/images/3d_glasses.jpg', N'Glasses', 5, 2, 4)
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhotoURL], [AccessoryType], [ColorID], [OccasionID], [SeasonID]) VALUES (5, N'Fez', N'~/images/fez.jpg', N'Hat', 7, 1, 3)
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhotoURL], [AccessoryType], [ColorID], [OccasionID], [SeasonID]) VALUES (6, N'Floppy hat', N'not available', N'Hat', 3, 2, 6)
SET IDENTITY_INSERT [dbo].[Accessory] OFF
SET IDENTITY_INSERT [dbo].[Bottom] ON 

INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhotoURL], [BottomType], [ColorID], [OccasionID], [SeasonID]) VALUES (1, N'Brown Pinstripe Trousers', N'~/Images/10_bottom_brown.jpg', N'Trousers', 3, 1, 3)
INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhotoURL], [BottomType], [ColorID], [OccasionID], [SeasonID]) VALUES (2, N'Kilt', N'not available', N'Kilt', 7, 1, 3)
INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhotoURL], [BottomType], [ColorID], [OccasionID], [SeasonID]) VALUES (3, N'Blue Pinstripe Trousers', N'~/Images/10_bottom_blue.jpg', N'Trousers', 2, 1, 3)
SET IDENTITY_INSERT [dbo].[Bottom] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ColorID], [ColorFamily]) VALUES (1, N'Black     ')
INSERT [dbo].[Color] ([ColorID], [ColorFamily]) VALUES (2, N'Blue      ')
INSERT [dbo].[Color] ([ColorID], [ColorFamily]) VALUES (3, N'Brown     ')
INSERT [dbo].[Color] ([ColorID], [ColorFamily]) VALUES (4, N'Green     ')
INSERT [dbo].[Color] ([ColorID], [ColorFamily]) VALUES (5, N'Multicolor')
INSERT [dbo].[Color] ([ColorID], [ColorFamily]) VALUES (6, N'Orange    ')
INSERT [dbo].[Color] ([ColorID], [ColorFamily]) VALUES (7, N'Red       ')
INSERT [dbo].[Color] ([ColorID], [ColorFamily]) VALUES (8, N'Silver    ')
INSERT [dbo].[Color] ([ColorID], [ColorFamily]) VALUES (9, N'White     ')
INSERT [dbo].[Color] ([ColorID], [ColorFamily]) VALUES (10, N'Yellow    ')
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[NeckWear] ON 

INSERT [dbo].[NeckWear] ([NeckWearID], [NeckWearName], [NeckWearPhotoURL], [NeckWearType], [ColorID], [OccasionID], [SeasonID]) VALUES (2, N'Black Bow Tie', N'~/images/bowtie.jpg', N'Bow Tie', 7, 1, 3)
INSERT [dbo].[NeckWear] ([NeckWearID], [NeckWearName], [NeckWearPhotoURL], [NeckWearType], [ColorID], [OccasionID], [SeasonID]) VALUES (3, N'Striped Scarf', N'~/images/scarf.jpg', N'Scarf', 5, 2, 6)
SET IDENTITY_INSERT [dbo].[NeckWear] OFF
SET IDENTITY_INSERT [dbo].[Occasion] ON 

INSERT [dbo].[Occasion] ([OccasionID], [OccasionType]) VALUES (1, N'Formal    ')
INSERT [dbo].[Occasion] ([OccasionID], [OccasionType]) VALUES (2, N'Casual    ')
INSERT [dbo].[Occasion] ([OccasionID], [OccasionType]) VALUES (3, N'NoOxygen  ')
SET IDENTITY_INSERT [dbo].[Occasion] OFF
SET IDENTITY_INSERT [dbo].[OuterWear] ON 

INSERT [dbo].[OuterWear] ([OuterWearID], [OuterWearName], [OuterWearPhotoURL], [OuterWearType], [ColorID], [OccasionID], [SeasonID]) VALUES (1, N'Black Velvet Coat with Red Lining', N'~/images/12_coat.jpg', N'Long Coat', 1, 1, 1)
INSERT [dbo].[OuterWear] ([OuterWearID], [OuterWearName], [OuterWearPhotoURL], [OuterWearType], [ColorID], [OccasionID], [SeasonID]) VALUES (2, N'Long Brown Coat', N'~/Images/coat10.jpg', N'Long Coat', 3, 1, 3)
INSERT [dbo].[OuterWear] ([OuterWearID], [OuterWearName], [OuterWearPhotoURL], [OuterWearType], [ColorID], [OccasionID], [SeasonID]) VALUES (3, N'Space Suit', N'not available', N'Utility', 6, 3, 4)
SET IDENTITY_INSERT [dbo].[OuterWear] OFF
SET IDENTITY_INSERT [dbo].[Outfit] ON 

INSERT [dbo].[Outfit] ([OutfitID], [TopID], [BottomID], [NeckWearID], [OuterWearID], [AccessoryID]) VALUES (1, 1, 3, 2, 2, 4)
INSERT [dbo].[Outfit] ([OutfitID], [TopID], [BottomID], [NeckWearID], [OuterWearID], [AccessoryID]) VALUES (2, 2, 2, 3, 1, 5)
SET IDENTITY_INSERT [dbo].[Outfit] OFF
SET IDENTITY_INSERT [dbo].[Season] ON 

INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (1, N'winter    ')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (2, N'fall      ')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (3, N'Earth     ')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (4, N'Space     ')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (5, N'Hot Planet')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (6, N'Ice Planet')
SET IDENTITY_INSERT [dbo].[Season] OFF
SET IDENTITY_INSERT [dbo].[Top] ON 

INSERT [dbo].[Top] ([TopID], [TopName], [TopPhotoURL], [TopType], [ColorID], [OccasionID], [SeasonID]) VALUES (1, N'Blue Suit Jacket with Collared Shirt', N'~/Images/10_top_blue.jpg', N'Suit Jacket', 1, 1, 1)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhotoURL], [TopType], [ColorID], [OccasionID], [SeasonID]) VALUES (2, N'Brown Tweed ', N'~/Images/11_jacket_tweed.jpg', N'Suit Jacket', 3, 1, 3)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhotoURL], [TopType], [ColorID], [OccasionID], [SeasonID]) VALUES (3, N'Brown Pinstripe Suit Jacket with Collared Shirt', N'~/Images/10_top_brown.jpg', N'Suit Jacket', 3, 2, 3)
SET IDENTITY_INSERT [dbo].[Top] OFF
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_Color]
GO
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_Occasion]
GO
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_Season]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Color]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Occasion]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Season]
GO
ALTER TABLE [dbo].[NeckWear]  WITH CHECK ADD  CONSTRAINT [FK_NeckWear_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[NeckWear] CHECK CONSTRAINT [FK_NeckWear_Color]
GO
ALTER TABLE [dbo].[NeckWear]  WITH CHECK ADD  CONSTRAINT [FK_NeckWear_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[NeckWear] CHECK CONSTRAINT [FK_NeckWear_Occasion]
GO
ALTER TABLE [dbo].[NeckWear]  WITH CHECK ADD  CONSTRAINT [FK_NeckWear_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[NeckWear] CHECK CONSTRAINT [FK_NeckWear_Season]
GO
ALTER TABLE [dbo].[OuterWear]  WITH CHECK ADD  CONSTRAINT [FK_OuterWear_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[OuterWear] CHECK CONSTRAINT [FK_OuterWear_Color]
GO
ALTER TABLE [dbo].[OuterWear]  WITH CHECK ADD  CONSTRAINT [FK_OuterWear_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[OuterWear] CHECK CONSTRAINT [FK_OuterWear_Occasion]
GO
ALTER TABLE [dbo].[OuterWear]  WITH CHECK ADD  CONSTRAINT [FK_OuterWear_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[OuterWear] CHECK CONSTRAINT [FK_OuterWear_Season]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Accessory] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessory] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Accessory]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bottom] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottom] ([BottomID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bottom]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_NeckWear] FOREIGN KEY([NeckWearID])
REFERENCES [dbo].[NeckWear] ([NeckWearID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_NeckWear]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_OuterWear] FOREIGN KEY([OuterWearID])
REFERENCES [dbo].[OuterWear] ([OuterWearID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_OuterWear]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Top] FOREIGN KEY([TopID])
REFERENCES [dbo].[Top] ([TopID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Top]
GO
ALTER TABLE [dbo].[Top]  WITH CHECK ADD  CONSTRAINT [FK_Top_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Top] CHECK CONSTRAINT [FK_Top_Color]
GO
ALTER TABLE [dbo].[Top]  WITH CHECK ADD  CONSTRAINT [FK_Top_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Top] CHECK CONSTRAINT [FK_Top_Occasion]
GO
ALTER TABLE [dbo].[Top]  WITH CHECK ADD  CONSTRAINT [FK_Top_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Top] CHECK CONSTRAINT [FK_Top_Season]
GO
USE [master]
GO
ALTER DATABASE [DoctorsWardrobe] SET  READ_WRITE 
GO
