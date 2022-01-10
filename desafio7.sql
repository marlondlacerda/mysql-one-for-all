SELECT 
	a.name AS artista,
    alb.name AS album,
    count(f.artist_id) AS seguidores
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS alb
	ON a.id = alb.artist_id
INNER JOIN SpotifyClone.following AS f
	ON a.id = f.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;
