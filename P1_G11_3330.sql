CREATE TABLE [Passenger]
(

);

CREATE TABLE [Checks]
(

);

CREATE TABLE [Train_Stat]
(

);

CREATE TABLE [Train]
(
	[TrainID] INTEGER NOT NULL,
	[Name] VARCHAR(50) NOT NULL,
	[TicketPrice] INTEGER
	[Source] INTEGER 
	[Destination] VARCHAR(50)
	[Available] VARCHAR(100) 	
	[TicketType] VARCHAR(50) 
	CONSTRAINT [PK_TrainID] PRIMARY KEY (TrainID);
);

CREATE TABLE [Train_Avail]
(
	[TrainID] INTEGER NOT NULL,
	[TrainAvail] VARCHAR(100) NOT NULL,
	CONSTRAINT (PK_TrainIDAvail) PRIMARY KEY(TrainID, TrainAvail) 
	FOREIGN KEY(TrainID) REFERENCES TRAIN(TrainID)
		ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE [Train_Dest]
(

);

