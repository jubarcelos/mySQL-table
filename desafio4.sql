SELECT c.client AS 'usuario',
   IF (MAX(YEAR(h.date) > 2020), 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM SpotifyClone.clients c
INNER JOIN SpotifyClone.historic h ON h.client_id = c.client_id
GROUP BY c.client_id ORDER BY c.client;