SELECT 
	a.name AS artista, alb.name AS album
FROM SpotifyClone.artist AS a
INNER JOIN album AS alb
	ON a.id = alb.artist_id
WHERE a.name = 'Walter Phoenix'
ORDER BY album ASC;
