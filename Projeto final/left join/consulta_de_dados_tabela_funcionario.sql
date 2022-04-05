
					// Faça uso de outro join para consultar os dados, mesmo que nulos, da tabela funcionario.

select public.cadastro_funcionario.nome_funcionario, public.cadastro_produto.codigo_cadastro 
from public.cadastro_funcionario 
left join public.cadastro_produto 
on public.cadastro_funcionario.codigo_funcionario  = public.cadastro_produto.codigo_funcionario  
where public.cadastro_produto.codigo_cadastro  is null