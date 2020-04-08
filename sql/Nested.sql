-- 1.
SELECT * FROM invoice i
WHERE i.invoice_id IN (SELECT il.invoice_id FROM invoice_line il WHERE il.unit_price > 0.99);

-- 2.
SELECT * FROM playlist_track plt
WHERE plt.playlist_id IN (SELECT pl.playlist_id FROM playlist pl WHERE pl.name = 'Music');
-- Made it too complicated for myself the wording is confusing
-- SELECT t.name FROM track t
-- WHERE t.track_id IN (
--     SELECT plt.track_id FROM playlist_track plt WHERE plt.playlist_id IN (
--         SELECT p.playlist_id FROM playlist p WHERE p.name = 'Music'
--     )
-- );

-- 3.
SELECT t.name FROM track t
WHERE t.track_id IN (SELECT plt.track_id FROM playlist_track plt WHERE plt.playlist_id = 5);

-- 4.
SELECT t.name FROM track t
WHERE t.genre_id IN (SELECT g.genre_id FROM genre g WHERE g.name = 'Comedy');

-- 5.
SELECT t.name FROM track t
WHERE t.album_id IN (SELECT a.album_id FROM album a WHERE a.title = 'Fireball');

-- 6.
SELECT t.name FROM track t
WHERE t.album_id IN (
    SELECT al.album_id FROM album al WHERE al.artist_id IN (
        SELECT a.artist_id FROM artist a WHERE a.name = 'Queen'
    )
);