USE [master]
GO
/****** Object:  Database [webdev-cinema]    Script Date: 10/09/2017 4:20:29 PM ******/
CREATE DATABASE [webdev-cinema]
GO
ALTER DATABASE [webdev-cinema] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webdev-cinema].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webdev-cinema] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [webdev-cinema] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [webdev-cinema] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [webdev-cinema] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [webdev-cinema] SET ARITHABORT OFF 
GO
ALTER DATABASE [webdev-cinema] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [webdev-cinema] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [webdev-cinema] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [webdev-cinema] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [webdev-cinema] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [webdev-cinema] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [webdev-cinema] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [webdev-cinema] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [webdev-cinema] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [webdev-cinema] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [webdev-cinema] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [webdev-cinema] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [webdev-cinema] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [webdev-cinema] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [webdev-cinema] SET  MULTI_USER 
GO
ALTER DATABASE [webdev-cinema] SET DB_CHAINING OFF 
GO
ALTER DATABASE [webdev-cinema] SET ENCRYPTION ON
GO
ALTER DATABASE [webdev-cinema] SET QUERY_STORE = ON
GO
ALTER DATABASE [webdev-cinema] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 7), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 10, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO)
GO
USE [webdev-cinema]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [webdev-cinema]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/09/2017 4:20:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/09/2017 4:20:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/09/2017 4:20:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/09/2017 4:20:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/09/2017 4:20:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/09/2017 4:20:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/09/2017 4:20:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/09/2017 4:20:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[Cineplex]    Script Date: 10/09/2017 4:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cineplex](
	[CineplexID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[ShortDescription] [nvarchar](max) NOT NULL,
	[LongDescription] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[CineplexID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[CineplexMovie]    Script Date: 10/09/2017 4:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CineplexMovie](
	[CineplexID] [int] NOT NULL,
	[MovieID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CineplexID] ASC,
	[MovieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[Enquiry]    Script Date: 10/09/2017 4:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enquiry](
	[EnquiryID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EnquiryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 10/09/2017 4:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[MovieID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ShortDescription] [nvarchar](max) NOT NULL,
	[LongDescription] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Price] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[MovieComingSoon]    Script Date: 10/09/2017 4:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieComingSoon](
	[MovieComingSoonID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ShortDescription] [nvarchar](max) NOT NULL,
	[LongDescription] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MovieComingSoonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 10/09/2017 4:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieId] [int] NULL,
	[MovieLogo] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Director] [nvarchar](255) NULL,
	[MainCast] [nvarchar](255) NULL,
	[Classification] [nvarchar](255) NULL,
	[ReleaseDate] [nvarchar](255) NULL,
	[RunningTime] [nvarchar](255) NULL
)
GO
/****** Object:  Table [dbo].[MoviesRunning]    Script Date: 10/09/2017 4:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoviesRunning](
	[CineplexID] [int] NOT NULL,
	[MovieID] [int] NOT NULL,
	[TimeRunning] [time](7) NOT NULL,
	[BookingCapacity] [int] NOT NULL,
	[BookedCapacity] [int] NOT NULL
)
GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 10/09/2017 4:20:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sessions](
	[SessionID] [int] NOT NULL,
	[CineplexID] [int] NOT NULL,
	[MovieID] [int] NOT NULL,
	[TimeRunning] [time](7) NULL,
	[BookingCapacity] [float] NOT NULL,
	[BookedCapacity] [float] NOT NULL,
	[BookedSeats] [nvarchar](255) NULL
)
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'1.0.1')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Facebook', N'10214179576709183', NULL, N'115baebb-8111-4f45-909c-bc2eb8020350')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'115baebb-8111-4f45-909c-bc2eb8020350', 0, N'9232d53c-45e5-4703-ae95-b1313948b2d8', N'pavilion.vps@gmail.com', 0, 1, NULL, N'PAVILION.VPS@GMAIL.COM', N'PAVILION.VPS@GMAIL.COM', NULL, NULL, 0, N'0bf34ffd-32fe-4f91-bf77-1af6bf173751', 0, N'pavilion.vps@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'9add3de7-13d5-4ce0-a3b6-66efd9693251', 0, N'a1b7d1d6-1ce5-4721-96da-72eb1c36c412', N'jonathan@det.io', 0, 1, NULL, N'JONATHAN@DET.IO', N'JONATHAN@DET.IO', N'AQAAAAEAACcQAAAAEA/N/bp4be00uph4gunk9RXCZ4HhGknddZQlFcSyxcEhLnjpSHJPOpHgkbm1sAudlw==', NULL, 0, N'4aef9d81-9edd-41c4-9eaf-a8514188f4a4', 0, N'jonathan@det.io')
SET IDENTITY_INSERT [dbo].[Cineplex] ON 

INSERT [dbo].[Cineplex] ([CineplexID], [Location], [ShortDescription], [LongDescription], [Address]) VALUES (1, N'Melbourne CBD
', N'CinimaPlex Melbourne Central is located on level 3 in the Melbourne Central shopping precinct.  It boasts state of the art facilities, unique function spaces and an exclusive premium offering. 
', N'Our Melbourne Central Location includes one exclusive theatre screen allowing us to serve 20 People per session, our movies range from the latest flicks to the most popular. We strive to offer an outstanding service to all of our customers.
', N'Level 3, 211 La Trobe St, Melbourne VIC 3000
')
INSERT [dbo].[Cineplex] ([CineplexID], [Location], [ShortDescription], [LongDescription], [Address]) VALUES (2, N'Phrahran
', N'CinemaPlex Prahran offers our top of the line experience on cinemas, including an outstanding theatre with state of the art facilities. You can enjoy great events including a private bar complete with Cocktail & Reserve Wine lists. Our events also include a great wide menu selection to give your appetite a fix.
', N'Our Phrahran location is located on the iconic Pan Central Shopping Centre, located at: 
325 Chapel St, Prahran. Our Phrahran location includes one exclusive theatre screen allowing us to serve 20 People per session, our movies range from the latest flicks to the most popular. We strive to offer an outstanding service to all of our customers.', N'Level 2, 325 Chapel St, Prahran VIC 3181
')
INSERT [dbo].[Cineplex] ([CineplexID], [Location], [ShortDescription], [LongDescription], [Address]) VALUES (3, N'St Kilda
', N'CinemaPlex St Kilda offers a great experience for anyone to enjoy located at the wonderful Acland Shopping Centre, St Kilda includes a great premium experience for all families and individuals. 
', N'Our St Kilda Location is located nearby a tram allowing you to easily make the commute and includes a private event venue for corporate gatherings & includes one exclusive theatre screen allowing us to serve 20 People per session, our movies range from the latest flicks to the most popular. We strive to offer an outstanding service to all of our customers.
', N'Level 2, 181 Barkly St, St Kilda VIC 3182
')
INSERT [dbo].[Cineplex] ([CineplexID], [Location], [ShortDescription], [LongDescription], [Address]) VALUES (4, N'Frankston
', N'CinimaPlex Frankston offers a great experience for anyone looking for the latest in Cinema Technology, our theatre utilizes IMAX''s revolutionary projection technology to deliver crystal clear digital images that are built to impress. Our Frankston location is located at 21 Wells Street, Frankston.
', N'Our Frankston location includes one exclusive theatre screen allowing us to serve 20 People per session, our movies range from the latest flicks to the most popular. We strive to offer an outstanding service to all of our customers.
', N' 21 Wells Street, Frankston, VIC, 3199
')
INSERT [dbo].[Cineplex] ([CineplexID], [Location], [ShortDescription], [LongDescription], [Address]) VALUES (5, N'Forest Hill
', N'CinemaPlex Forest Hill offers a great experience for anyone looking for the latest in Cinema Technology, our theatres are designed to provide the best luxurious experience you can hope for.
', N'Our Forest Hill Location includes one exclusive theatre screen allowing us to serve 20 People per session, our movies range from the latest flicks to the most popular. We strive to offer an outstanding service to all of our customers.
', N'Cnr Mahoneys Rd & Canterbury Rd, Forest Hill, VIC, 3131
')
SET IDENTITY_INSERT [dbo].[Cineplex] OFF
INSERT [dbo].[CineplexMovie] ([CineplexID], [MovieID]) VALUES (1, 1)
INSERT [dbo].[CineplexMovie] ([CineplexID], [MovieID]) VALUES (1, 2)
INSERT [dbo].[CineplexMovie] ([CineplexID], [MovieID]) VALUES (1, 3)
INSERT [dbo].[CineplexMovie] ([CineplexID], [MovieID]) VALUES (2, 1)
INSERT [dbo].[CineplexMovie] ([CineplexID], [MovieID]) VALUES (2, 2)
INSERT [dbo].[CineplexMovie] ([CineplexID], [MovieID]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[Movie] ON 

INSERT [dbo].[Movie] ([MovieID], [Title], [ShortDescription], [LongDescription], [ImageUrl], [Price]) VALUES (1, N'The Matrix', N'Short description...', N'Long description...', N'~/Images/TheMatrix.png', 10.0000)
INSERT [dbo].[Movie] ([MovieID], [Title], [ShortDescription], [LongDescription], [ImageUrl], [Price]) VALUES (2, N'The Matrix Reloaded', N'Short description...', N'Long description...', N'~/Images/TheMatrixReloaded.png', 15.0000)
INSERT [dbo].[Movie] ([MovieID], [Title], [ShortDescription], [LongDescription], [ImageUrl], [Price]) VALUES (3, N'The Matrix Revolution', N'Short description...', N'Long description...', N'~/Images/TheMatrixRevolution.png', 20.0000)
SET IDENTITY_INSERT [dbo].[Movie] OFF
SET IDENTITY_INSERT [dbo].[MovieComingSoon] ON 

INSERT [dbo].[MovieComingSoon] ([MovieComingSoonID], [Title], [ShortDescription], [LongDescription], [ImageUrl]) VALUES (1, N'ASP.NET MVC 101', N'Short description...', N'Long description...', N'~/Images/MovieComingSoon.png')
INSERT [dbo].[MovieComingSoon] ([MovieComingSoonID], [Title], [ShortDescription], [LongDescription], [ImageUrl]) VALUES (2, N'WebForms Legacy', N'Short description...', N'Long description...', N'~/Images/MovieComingSoon.png')
SET IDENTITY_INSERT [dbo].[MovieComingSoon] OFF
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (1, N'/images/posters/a-monster-calls-movie.jpg?w=140&h=208', N'A Monster Calls', N'Conor (Lewis MacDougall) is dealing with far more than other boys his age. His mother (Felicity Jones) is ill, he has little in common with his imperious grandmother (Sigourney Weaver), and he is the target of bullies at school. Then one night, Conor summons an unlikely ally: an ancient 40-foot-high tree monster (voiced by Liam Neeson) who spirits him away to a dark and magical world where stories come to life. Transporting us with tales of courage, loss and hope, A Monster Calls is the spectacular new film from acclaimed director J. A. Bayona (The Impossible, The Orphanage).', N'J.A. Bayona', N'Liam Neeson, Sigourney Weaver, Felicity Jones, Toby Kebbell, Geraldine Chaplin', N'PG ', N'Thursday, 27 July 2017', N'108 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (2, N'/images/posters/all-eyez-on-me-movie.jpg?w=140&h=208', N'All Eyez on Me', N'A chronicle of the life of rapper Tupac Shakur.', N'Benny Boom, Danai Gurira', N'Demetrius Shipp Jr., Kat Graham, Annie Ilonzeh, Dominic L. Santana', N'MA15+ ', N'Thursday, 15 June 2017', N'139 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (3, N'/images/posters/annabelle-creation-movie.jpg?w=140&h=208', N'Annabelle Creation', N'Several years after the tragic death of their little girl, a dollmaker and his wife welcome a nun and several girls from a shuttered orphanage into their home, soon becoming the target of the dollmaker''s possessed creation, Annabelle.', N'David F. Sandberg', N'Javier Botet, Miranda Otto, Alicia Vela-Bailey, Stephanie Sigman', N'MA15+ ', N'Thursday, 10 August 2017', N'109 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (4, N'/images/posters/atomic-blonde.jpg?w=140&h=208', N'Atomic Blonde', N'The crown jewel of Her Majesty''s Secret Intelligence Service, Agent Lorraine Broughton (Theron) is equal parts spycraft, sensuality and savagery, willing to deploy any of her skills to stay alive on her impossible mission. Sent alone into Berlin to deliver a priceless dossier out of the destabilized city, she partners with embedded station chief David Percival (James McAvoy) to navigate her way through the deadliest game of spies.', N'David Leitch', N'John Goodman, Charlize Theron, James McAvoy, Sofia Boutella', N'MA15+', N'Thursday, 3 August 2017', N'115 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (5, N'/images/posters/baby-driver-movie-v3.jpg?w=140&h=208', N'Baby Driver', N'A talented, young getaway driver (Ansel Elgort) relies on the beat of his personal soundtrack to be the best in the game. When he meets the girl of his dreams (Lily James), Baby sees a chance to ditch his criminal life and make a clean getaway. But after being coerced into working for a crime boss (Kevin Spacey), he must face the music when a doomed heist threatens his life, love and freedom.', N'Edgar Wright', N'Kevin Spacey, Jamie Foxx, Jon Hamm, Jon Bernthal, Lily James', N'MA15+', N'Thursday, 13 July 2017', N'113 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (6, N'/images/posters/battle-of-the-sexes-movie.jpg?w=140&h=208', N'Battle of the Sexes', N'The true story of the 1973 tennis match between World number one Billie Jean King and ex-champ and serial hustler Bobby Riggs.', N'Jonathan Dayton, Valerie Faris', N'Emma Stone, Steve Carell, Sarah Silverman, Jessica McNamee', N'CTC', N'Thursday, 28 September 2017', N'121 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (7, N'/images/posters/cars-3-movie.jpg?w=140&h=208', N'Cars 3 2D', N'Blindsided by a new generation of blazing-fast racers, the legendary Lightning McQueen (voice of Owen Wilson) is suddenly pushed out of the sport he loves. To get back in the game, he will need the help of Cruz Ramirez, an eager young race technician with her own plan to win, plus inspiration from the late Fabulous Hudson Hornet and a few unexpected turns. Proving that #95 isn''t through yet will test the heart of a champion on Piston Cup Racing''s biggest stage!', N'Brian Fee', N'Owen Wilson, Bonnie Hunt, Armie Hammer, Tony Shalhoub', N'G ', N'Thursday, 22 June 2017', N'109 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (8, N'/images/posters/churchill.jpg?w=140&h=208', N'Churchill', N'June 1944. Allied Forces stand on the brink: a massive army is secretly assembled on the south coast of Britain, poised to re-take Nazi-occupied Europe. One man stands in their way: Winston Churchill.
 Behind the iconic figure and rousing speeches: a man who has faced political ridicule, military failure and a speech impediment. An impulsive, sometimes bullying personality - fearful, obsessive and hurting.
 Fearful of repeating, on his disastrous command, the mass slaughter of 1915, when hundreds of thousands of young men were cut down on the beaches of Gallipoli.
 Obsessed with fulfilling historical greatness: his destiny.
 Exhausted by years of war and plagued by depression, Churchill is a shadow of the hero who has resisted Hitler''s Blitzkrieg. Should the D-Day landings fail, he is terrified he''ll be remembered as an architect of carnage.
 Political opponents sharpen their knives. General Eisenhower and Field Marshal Montgomery are increasingly frustrated by Churchill''s attempts to stop the invasion. King George VI must intervene. Only the support of Churchill''s brilliant, yet exasperated wife Clementine can halt the Prime Minister''s physical and mental collapse.
 The untold story of Britain''s most celebrated leader, uncovering the true nature of Churchill''s herculean war-time status and his vital relationship with "Clemmie" - his backbone and total confidant.the love that inspired him to greatness.', N'Jonathan Teplitzky', N'Ella Purnell, Brian Cox, Miranda Richardson', N'M ', N'Thursday, 8 June 2017', N'105 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (9, N'/images/posters/despicable-me-3-key-art.jpg?w=140&h=208', N'Despicable Me 3 2D', N'Balthazar Bratt, a child star from the 1980s, hatches a scheme for world domination.', N'Kyle Balda, Pierre Coffin, Eric Guillon', N'Steve Carell, Kristen Wiig, Russell Brand, Trey Parker, Miranda Cosgrove', N'PG', N'Thursday, 15 June 2017', N'90 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (10, N'/images/posters/diary-of-a-wimpy-kid-the-long-haul.jpg?w=140&h=208', N'Diary of a Wimpy Kid: The Long H...', N'Greg convinces his family to take a road trip to attend his great grandmother''s 90th birthday as a cover for what he really wants: to attend a nearby gamer convention. Unsurprisingly, things do not go according to plan and Heffley family antics ensue.', N'David Bowers', N'Alicia Silverstone, Tom Everett Scott, Jason Drucker, Charlie Wright', N'PG ', N'Thursday, 29 June 2017', N'91 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (11, N'/images/posters/dunkirk-movie-art.jpg?w=140&h=208', N'Dunkirk', N'Miraculous evacuation of Allied soldiers from Belgium, Britain and France, who were cut off and surrounded by the German army from the beaches and harbor of Dunkirk, France, between May 27- June 04, 1940, during Battle of France in World War II.', N'Christopher Nolan', N'Tom Hardy, Cillian Murphy, Kenneth Branagh, Mark Rylance, Harry Styles', N'M ', N'Thursday, 20 July 2017', N'106 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (12, N'/images/posters/it-comes-at-night-movie.jpg?w=140&h=208', N'It Comes At Night', N'Secure within a desolate home as an unnatural threat terrorizes the world, a man has established a tenuous domestic order with his wife and son, but this will soon be put to test when a desperate young family arrives seeking refuge.', N'Trey Edward Shults', N'Joel Edgerton, Carmen Ejogo, Kelvin Harrison Jr.', N'MA15+ ', N'Thursday, 6 July 2017', N'92 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (13, N'/images/posters/munna-michael.jpg?w=140&h=208', N'Munna Michael', N'A young man, tries to follow the footsteps of his idol, The King of Pop, Michael Jackson.', N'Sabbir Khan', N'Nawazuddin Siddiqui, Tiger Shroff, Nidhhi Agerwal', N'M', N'Friday, 21 July 2017', N'140 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (14, N'/images/posters/my-cousin-rachel.jpg?w=140&h=208', N'My Cousin Rachel', N'A dark romance, MY COUSIN RACHEL tells the story of a young Englishman who plots revenge against his mysterious, beautiful cousin, believing that she murdered his guardian. But his feelings become complicated as he finds himself falling under the beguiling spell of her charms. Based on the novel by Daphne du Maurier.', N'Roger Michell', N'Sam Claflin, Holliday Grainger, Rachel Weisz, Iain Glen', N'PG ', N'Thursday, 8 June 2017', N'105 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (15, N'/images/posters/paris-can-wait.jpg?w=140&h=208', N'Paris Can Wait', N'Cannes to Paris with a business associate of her husband. What should be a seven-hour drive turns into a carefree two-day adventure replete with diversions involving picturesque sights, fine food and wine, humor, wisdom and romance, reawakening Anne''s senses and giving her a new lust for life.', N'Eleanor Coppola', N'Alec Baldwin, Diane Lane, Arnaud Viard', N'PG ', N'Thursday, 20 July 2017', N'92 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (16, N'/images/posters/rough-night-moviethumb.jpg?w=140&h=208', N'Rough Night', N'In Rough Night, an edgy comedy, five best friends from college (played by Scarlett Johansson, Kate McKinnon, Jillian Bell, Ilana Glazer, and Zoâ€° Kravitz) reunite 10 years later for a wild bachelorette weekend in Miami. Their hard partying takes a hilariously dark turn when they accidentally kill a male stripper. Amidst the craziness of trying to figure out what to do, their night takes some hilariously unexpected turns, ultimately bringing them closer together when it matters most.', N'Lucia Aniello', N'Scarlett Johansson, Zoe Kravitz, Kate McKinnon, Demi Moore', N'MA15+ ', N'Thursday, 15 June 2017', N'101 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (17, N'/images/posters/spiderman-homecoming.jpg?w=140&h=208', N'Spider-Man: Homecoming 2D', N'A young Peter Parker/Spider-Man (Tom Holland), who made his sensational debut in Captain America: Civil War, begins to navigate his newfound identity as the web-slinging superhero in Spider-Man: Homecoming. Thrilled by his experience with the Avengers, Peter returns home, where he lives with his Aunt May (Marisa Tomei), under the watchful eye of his new mentor Tony Stark (Robert Downey, Jr.). Peter tries to fall back into his normal daily routine - distracted by thoughts of proving himself to be more than just your friendly neighbourhood Spider-Man - but when the Vulture (Michael Keaton) emerges as a new villain, everything that Peter holds most important will be threatened.', N'Jon Watts', N'Robert Downey Jr., Michael Keaton, Marisa Tomei, Jon Favreau, Tom Holland, Donald Glover', N'M ', N'Thursday, 6 July 2017', N'133 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (18, N'/images/posters/the-beguiled.jpg?w=140&h=208', N'The Beguiled', N'At a girls'' school in Virginia during the Civil War, where the young women have been sheltered from the outside world, a wounded Union soldier is taken in.Soon, the house is taken over with sexual tension, rivalries, and an unexpected turn of events.', N'Sofia Coppola', N'Nicole Kidman, Kirsten Dunst, Elle Fanning, Colin Farrell', N'M ', N'Thursday, 13 July 2017', N'93 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (19, N'/images/posters/The-Boss-Baby-Movie.jpg?w=140&h=208', N'The Boss Baby 2D', N'A suit-wearing briefcase-carrying baby pairs up with his seven-year old brother to stop the dastardly plot of the CEO of Puppy Co.', N'Tom McGrath', N'Alec Baldwin, Steve Buscemi, Lisa Kudrow, Tobey Maguire, Jimmy Kimmel', N'G ', N'Thursday, 23 March 2017', N'97 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (20, N'/images/posters/the-house.jpg?w=140&h=208', N'The House', N'After Scott and Kate Johansen (Will Ferrell and Amy Poehler) lose their daughter Alex''s college fund, they become desperate to earn it back so she can pursue her dream of attending a university. With the help of their neighbor Frank (Jason Mantzoukas), they decide to start an illegal casino in his house.', N'Andrew Jay Cohen', N'Will Ferrell, Amy Poehler, Allison Tolman', N'MA15+ ', N'Thursday, 29 June 2017', N'88 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (21, N'/images/posters/wukong.jpg?w=140&h=208', N'The Legend of Wu Kong', N'Wu Kong, born in Huaguo Mountain, has a heart of stone. li Hua, a powerful general from the heaven was going to terminate him. But Wu Kong was rescued by Bodhi and became his pupil. Han Yang was given an opportunity to become a strong god, but he needs to kill Zixia, the daughter of the Heaven Emperor''s rival, who he is in love with. Tianpeng, Li Hua''s bodyguard, was given the secret order to investigate Wu Kong. All three of them entered the Heaven school together, and their lives are about to change...', N'Derek Kwok', N'Eddie Peng, Ni Ni', N'M', N'Thursday, 13 July 2017', N'123 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (22, N'/images/posters/the-trip-to-spain.jpg?w=140&h=208', N'The Trip To Spain', N'Michael Winterbottom is on the road for the third time with Steve Coogan and Rob Brydon in ''The Trip To Spain'', the follow up to their success with ''The Trip'' and ''The Trip To Italy''.', N'Michael Winterbottom', N'Steve Coogan, Rob Brydon, Marta Barrio, Claire Keelan', N'M ', N'Thursday, 3 August 2017', N'111 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (23, N'/images/posters/transformers-the-last-knight-movie.jpg?w=140&h=208', N'Transformers: The Last Knight 2D', N'Optimus Prime finding his home planet, Cybertron, now a dead planet, which he comes to find he was responsible for killing. He finds a way to bring the planet back to life, but in order to do so he needs to find an artifact, and that artifact is on Earth .', N'Michael Bay', N'Mark Wahlberg, John Goodman, Anthony Hopkins, Laura Haddock', N'M ', N'Thursday, 22 June 2017', N'149 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (24, N'/images/posters/valerian-and-the-city-of-a-thousand-planets-movie.jpg?w=140&h=208', N'Valerian and the City of a Thousa...', N'In the 28th century, Valerian (Dane DeHaan) and Laureline (Cara Delevingne) are special operatives charged with maintaining order throughout the universe. Under assignment, the two embark on a mission to the breathtaking city of Alpha - an ever-expanding metropolis where species from all over the universe have converged over centuries to share knowledge, intelligence and culture. But a dark force threatens the peaceful existence of the City of a Thousand Planets. Valerian and Laureline must race against time to identify this threat and safeguard not just Alpha, but the future of the universe.', N'Luc Besson', N'Ethan Hawke, John Goodman, Rihanna ., Cara Delevingne, Dane DeHaan', N'M ', N'Thursday, 10 August 2017', N'137 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (25, N'/images/posters/war-for-the-planet-of-the-apes-movie.jpg?w=140&h=208', N'War for the Planet of the Apes 2D', N'In War for the Planet of the Apes, the third chapter of the critically acclaimed blockbuster franchise, Caesar and his apes are forced into a deadly conflict with an army of humans led by a ruthless Colonel. After the apes suffer unimaginable losses, Caesar wrestles with his darker instincts and begins his own mythic quest to avenge his kind. As the journey finally brings them face to face, Caesar and the Colonel are pitted against each other in an epic battle that will determine the fate of both their species and the future of the planet.', N'Matt Reeves', N'Andy Serkis, Woody Harrelson, Judy Greer, Steve Zahn, Ty Olsson', N'M ', N'Thursday, 27 July 2017', N'142 Mins')
INSERT [dbo].[Movies] ([MovieId], [MovieLogo], [Title], [Description], [Director], [MainCast], [Classification], [ReleaseDate], [RunningTime]) VALUES (26, N'/images/posters/wonder-woman-movie-thumb4.jpg?w=140&h=208', N'Wonder Woman 2D', N'Before she was Wonder Woman, she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, when an American pilot crashes on their shores and tells of a massive conflict raging in the outside world, Diana leaves her home, convinced she can stop the threat. Fighting alongside man in a war to end all wars, Diana will discover her full powers.and her true destiny. An Amazonian princess leaves her island home to explore the world and, in doing so, becomes one of the world''s greatest heroes.', N'Patty Jenkins', N'Chris Pine, Gal Gadot, Robin Wright', N'M ', N'Thursday, 1 June 2017', N'141 Mins')
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (1, 1, CAST(N'12:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (1, 2, CAST(N'14:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (1, 3, CAST(N'16:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (1, 4, CAST(N'18:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (1, 5, CAST(N'20:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (2, 2, CAST(N'12:30:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (2, 4, CAST(N'14:30:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (2, 6, CAST(N'16:30:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (2, 8, CAST(N'18:30:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (2, 10, CAST(N'20:30:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (3, 1, CAST(N'13:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (3, 3, CAST(N'15:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (3, 5, CAST(N'17:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (3, 7, CAST(N'19:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (3, 9, CAST(N'21:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (4, 15, CAST(N'13:30:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (4, 14, CAST(N'15:30:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (4, 13, CAST(N'17:30:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (4, 12, CAST(N'19:30:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (4, 11, CAST(N'21:30:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (5, 1, CAST(N'14:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (5, 5, CAST(N'16:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (5, 10, CAST(N'18:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (5, 15, CAST(N'20:00:00' AS Time), 20, 0)
INSERT [dbo].[MoviesRunning] ([CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity]) VALUES (5, 20, CAST(N'22:00:00' AS Time), 20, 0)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (1, 1, 1, CAST(N'12:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (2, 1, 2, CAST(N'14:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (3, 1, 3, CAST(N'16:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (4, 1, 4, CAST(N'18:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (5, 1, 5, CAST(N'20:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (6, 2, 2, CAST(N'12:30:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (7, 2, 4, CAST(N'14:30:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (8, 2, 6, CAST(N'16:30:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (9, 2, 8, CAST(N'18:30:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (10, 2, 10, CAST(N'20:30:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (11, 3, 1, CAST(N'13:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (12, 3, 3, CAST(N'15:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (13, 3, 5, CAST(N'17:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (14, 3, 7, CAST(N'19:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (15, 3, 9, CAST(N'21:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (16, 4, 15, CAST(N'13:30:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (17, 4, 14, CAST(N'15:30:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (18, 4, 13, CAST(N'17:30:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (19, 4, 12, CAST(N'19:30:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (20, 4, 11, CAST(N'21:30:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (21, 5, 1, CAST(N'14:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (22, 5, 5, CAST(N'16:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (23, 5, 10, CAST(N'18:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (24, 5, 15, CAST(N'20:00:00' AS Time), 20, 0, NULL)
INSERT [dbo].[Sessions] ([SessionID], [CineplexID], [MovieID], [TimeRunning], [BookingCapacity], [BookedCapacity], [BookedSeats]) VALUES (25, 5, 20, CAST(N'22:00:00' AS Time), 20, 0, NULL)
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 10/09/2017 4:20:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10/09/2017 4:20:31 PM ******/
CREATE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 10/09/2017 4:20:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 10/09/2017 4:20:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 10/09/2017 4:20:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_UserId]    Script Date: 10/09/2017 4:20:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 10/09/2017 4:20:31 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 10/09/2017 4:20:31 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CineplexMovie]  WITH CHECK ADD FOREIGN KEY([CineplexID])
REFERENCES [dbo].[Cineplex] ([CineplexID])
GO
ALTER TABLE [dbo].[CineplexMovie]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
GO
USE [master]
GO
ALTER DATABASE [webdev-cinema] SET  READ_WRITE 
GO
