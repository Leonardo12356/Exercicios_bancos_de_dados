select public.pedido_portugol.codigo_pedido, public.cliente_portugol.nome_cliente, public.pedido_portugol.data_pedido, 
public.produto_portugol.nome_produto, public.item_pedido.qtde_comprada
from public.pedido_portugol

inner join public.cliente_portugol
on  public.cliente_portugol.codigo_cliente = pedido_portugol.codigo_cliente

inner join public.item_pedido
on public.item_pedido.codigo_pedido = pedido_portugol.codigo_pedido

inner join public. produto_portugol
on public.produto_portugol.codigo_produto = item_pedido.codigo_produto
;