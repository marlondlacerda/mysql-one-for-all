SELECT 
	COUNT(*) AS cancoes,
	(
		SELECT COUNT(*)
        FROM SpotifyClone.artist
	) AS artistas,
	(
		SELECT COUNT(*)
        FROM SpotifyClone.album
	) AS albuns
FROM SpotifyClone.songs;
