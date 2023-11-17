CREATE DATABASE SHRIHARSH;
USE SHRIHARSH;

CREATE TABLE HOTEL
(
Hotel_No int,
HName varchar(100),
City varchar(100),
PRIMARY KEY(Hotel_No)
);

CREATE TABLE ROOM
(
Room_No int,
Hotel_No int,
RType varchar(100),
Price int
);

CREATE TABLE BOOKING
(
Hotel_No int,
Guest_No int,
Date_From DATE,
Date_To DATE,
Room_No int
);

CREATE TABLE GUEST
(
Guest_No int,
Guest_Name varchar(100),
Guest_Address varchar(100),
PRIMARY KEY(Guest_No)
);

DESC HOTEL;

INSERT INTO HOTEL
VALUES
(01,'Damodar','Pune'),
(02,'SilverOak','Mumbai'),
(03,'RKHotel','Pune');

INSERT INTO ROOM
VALUES
(07,01,'Luxary',1200),
(08,02,'Double',800),
(09,01,'Single',200),
(10,03,'Triple',1000);

INSERT INTO BOOKING
VALUES
(01,11, '2023-08-07','2023-08-10',07),
(01,12, '2023-09-08', '2023-09-09',08),
(02,13,'2023-09-10','2023-09-12',09),
(03,14, '2023-09-11', '2023-09-15',10);

INSERT INTO GUEST
VALUES
(11,'Arjun','Delhi'),
(12,'Dhananjay','Pune'),
(13,'Aakrit','Nagpur'),
(14,'Rohit','Nashik');

SELECT * FROM ROOM;

SELECT * FROM HOTEL;

SELECT * FROM BOOKING;

SELECT * FROM GUEST;

ALTER TABLE booking 
ADD foreign key (Guest_No) references guest(Guest_No);

-- -- -- -- Queries -- -- -- --

-- What is the total revenue per night from all double rooms?
SELECT SUM(Price) from room
WHERE RType ='Double';

-- List the details of all rooms at the Damodar Hotel, including the name of the guest staying in the room if the room is occupied.
SELECT * from hotel h INNER JOIN booking b ON h.Hotel_No = b.Hotel_No
INNER JOIN guest g ON b.Guest_No = g.Guest_No
WHERE HName = 'Damodar';

-- What is the average number of bookings for each hotel in September?
SELECT Hotel_No,AVG(Room_No) as Room_Average FROM booking
WHERE MONTH(DATE_FROM)>= 9 AND MONTH(DATE_FROM) <= 9
GROUP BY Hotel_No;

-- Create index on one of the field and show it's preformance in query
CREATE INDEX index_Hotel
on hotel(HName);

Select * FROM hotel
WHERE HName = 'Damodar';

-- List full details of all hotels
SELECT * from hotel h INNER JOIN booking b
ON h.Hotel_No = b.Hotel_No
INNER JOIN guest g
ON b.Guest_No = g.Guest_No
INNER JOIN room r
on b.Room_No = r.Room_No;

-- List full details of all hotels in Pune
SELECT * from hotel h INNER JOIN booking b
ON h.Hotel_No = b.Hotel_No
INNER JOIN guest g
ON b.Guest_No = g.Guest_No
INNER JOIN room r
on b.Room_No = r.Room_No
WHERE City = 'Pune';

-- Upadte the price of all rooms by 5%
UPDATE room SET Price = Price + Price*0.05;

select * from room;

-- List the number of rooms in each hotel in Mumbai.
Select h.HName, r.Room_No AS 'Rooms in Mumbai' FROM room r INNER JOIN hotel h
ON h.Hotel_No = r.Hotel_No
where r.Hotel_No = (SELECT Hotel_No FROM hotel
WHERE City = 'Mumbai');

-- List all Double or Single Rooms with a price below Rs.1000 per night in ASC order of price.
SELECT h.HName,r.Room_No,r.Price FROM room r INNER JOIN hotel h
ON h.Hotel_No = r.Hotel_No
WHERE RType ='Double' OR RType ='Single' AND Price <1000
ORDER BY Price ASC;