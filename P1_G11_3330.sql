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
	[Name] VARCHAR(100) NOT NULL,
	[Availablity] BOOL
	[Source]
	[Destination] NVARCHAR(50) NOT NULL
	[TicketType] 
	[TicketPrice] INTEGER
	PRIMARY KEY (TrainID);
);

CREATE TABLE [Train_Avail]
(
	[TrainID] INTEGER NOT NULL,
	[TrainAvail] BOOL NOT NULL,
	PRIMARY KEY(TrainID, TrainAvail) 
	FOREIGN KEY(TrainID) REFERENCES TRAIN(TrainID)
);

CREATE TABLE [Train_Dest]
(

);

