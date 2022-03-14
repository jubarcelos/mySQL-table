SELECT
  COUNT(h.client_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historic h
INNER JOIN SpotifyClone.clients c ON c.client_id = h.client_id
WHERE c.client = 'Bill'
GROUP BY c.client_id;