 SELECT  s.song AS 'cancao',
  COUNT(*) AS 'reproducoes'
FROM SpotifyClone.historic h
INNER JOIN SpotifyClone.songs s ON s.song_id = h.song_id
GROUP BY s.song ORDER BY reproducoes DESC,
s.song LIMIT 2;