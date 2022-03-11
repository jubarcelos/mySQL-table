
SELECT
  a.artist AS 'artista',
  al.album AS 'album',
  COUNT(f.artist_id) AS 'seguidores'
FROM SpotifyClone.artists a
INNER JOIN SpotifyClone.albums al ON al.artist_id = a.artist_id
INNER JOIN SpotifyClone.followed f ON a.artist_id = f.artist_id
GROUP BY a.artist, al.album ORDER BY seguidores DESC, a.artist, al.album;