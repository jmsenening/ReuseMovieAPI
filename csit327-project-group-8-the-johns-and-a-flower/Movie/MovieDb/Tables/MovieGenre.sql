﻿CREATE TABLE [dbo].[MovieGenre]
(
    [MovieId] INT NOT NULL, 
    [GenreId] INT NOT NULL, 
    CONSTRAINT [FK_MovieGenre_Movie] FOREIGN KEY ([MovieId]) REFERENCES [Movie]([Id]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_MovieGenre_Genre] FOREIGN KEY ([GenreId]) REFERENCES [Genre]([Id]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [PK_MovieGenre] PRIMARY KEY CLUSTERED ([MovieId], [GenreId])
)