
									// aumento salário//

update cadastro_funcionario  set salario=(salario + 500);

select * from cadastro_funcionario 


                                   // alteração e-mail e telefone//
begin transaction

update public.cliente_portugol 
set email ='heloiza@heloiza.com', tel_celular = 6299999111
where email = 'heloiza@helo.com'

rollback 

select * from cliente_portugol 