SELECT 
	u.name AS usuario, 
	IF (   
    MAX(YEAR(p.date)) = 2021, 'Usuário ativo', 'Usuário inativo'    
    ) AS condicao_usuario
FROM SpotifyClone.users AS u
INNER JOIN playback_history AS p
	ON u.id = p.user_id
GROUP BY usuario
ORDER BY usuario;
