USE [RecipeDB]
GO

/****** Object:  Table [dbo].[Recipe]    Script Date: 7/30/2014 10:35:43 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Recipe](
	[Recipe_ID] [int] NOT NULL,
	[Prep_Time] [nchar](10) NULL,
	[Cook_Time] [nchar](10) NULL,
	[Servings] [int] NULL,
	[Ingred_List] [text] NULL,
	[Instructions] [text] NULL,
	[Ingred_Amt] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED 
(
	[Recipe_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

