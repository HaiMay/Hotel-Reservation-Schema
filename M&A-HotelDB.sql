drop database if exists MAHotel;
create database MAHotel;
use MAHotel;

-- create the tables
create table State(
StateAbbr char(2) primary key,
    `Name` varchar(50) not null
);

create table if not exists guest (
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

create table if not exists room (
roomID int primary key,
`type` char(10) not null,
anemities varchar (100) not null,
ADAAccessible char(3),
standard int not null,
maximum int not null,
CONSTRAINT ck_room_ADAAccessible CHECK (ADAAccessible IN ('Yes', 'No'))
);

create table if not exists RoomPrice (
roomID int primary key,
BasePrice decimal(7, 3) not null,
ExtraPerson decimal(7, 3) null,
foreign key fk_RoomPrice_rommID(roomID)
references room(roomID)
);

create table resevation(
resevationNo int auto_increment primary key,
roomID int not null,
`FirstName` char(50) not null,
`LastName` char(50) not null,
NumberAdult int not null,
numberChildren int null,
StartDate date not null,
EndDate date not null,
TotalRoomCost decimal(11, 3) not null,
foreign key fk_resevation_roomID(roomID)
references room(roomID)
);


