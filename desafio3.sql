SELECT c.client AS 'usuario',
  COUNT(h.song_id) AS 'qtde_musicas_ouvidas',
  ROUND (SUM((s.duration)/60),2) AS 'total_minutos'
FROM SpotifyClone.historic h
INNER JOIN SpotifyClone.clients c ON c.client_id = h.client_id
INNER JOIN SpotifyClone.songs s ON s.song_id = h.song_id
GROUP BY c.client_id ORDER BY c.client;
