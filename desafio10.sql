SELECT 
	s.name AS nome,
  COUNT(play.song_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN playback_history AS play
	ON s.id = play.song_id
INNER JOIN users AS u
  ON u.id = play.user_id 
    AND (u.plan_id = 1 OR u.plan_id = 3)
GROUP BY s.name
ORDER BY reproducoes DESC, nome ASC;
