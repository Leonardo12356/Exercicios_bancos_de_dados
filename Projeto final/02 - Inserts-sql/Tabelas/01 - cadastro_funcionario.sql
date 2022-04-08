		/* Tabela: cadastro_funcionario */
		/* Informação dos funcionários da empresa */
CREATE TABLE public.cadastro_funcionario (
	codigo_funcionario serial4 NOT NULL,
	nome_funcionario varchar(100) NOT NULL,
	cpf int8 NOT NULL,
	salario numeric NOT NULL,
	CONSTRAINT cadastro_funcionario_pkey PRIMARY KEY (codigo_funcionario)
);