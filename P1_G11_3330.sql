CREATE TABLE [Passenger]
(
    [PassengerID] INTEGER NOT NULL,
    [FName] VARCHAR(50) NOT NULL,
    [LName] VARCHAR(50) NOT NULL,
    [MI] VARCHAR(1),
    [Age] INTEGER,
    [Address] VARCHAR (50),
    [City] VARCHAR(50),
    [County] VARCHAR(50),
    [ResStatus] VARCHAR(20),
    [TicketType] VARCHAR(50),
    [TrainID] INTEGER NOT NULL,
    CONSTRAINT [PK_Passenger] PRIMARY KEY ([PassengerID])
);

CREATE TABLE [Checks]
(
    [PassengerID] INTEGER NOT NULL,
	[TrainID] INTEGER NOT NULL,
    FOREIGN KEY ([PassengerID]) REFERENCES [Passenger]([PassengerID]),
    FOREIGN KEY ([TrainID]) REFERENCES [Train]([TrainID])
);

CREATE TABLE [Train_Stat]
(
	[TrainID] INTEGER NOT NULL,
	[TrainName] VCHAR(50) NOT NULL,
	[BookDate] DATETIME,
	[GSeatsAvail] INTEGER,
	[GSeatsOcc] INTEGER,
	[PSeatsAvail] INTEGER,
	[PSeatsOcc] INTEGER,
	[Location] VCHAR(160) NOT NULL,
	[Platform] VCHAR(160),
	CONSTRAINT [PK_Train_Stat] PRIMARY KEY ([TrainID], [TrainName]),
	FOREIGN KEY  ([TrainName]) REFERENCES [Train] ([Name])
		ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE [Train]
(
	[TrainID] INTEGER NOT NULL,
	[Name] VARCHAR(50) NOT NULL,
	[GenTicketPrice] INTEGER,
	[PremTicketPrice] INTEGER,
	[Source] INTEGER,
	[Destination] VARCHAR(50),
	CONSTRAINT [PK_TrainID] PRIMARY KEY ([TrainID], [Name])
);

CREATE TABLE [Train_Avail]
(
	[TrainID] INTEGER NOT NULL,
	[TrainAvail] VARCHAR(100) NOT NULL,
	FOREIGN KEY ([TrainID]) REFERENCES [Train] ([TrainID])
);

CREATE TABLE [Booked]
(
	[PassengerID] INTEGER NOT NULL,
	[TrainID] INTEGER NOT NULL,
	[TicketType] VARCHAR(20),
	[Status] VARCHAR(20),
	CONSTRAINT [PK_PassengerID] PRIMARY KEY ([PassengerID], [TrainID]),
	FOREIGN KEY ([PassengerID]) REFERENCES [Passenger] ([PassengerID])
		ON DELETE NO ACTION ON UPDATE NO ACTION
);
