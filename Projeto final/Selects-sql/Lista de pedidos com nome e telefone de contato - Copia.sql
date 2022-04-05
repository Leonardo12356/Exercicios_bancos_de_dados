/* Uma consulta mostrando todos os pedidos feitos (sem os itens do pedido), com o nome e telefone do cliente; (2 pontos) */


select public.pedido_portugol.codigo_pedido, public.cliente_portugol.nome_cliente, public.cliente_portugol.tel_celular 
from
public.pedido_portugol 
inner join public.cliente_portugol
on public.pedido_portugol.codigo_cliente = public.cliente_portugol.codigo_cliente;