/*6. SQL de exclus?o, dos clientes que foram cadastrados contendo o caractere ?e? no nome ou que possuem uma senha com menos de 4 caracteres. (3 pontos)*/
begin transaction
delete from public.cliente_portugol
where 
public.cliente_portugol.codigo_cliente 
in(
select public.cliente_portugol.codigo_cliente
from public.cliente_portugol
full join
public.pedido_portugol
on public.pedido_portugol.codigo_cliente = public.cliente_portugol.codigo_cliente
where 
public.pedido_portugol.codigo_pedido is null
and
(public.cliente_portugol.nome_cliente like '%e%'
or
length(cast(public.cliente_portugol.senha as varchar))<4)
);

commit
rollback