﻿CREATE TABLE [dbo].[MovieActor]
(
    [MovieId] INT NOT NULL, 
    [ActorId] INT NOT NULL, 
    CONSTRAINT [FK_MovieActor_Movie] FOREIGN KEY ([MovieId]) REFERENCES [Movie]([Id]) ON DELETE CASCADE ON UPDATE CASCADE, 
    CONSTRAINT [FK_MovieActor_Actor] FOREIGN KEY ([ActorId]) REFERENCES [Actor]([Id]) ON DELETE CASCADE ON UPDATE CASCADE, 
    CONSTRAINT [PK_MovieActor] PRIMARY KEY CLUSTERED ([MovieId], [ActorId])   
)
