1ºSQL de Consulta

Uma consulta mostrando todos os produtos cadastrados, com o nome da categoria 
e o nome do funcionário que o cadastrou; (2 pontos)

select public.produto_portugol.nome_produto, public.categoria_produto.nome_categoria ,public.cadastro_funcionario.nome_funcionario
from produto_portugol
inner join cadastro_produto
on public.produto_portugol.codigo_cadastro = cadastro_produto.codigo_cadastro
inner join cadastro_funcionario
on public.cadastro_produto.codigo_funcionario = public.cadastro_funcionario.codigo_funcionario
inner join public.categoria_produto
on public.categoria_produto.codigo_categoria = public.produto_portugol.codigo_categoria