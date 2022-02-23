CREATE TABLE [Passenger]
(

);

CREATE TABLE [Checks]
(

);

CREATE TABLE [Train_Stat]
(
	[TNum] INTEGER NOT NULL,
	[TName] VCHAR(160) NOT NULL,
	[BookDate] DATETIME,
	[GSeatsAvail] INTEGER,
	[GSeatsOcc] INTEGER,
	[PSeatsAvail] INTEGER,
	[PSeatsOcc] INTEGER,
	[Location] VCHAR(160) NOT NULL,
	[Platform] VCHAR(160)
);

CREATE TABLE [Train]
(

);

CREATE TABLE [Train_Avail]
(

);

CREATE TABLE [Train_Dest]
(
	[DTrainID] VCHAR(10) NOT NULL,
	[TDest] VCHAR(160)
);
