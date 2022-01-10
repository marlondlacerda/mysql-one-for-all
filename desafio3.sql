SELECT 
	u.name AS usuario, 
	COUNT(p.user_id) AS qtde_musicas_ouvidas, 
    ROUND(SUM(s.duraction)/60, 2) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN playback_history AS p
	ON u.id = p.user_id
INNER JOIN songs AS s
	ON p.song_id = s.id
GROUP BY usuario
ORDER BY usuario;
