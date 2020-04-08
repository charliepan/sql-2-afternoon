-- 1.
SELECT * FROM invoice invo
INNER JOIN invoice_line line ON line.invoice_id = invo.invoice_id
WHERE line.unit_price > 0.99;

-- 2.
SELECT i.invoice_date, c.first_name, c.last_name, i.total FROM invoice i
INNER JOIN customer c ON c.customer_id = i.customer_id;

-- 3.
SELECT c.first_name, c.last_name, e.first_name, e.last_name FROM customer c
INNER JOIN employee e ON e.employee_id = c.support_rep_id;

-- 4.
SELECT al.title, art.name FROM album al
INNER JOIN artist art ON art.artist_id = al.artist_id;

-- 5.
SELECT plt.track_id FROM playlist_track plt
INNER JOIN playlist pl ON pl.playlist_id = plt.playlist_id
WHERE pl.name = 'Music';

-- 6.
SELECT t.name FROM track t
INNER JOIN playlist_track plt ON plt.track_id = t.track_id
WHERE plt.playlist_id = 5;

-- 7.
SELECT t.name, pl.name FROM track t
INNER JOIN playlist_track plt ON plt.track_id = t.track_id
INNER JOIN playlist pl ON pl.playlist_id = plt.playlist_id;

-- 8.
SELECT t.name, a.title FROM track t
INNER JOIN album a ON a.album_id = t.album_id
INNER JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';