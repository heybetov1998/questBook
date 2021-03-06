USE [master]
GO
/****** Object:  Database [GuestBook]    Script Date: 5/31/2017 11:50:41 AM ******/
CREATE DATABASE [GuestBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GuestBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\GuestBook.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GuestBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\GuestBook_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GuestBook] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GuestBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GuestBook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GuestBook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GuestBook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GuestBook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GuestBook] SET ARITHABORT OFF 
GO
ALTER DATABASE [GuestBook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GuestBook] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [GuestBook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GuestBook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GuestBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GuestBook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GuestBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GuestBook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GuestBook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GuestBook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GuestBook] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GuestBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GuestBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GuestBook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GuestBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GuestBook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GuestBook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GuestBook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GuestBook] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GuestBook] SET  MULTI_USER 
GO
ALTER DATABASE [GuestBook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GuestBook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GuestBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GuestBook] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [GuestBook]
GO
/****** Object:  Table [dbo].[guestTable]    Script Date: 5/31/2017 11:50:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[guestTable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[surname] [nvarchar](50) NULL,
	[mesaj] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [GuestBook] SET  READ_WRITE 
GO
