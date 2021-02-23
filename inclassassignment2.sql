--1
SELECT MAX(Total)
FROM Invoice;

--2
SELECT *
FROM Invoice
ORDER BY Total desc LIMIT 1;

--3
SELECT MediaType.Name, COUNT(*)
FROM Track
INNER JOIN MediaType
    ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name;

--4
SELECT MediaType.Name, COUNT(*) CountMediaType
FROM Track
INNER JOIN MediaType
    ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name
ORDER BY CountMediaType desc;

--5
SELECT MediaType.Name, COUNT(*) CountMediaType
FROM Track
INNER JOIN MediaType
    ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name
HAVING CountMediaType > 200
ORDER BY CountMediaType desc;

--6
SELECT Count(*)
FROM Track
INNER JOIN Album ON Album.AlbumId = Track.AlbumId
INNER JOIN Artist ON Artist.ArtistId = Album.ArtistId
WHERE Artist.Name LIKE "A%";

--7
SELECT FirstName || " " || LastName || " " || DATE(BirthDate) || " " || (BirthDate/10*10) as Decade
FROM Employee;

