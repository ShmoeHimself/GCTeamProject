USE [master]
GO

/****** Object:  Database [RecipeDB]    Script Date: 7/30/2014 10:12:14 AM ******/
CREATE DATABASE [RecipeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RecipeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\RecipeDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RecipeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\RecipeDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [RecipeDB] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RecipeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [RecipeDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [RecipeDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [RecipeDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [RecipeDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [RecipeDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [RecipeDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [RecipeDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [RecipeDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [RecipeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [RecipeDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [RecipeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [RecipeDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [RecipeDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [RecipeDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [RecipeDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [RecipeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [RecipeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [RecipeDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [RecipeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [RecipeDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [RecipeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [RecipeDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [RecipeDB] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [RecipeDB] SET  MULTI_USER 
GO

ALTER DATABASE [RecipeDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [RecipeDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [RecipeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [RecipeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [RecipeDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [RecipeDB] SET  READ_WRITE 
GO
