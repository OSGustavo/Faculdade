
--PRIMEIRA CONSULTA
--lista pedidos não cancelados, mostrando o nome do cliente e ordenando pelos pedidos mais recentes.

SELECT   p.id_pedido,
         c.nome_cliente AS cliente,
         p.status_pedido,
         p.data_pedido
FROM     pedido AS p
JOIN     clientes AS c ON c.rg = p.rg
WHERE    p.status_pedido <> 'Cancelado'
ORDER BY p.data_pedido DESC;

--SEGUNDA CONSULTA
--para cada transportadora, contar quantas entregas/pedidos ela já fez.

SELECT   t.nome_transportadora                    AS transportadora,
         COUNT(DISTINCT e.id_entrega)             AS qtd_entregas,
         COUNT(p.id_pedido)                       AS qtd_pedidos
FROM     transportadora AS t
JOIN     entrega        AS e ON e.id_transportadora = t.id_transportadora
JOIN     pedido         AS p ON p.id_entrega = e.id_entrega
GROUP BY t.nome_transportadora
ORDER BY qtd_entregas DESC;


--TERCEIRA CONSULTA
/* entre as transportadoras que tem  carga frágil, 
trazer aquelas com o número de pedidos é maior ou igual à média geral,
 indicando também a média de dias entre o pedido e a entrega.
 */
 
WITH pedidos_fragil AS (
    SELECT t.id_transportadora,
           t.nome_transportadora AS transportadora,
           p.id_pedido,
           p.data_pedido,
           e.data_entrega
    FROM   transportadora t
    JOIN   entrega e ON e.id_transportadora = t.id_transportadora
    JOIN   pedido  p ON p.id_entrega = e.id_entrega
    WHERE  e.tipo_carga = 'fragil'
),
pedidos_por_transp AS (
    SELECT id_transportadora,
           COUNT(id_pedido) AS total_pedidos
    FROM   pedidos_fragil
    GROUP  BY id_transportadora
)
SELECT   pf.transportadora,
         pt.total_pedidos,
         AVG(pf.data_entrega - pf.data_pedido) AS media_dias
FROM     pedidos_fragil pf
JOIN     pedidos_por_transp pt ON pt.id_transportadora = pf.id_transportadora
WHERE    pt.total_pedidos >= (SELECT AVG(total_pedidos)::numeric FROM pedidos_por_transp)
GROUP BY pf.transportadora, pt.total_pedidos
ORDER BY pt.total_pedidos DESC;

