		/* Tabela: cliente_portugol */
		/* Cadastro dos clientes (excluindo endereço) */
CREATE TABLE public.cliente_portugol (
	codigo_cliente serial4 NOT NULL,
	nome_cliente varchar(100) NOT NULL,
	login varchar(100) NOT NULL,
	senha int4 NOT NULL,
	email varchar(100) NOT NULL,
	cpf int8 NOT NULL,
	data_nasc date NOT NULL,
	tel_celular int8 NOT NULL,
	CONSTRAINT cliente_portugol_pkey PRIMARY KEY (codigo_cliente)
);