	/* Tabela: cadastro_produto */
		/* Informação sobre quem cadastrou e quando cadastrou determinado produto */
CREATE TABLE public.cadastro_produto (
	codigo_funcionario int4 NOT NULL,
	codigo_cadastro serial4 NOT NULL,
	data_cadastro date NOT NULL,
	CONSTRAINT cadastro_produto_pkey PRIMARY KEY (codigo_cadastro)
);

ALTER TABLE public.cadastro_produto 
	ADD CONSTRAINT "FK_cadastro_produto.codigo_funcionario"
	FOREIGN KEY (codigo_funcionario)
	REFERENCES public.cadastro_funcionario(codigo_funcionario);