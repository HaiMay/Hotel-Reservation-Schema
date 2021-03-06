use MAHotel;

    insert into guest (`FirstName`,`LastName`, Address, City, StateAbbr, zipcode, Phone) values
    ('May', 'le', '5 buttermill ave', 'Zion', 'TX', 2345, '6472043518'),
    ('Mack', 'Simmer',	'379 Old Shore Street',	'Council Bluffs', 'IA',	51501,	'(291) 553-0508'),
    ('Bettyann', 'Seery',	'750 Wintergreen Dr.',	'Wasilla',	'AK',	99654,	'(478) 277-9632'),
    ('Duane', 'Cullison',	'9662 Foxrun Lane',	'Harlingen',	'TX',	78552,	'(308) 494-0198'),
    ('Karie', 'Yang',	'9378 W. Augusta Ave.',	'West Deptford',	'NJ',	08096,	'(214) 730-0298'),
    ('Aurore', 'Lipton',	'762 Wild Rose Street',	'Saginaw',	'MI',	48601,	'(377) 507-0974'),
    ('Zachery', 'Luechtefeld',	'7 Poplar Dr.',	'Arvada',	'CO',	80003,	'(814) 485-2615'),
    ('Jeremiah', 'Pendergrass',	'70 Oakwood St.',	'Zion',	'IL',	60099,	'(279) 491-0960'),
    ('Walter', 'Holaway',	'7556 Arrowhead St.',	'Cumberland',	'RI',	02864,	'(446) 396-6785'),
    ('Wilfred', 'Vise',	'77 West Surrey Street',	'Oswego',	'NY',	13126,	'(834) 727-1001'),
    ('Maritza', 'Tilton',	'939 Linda Rd.',	'Burke',	'VA',	22015,	'(446) 351-6860'),
    ('Joleen', 'Tison',	'87 Queen St.',	'Drexel Hill',	'PA',	19026,	'(231) 893-2755');
    insert into `type` (`type`, standard, maximum, basePrice, ExtraPerson) values
    ('Double',	2,	4,	199.99,	10),
	('Single',	2,	2,	174.99,	null),
	('Suite',	3,	8,	399.99,	20);
    insert into room (roomID, roomTypeID, roomNumber, ADAAccessible) values
    (1, 1, 201, 'No'),
    (2, 1, 202, 'Yes'),
    (3, 1, 203, 'No'),
    (4, 1, 204, 'Yes'),
    (5, 2, 205,	'No'),
    (6, 2, 206,	'Yes'),
    (7, 2, 207,	'No'),
    (8, 2, 208,	'Yes'),
    (9, 1, 301,	'No'),
    (10, 1, 302,	'Yes'),
    (11, 1, 303,	'No'),
    (12, 1, 304,	'Yes'),
    (13, 2, 305,	'No'),
    (14, 2, 306,	'Yes'),
    (15, 2, 307,	'No'),
    (16, 2, 308,	'Yes'),
    (17, 3, 401,	'Yes'),
    (18, 3, 402,	'Yes');
    
    insert into amenity(amenityID, amenity, extra) values
    (1, 'microwave', 0),
    (2, 'jacuzzi', 25),
    (3, 'refrigerator', 0),
    (4, 'oven', 0);
    insert into amenityRoom(amenityID, roomID) values
    (1, 1),
    (2, 1),
    (3, 2),
    (1, 3),
    (2, 3),
    (3, 4),
    (1, 5),
    (2, 5),
    (3, 5),
    (1, 6),
    (2, 6),
    (1, 7),
    (2, 7),
    (3, 7),
    (1, 8),
    (3, 8),
    (1, 9),
    (2, 9),
    (3, 10),
    (1, 11),
    (2, 11),
    (3, 12),
    (1, 13),
    (2, 13),
    (3, 13),
    (1, 14),
    (3, 14),
    (1, 15),
    (2, 15),
    (3, 15),
    (1, 16),
    (3, 16),
    (1, 17),
    (3, 17),
    (4, 17),
    (3, 18),
    (1, 18),
    (4, 18);
        
     insert into resevation (roomID, guestID, NumberAdult, numberChildren, StartDate, EndDate, TotalRoomCost) values
     (16,	2,	1,	0,	'2023/02/02',	'2023/02/04',	299.98),
     (3,	3,	2,	1,	'2023/02/05',	'2023/02/10',	999.95),
     (13,	4,	2,	0,	'2023/02/22',	'2023/02/24',	349.98),
     (1,	5,	2,	2,	'2023/03/06',	'2023/03/07',	199.99),
     (15,	1,	1,	1,	'2023/03/17',	'2023/03/20',	524.97),
     (10,	6,	3,	0,	'2023/03/18',	'2023/03/23',	924.95),
     (2,	7,	2,	2,	'2023/03/29',	'2023/03/31',	349.98),
     (12,	8,	2,	0,	'2023/03/31',	'2023/04/05',	874.95),
     (9,	9,	1,	0,	'2023/04/09',	'2023/04/13',	799.96),
     (7,	10,	1,	1,	'2023/04/23',	'2023/04/24',	174.99),
     (17,	11,	2,	4,	'2023/05/30',	'2023/06/02',	1199.97),
     (6,	12,	2,	0,	'2022/06/10',	'2023/06/14',	599.96),
     (8,	12,	1,	0,	'2023/06/10',	'2023/06/14', 599.96),
     (9,	6,	3,	0,	'2023/06/17',	'2023/06/18',	184.99),
     (5,	1,	2,	0,	'2023/06/28',	'2023/07/02',	699.96),
     (4,	9,	3,	1,	'2023/07/13',	'2023/07/14',	184.99),
     (17,	10,	4,	2,	'2023/07/18',	'2023/07/21',	1259.97),
     (10,	3,	2,	1,	'2023/07/28',	'2023/07/29',	199.99),
     (13,	3,	1,	0,	'2023/08/30',	'2023/09/01',	349.98),
     (8,	2,	2,	0,	'2023/09/16',	'2023/06/17',	149.99),
     (3,	5,	2,	2,	'2023/09/13',	'2023/09/15',	399.98),
     (17,	4,	2,	2,	'2023/11/22',	'2023/11/25',	1199.97),
     (6,	2,	2,	0,	'2023/11/22',	'2023/11/25',	449.97),
     (9,	2,	2,	2,	'2023/11/22',	'2023/11/25',	599.97),
     (10,	11,	2,	0,	'2023/12/24',	'2023/12/24',	699.96);
      delete from resevation
       where guestID = 8;
     delete from guest
     where guestID = 8;
    