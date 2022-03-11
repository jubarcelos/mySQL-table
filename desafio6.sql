SELECT 
  MIN(p.price) AS 'faturamento_minimo',
  MAX(p.price) AS 'faturamento_maximo',
  ROUND(AVG(p.price), 2) AS 'faturamento_medio',
  ROUND(SUM(p.price), 2) AS 'faturamento_total'
FROM SpotifyClone.plans p
INNER JOIN SpotifyClone.clients c ON c.plan_id = p.plan_id;
