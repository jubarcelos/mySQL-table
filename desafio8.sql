SELECT
  a.artist AS 'artista',
  al.album AS 'album'
FROM SpotifyClone.artists a
INNER JOIN SpotifyClone.albums al ON al.artist_id = a.artist_id
WHERE a.artist = 'Walter Phoenix'
GROUP BY a.artist, al.album;