USE [RecipeDB]
GO

/****** Object:  Table [dbo].[Ingred_Recipe]    Script Date: 7/30/2014 10:35:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ingred_Recipe](
	[Recipe_ID] [int] NOT NULL,
	[Ingred_ID] [int] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ingred_Recipe] PRIMARY KEY CLUSTERED 
(
	[Recipe_ID] ASC,
	[Ingred_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Ingred_Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Ingred_Recipe_Ingredients] FOREIGN KEY([Ingred_ID])
REFERENCES [dbo].[Ingredients] ([Ingred_ID])
GO

ALTER TABLE [dbo].[Ingred_Recipe] CHECK CONSTRAINT [FK_Ingred_Recipe_Ingredients]
GO

ALTER TABLE [dbo].[Ingred_Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Ingred_Recipe_Recipe] FOREIGN KEY([Recipe_ID])
REFERENCES [dbo].[Recipe] ([Recipe_ID])
GO

ALTER TABLE [dbo].[Ingred_Recipe] CHECK CONSTRAINT [FK_Ingred_Recipe_Recipe]
GO

