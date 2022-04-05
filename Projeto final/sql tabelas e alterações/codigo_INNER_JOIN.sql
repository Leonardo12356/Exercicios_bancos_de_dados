select pedido_portugol.codigo_pedido, pedido_portugol.data_pedido, pedido_portugol.valor_total
from pedido_portugol
inner join pagamento
on pedido_portugol.codigo_pedido = pagamento.codigo_pedido 
where pagamento.forma_pagamento = 'PIX';

SELECT cadastro_produto.codigo_cadastro, cadastro_produto.data_cadastro
FROM cadastro_produto
INNER JOIN cadastro_funcionario
ON cadastro_funcionario.codigo_funcionario = cadastro_produto.codigo_funcionario
WHERE cadastro_funcionario.codigo_funcionario = 1;

SELECT cadastro_produto.codigo_cadastro, cadastro_produto.data_cadastro, cadastro_funcionario.nome_funcionario
FROM cadastro_produto
INNER JOIN cadastro_funcionario
ON cadastro_funcionario.codigo_funcionario = cadastro_produto.codigo_funcionario
WHERE cadastro_funcionario.codigo_funcionario = 1;

select cliente_portugol.nome_cliente
from pedido_portugol
inner join pagamento
on pedido_portugol.codigo_pedido = pagamento.codigo_pedido 
inner join cliente_portugol
on pedido_portugol.codigo_cliente = cliente_portugol.codigo_cliente
where pagamento.forma_pagamento = 'BOLETO';