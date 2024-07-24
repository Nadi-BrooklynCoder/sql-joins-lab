SELECT * FROM hotels WHERE pets IS TRUE;

SELECT DISTINCT hotels.* FROM hotels INNER JOIN rooms ON hotels.id = rooms.hotel_id WHERE hotels.pets IS TRUE AND rooms.vacant IS TRUE;

SELECT AVG(price) FROM rooms INNER JOIN hotels ON hotels.id = rooms.hotel_id WHERE hotels.pets IS TRUE;

SELECT * FROM rooms ORDER BY price DESC LIMIT 1;

SELECT AVG(price) FROM rooms WHERE LOWER(name) LIKE '%queen%';

UPDATE rooms SET vacant=FALSE WHERE room_num=202 AND hotel_id=(SELECT id FROM hotels WHERE name='Hotel California');

UPDATE rooms SET hotel_id=(SELECT id from hotels WHERE name='Grand Budapest Hotel') WHERE hotel_id=7;


