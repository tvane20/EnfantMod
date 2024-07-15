USE [EnfantsDataDB]
GO

/****** Object: Table [dbo].[Enfants] Script Date: 09/07/2024 14:21:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE [dbo].[Enfants];


GO
CREATE TABLE [dbo].[Enfants] (
    [Id] INT IDENTITY(1,1) PRIMARY KEY,
    [FirstName] VARCHAR(50) NOT NULL,
    [LastName] VARCHAR(50) NOT NULL,
    [TutorName] VARCHAR(100) NOT NULL,
    [CIN] VARCHAR(20) NOT NULL,
    [Phone] VARCHAR(15) NOT NULL,
    [Address] VARCHAR(255) NOT NULL,
    [Province] VARCHAR(50) NOT NULL,
    [City] VARCHAR(50) NOT NULL,
    [Email] VARCHAR(100), -- Champ pour l'adresse email
    [DateAdded] DATE -- Champ pour la date d'ajout
    CONSTRAINT [UQ_CIN] UNIQUE ([CIN]),
    CONSTRAINT [CK_Phone] CHECK (LEN([Phone]) >= 8) -- Contrainte CHECK sur la longueur minimale du numéro de téléphone
);



