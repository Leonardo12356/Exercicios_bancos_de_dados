/* Um SQL que mude o salário de todos os funcionários: eles passarão a ganhar R$ 500,00 a mais; (3 pontos)*/
begin transaction

update cadastro_funcionario  set salario=(salario + 500);
select * from cadastro_funcionario 

rollback
commit

/*  Um SQL que altere o e-mail e o telefone de um cliente qualquer cadastrado. (2 pontos) */
begin transaction

update public.cliente_portugol 
set email ='heloiza@heloiza.com', tel_celular = 6299999111
where email = 'heloiza@helo.com'

rollback 
commit