/* Uma consulta mostrando todos os produtos cadastrados, com o nome da categoria e o nome do funcionário que o cadastrou; (2 pontos)*/
select public.produto_portugol.nome_produto, public.categoria_produto.nome_categoria ,public.cadastro_funcionario.nome_funcionario
from produto_portugol
inner join cadastro_produto
on public.produto_portugol.codigo_cadastro = cadastro_produto.codigo_cadastro
inner join cadastro_funcionario
on public.cadastro_produto.codigo_funcionario = public.cadastro_funcionario.codigo_funcionario
inner join public.categoria_produto
on public.categoria_produto.codigo_categoria = public.produto_portugol.codigo_categoria



/*Uma consulta mostrando todos os pedidos feitos (sem os itens do pedido), com o nome e telefone do cliente; (2 pontos)*/

select public.pedido_portugol.codigo_pedido, public.cliente_portugol.nome_cliente, public.cliente_portugol.tel_celular 
from
public.pedido_portugol 
inner join public.cliente_portugol
on public.pedido_portugol.codigo_cliente = public.cliente_portugol.codigo_cliente;


/*Uma consulta mostrando todos os pedidos feitos, com seus itens, mostrando: número do pedido, nome do cliente, data do pedido, nome do produto comprado e a quantidade comprada de cada produto; (2 pontos)*/

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


/*Uma consulta mostrando a quantidade de pedidos por cliente, com resultado ordenado por nome do cliente, de modo crescente. (2 pontos)*/
select public.cliente_portugol.nome_cliente,
count (public.cliente_portugol.codigo_cliente)
as
qt_pedidos_cliente

from public.cliente_portugol 
inner join public.pedido_portugol
on public.cliente_portugol.codigo_cliente = public.pedido_portugol.codigo_cliente
group by public.cliente_portugol.codigo_cliente
order by public.cliente_portugol.nome_cliente asc;

/*Utilize o inner join para uma consulta coerente em 3 tabelas. (2 pontos)*/
/* descobrir os clientes que compraram com a forma de pagamento boleto*/
select cliente_portugol.nome_cliente
from pedido_portugol
inner join pagamento
on pedido_portugol.codigo_pedido = pagamento.codigo_pedido 
inner join cliente_portugol
on pedido_portugol.codigo_cliente = cliente_portugol.codigo_cliente
where pagamento.forma_pagamento = 'BOLETO';

/*Faça uso de outro join para consultar os dados, mesmo que nulos, da tabela funcionario. (2 pontos)*/

select public.cadastro_funcionario.nome_funcionario, public.cadastro_produto.codigo_cadastro 
from public.cadastro_funcionario 
left join public.cadastro_produto 
on public.cadastro_funcionario.codigo_funcionario = public.cadastro_produto.codigo_funcionario  
where public.cadastro_produto.codigo_cadastro is null