use MAHotel;
-- 1.Write a query that returns a list of reservations that end in July 2023,--
-- including the name of the guest, the room number(s), and the reservation dates.--

select CONCAT(g.FirstName,' ', g.LastName)as guestName,
r.roomNumber,
re.StartDate,
re.EndDate
from room r
inner join resevation re on r.roomID = re.roomID
inner join guest g on g.guestID = re.guestID
where re.EndDate >= '2023/07/01' and re.EndDate <= '2023/07/31';

-- 2.Write a query that returns a list of all reservations for rooms with a jacuzzi,--
-- displaying the guest's name, the room number, and the dates of the reservation.--

select CONCAT(g.FirstName,' ', g.LastName)as guestName,
r.roomNumber,
re.StartDate,
re.EndDate
from resevation re
 inner join room r on r.roomID = re.roomID
 inner join amenityroom ar on ar.roomID = r.roomID
 inner join amenity a on a.amenityID = ar.amenityID
 inner join guest g on g.guestID = re.guestID
 where a.amenity like '%jacuzzi';
  
  -- 3.Write a query that returns all the rooms reserved for a specific guest, including the guest's name, 
  -- the room(s) reserved, the starting date of the reservation,
  -- and how many people were included in the reservation. (Choose a guest's name from the existing data.)
  
  select CONCAT(g.`FirstName`,' ', g.`LastName`)as guestName,
  r.roomNumber,
  re.StartDate,
  sum(re.NumberAdult + re.numberChildren) numberPeopleReserved
  from resevation re
  inner join guest g on  g.guestID = re.guestID
  inner join room r on r.roomID = re.roomID
  where g.FirstName = 'Mack'
  group by re.roomID; 

  
  -- 4.Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. 
  -- The results should include all rooms, whether or not there is a reservation associated with the room.
  
  select r.roomNumber,
  re.resevationNo,
  re.TotalRoomCost
    from room r
  left OUTER JOIN resevation re on r.roomID = re.roomID
   order by r.roomID;
  
  -- 5.Write a query that returns all the rooms accommodating at 
  -- least three guests and that are reserved on any date in April 2023.
  
  select r.roomNumber,
  t.type,
  t.maximum,
  re.StartDate
  from room r
  right outer join resevation re on re.roomID = r.roomID
  inner join `type` t on t.roomTypeID = r.roomTypeID
  where t.maximum >= 3
  having  re.StartDate between 2023/04/01 and 2023/04/30
 order by  r.roomID;
 
  
  -- 6.Write a query that returns a list of all guest names and 
  -- the number of reservations per guest, 
  -- sorted starting with the guest with the most reservations and then by the guest's last name.
  
  select count(g.`LastName`) NumberOfOrder,
  CONCAT(g.`FirstName`,' ', g.`LastName`)as guestName,
  re.NumberAdult,
  re.numberChildren
  from resevation re
  inner join guest g on g.guestID = re.guestID
  group by g.`FirstName`
  order by count(g.`LastName`) DESC;
  
  -- 7.Write a query that displays the name, address, 
  -- and phone number of a guest based on their phone number. (Choose a phone number from the existing data.)
  select CONCAT(g.`FirstName`,' ', g.`LastName`)as guestName,
  g.address,
  g.city,
  g.phone
  from guest g
  where g.phone = '(231) 893-2755';