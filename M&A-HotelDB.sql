drop database if exists MAHotel;
create database MAHotel;
use MAHotel;

-- create the tables
create table State(
StateAbbr char(2) primary key,
    `Name` varchar(50) not null
);

create table if not exists guest(
guestID int primary key auto_increment,
`FirstName` char(50) not null,
`LastName` char(50) not null,
address char(50) not null,
city char (50) not null,
StateAbbr char(2) not null,
zipcode int not null,
phone char(50) not null,
foreign key fk_guest_StateAbbr(StateAbbr)
references State(StateAbbr) 
);



create table if not exists `type` (
roomTypeID int primary key auto_increment,
`type` char (50),
standard int not null,
maximum int not null,
basePrice decimal(7, 3) not null,
ExtraPerson decimal(7, 3) null
);

create table if not exists room (
roomID int primary key auto_increment,
roomTypeID int not null,
roomNumber int not null,
ADAAccessible char(3),
CONSTRAINT ck_room_ADAAccessible CHECK (ADAAccessible IN ('Yes', 'No')),
foreign key fk_room_roomTypeID(roomTypeID)
references `type`(roomTypeID)
);

create table amenity(
amenityID int primary key,
amenity char (50),
extra decimal (7,3)
);

create table if not exists amenityRoom (
amenityID int,
roomID int,
CONSTRAINT amenityRoom_pk primary key (amenityID,roomID),
foreign key fk_amenityRoom_amenityID(amenityID)
references amenity(amenityID),
foreign key fk_amenityRoom_roomID(roomID)
references room(roomID)
);

create table resevation(
resevationNo int auto_increment primary key,
roomID int not null,
guestID int not null,
NumberAdult int not null,
numberChildren int null,
StartDate date not null,
EndDate date not null,
TotalRoomCost decimal(11, 3) not null,
foreign key fk_resevation_roomID(roomID)
references room(roomID),
foreign key fk_resevation_guestID(guestID)
references guest(guestID)
);
drop table resevation;


