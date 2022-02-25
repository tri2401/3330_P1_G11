SELECT FName,LName,Passenger.PassengerID
FROM Passenger,Train
WHERE Passenger.TrainID = Train.TrainID AND Name = "Golden Chariot" AND ResStatus = "confirmed";

SELECT Train.TrainID, Train.Name, Passenger.PassengerID, FName, LName
FROM Train,Passenger,Train_Stat
WHERE GSeatsAvail=0 AND PSeatsAvail=0 AND Train_Stat.TrainID = Train.TrainID AND Passenger.ResStatus="waitlist" AND Passenger.TrainID = Train.TrainID
ORDER BY Passenger.PassengerID DESC;

DELETE FROM Booked WHERE PassengerID=264816896;
DELETE FROM Checks WHERE PassengerID=264816896;
DELETE FROM Passenger WHERE PassengerID=264816896;
UPDATE Passenger SET ResStatus="confirmed" WHERE PassengerID=240471168;
UPDATE Booked SET Status="confirmed" WHERE PassengerID=240471168;

SELECT FName, LName
FROM Passenger
WHERE ResStatus="confirmed" AND TrainID=4;

SELECT TrainName, GSeatsAvail, GSeatsOcc, PSeatsAvail, PSeatsOcc FROM Train_Stat;

SELECT B.TrainID
FROM Passenger P
INNER JOIN Booked B on P.PassengerID = B.PassengerID
WHERE P.FName="Cammy" AND P.LName="Albares";

SELECT FName,LName,Address,City,County,TicketType,ResStatus
FROM Passenger
WHERE Age>=50 AND Age<=60 ;

SELECT TrainName, SUM(GSeatsOcc+PSeatsOcc)
FROM Train_Stat
GROUP BY TrainName;

SELECT FName, LName
FROM Passenger
Where TicketType = "Premium" AND TrainID = 4;
