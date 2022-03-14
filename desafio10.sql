SELECT
  s.song AS 'nome',
  COUNT(*) AS 'reproducoes'
FROM SpotifyClone.historic h
INNER JOIN SpotifyClone.songs s ON s.song_id = h.song_id
INNER JOIN SpotifyClone.clients c ON c.client_id = h.client_id
AND c.plan_id IN(1,2)
GROUP BY nome;