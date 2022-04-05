/*Uma consulta mostrando a quantidade de pedidos por cliente, com resultado ordenado por nome do cliente, de modo crescente. (2 pontos)*/
select public.cliente_portugol.nome_cliente
from
public.pedido_portugol
inner join public.cliente_portugol
on public.cliente_portugol.codigo_cliente = public.pedido_portugol.codigo_cliente
order by  public.cliente_portugol.nome_cliente asc