SELECT 
	s.name AS cancao,
    COUNT(p.song_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN playback_history AS p
	ON s.id = p.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
