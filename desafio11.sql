SELECT 
	s.name AS nome_musica,
  CASE
    WHEN s.name LIKE '%Streets%' THEN replace(s.name, 'Streets', 'Code Review')
    WHEN s.name LIKE '%Her Own%' THEN replace(s.name, 'Her Own', 'Trybe')
    WHEN s.name LIKE '%Inner Fire%' THEN replace(s.name, 'Inner Fire', 'Project')
    WHEN s.name LIKE '%Silly%' THEN replace(s.name, 'Silly', 'Nice')
    WHEN s.name LIKE '%Circus%' THEN replace(s.name, 'Circus', 'Pull Request')
	END as novo_nome
FROM SpotifyClone.songs AS s
WHERE s.name LIKE '%Streets%'
	OR s.name LIKE '%Her Own%'
  OR s.name LIKE '%Inner Fire%'
  OR s.name LIKE '%Silly%'
  OR s.name LIKE '%Circus%'
ORDER BY s.name ASC;
