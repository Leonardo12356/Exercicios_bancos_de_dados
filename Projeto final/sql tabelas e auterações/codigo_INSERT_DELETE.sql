insert into cadastro_funcionario (codigo_funcionario, nome_funcionario, cpf, salario)
	values 
	(4, 'Lavínia Débora Analu Vieira',	50736844198, 2205),
	(5, 'Oliver Bento Danilo Moreira', 45413810105,	1974),
	(6,	'Danilo Arthur da Mata',	71977552714,	2400),
	(7,	'Isis Laura Aragão', 99762532732, 2250),
	(8,	'Alexandre Tiago Osvaldo Cavalcanti', 32683806469, 1984),
	(9,	'Henry Heitor de Paula', 48945837710, 2147);
			
select * from cadastro_funcionario 

delete from cadastro_funcionario 
	where codigo_funcionario = 4;
delete from cadastro_funcionario 
	where codigo_funcionario = 5;
	
insert into categoria_produto (codigo_categoria, nome_categoria)
	values 
		(4, 'ARTES MARCIAIS'),
		(5, 'CICLISMO'),
		(6, 'YOGA');
		
select * from  categoria_produto 


update public.cadastro_funcionario  set salario=(salario + 500);
select * from cadastro_funcionario 

update public.cadastro_funcionario  set salario=(salario - 500);



