SELECT 
	COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.users AS u
INNER JOIN playback_history AS pl
	ON u.id = pl.user_id
WHERE u.name = 'Bill'
