# 3330_P1_G11
## Disclaimer:  this group did not use the same schemas as the ones given to us
- The group's data is under the Data directory in the form of .csv files
- There is also an image of the schema included

## Requirements
- This system helps to maintain the records of different trains, the train’s status, and passengers. 
  - Each Train has Train number, train name, source, destination, fair of Premium Ticket, fair for general ticket and weekdays on which train is available. 
  - Train status includes date information for which the ticket was booked, total number of seats available and number of seats already occupied. 
  - Passenger has name, age, address of the passenger, status of reservation (if confirmed or waitlist), category of the ticket booked.

## Constraints/Specifications
  - Only two categories of tickets are available : Premium and General Ticket 
  - The total number of tickets can be booked in each category (Premium and General) is 10 
  - Number of tickets in waiting is 2 
  - Total Number of trains are 5 
  - Any stops made by a train before its final destination and their bookings are not considered. 

## Tools Used:
- ER Diagram - https://app.diagrams.net/
- Schema - Microsoft Word
- SQL Files - SQLite 3.37.2 2022-01-06 13:25:41 872ba256cbf61d9290b571c0e6d82a20c224ca3ad82971edc46b29818d5d17a0
              zlib version 1.2.11
              gcc-5.2.0
- CSV Files - Microsoft Excel
- Group Work - Github

## Method of Importing Data:
- Used the .import sql command to load data into the tables.
  - ".import --csv [filename].csv [tablename]"
