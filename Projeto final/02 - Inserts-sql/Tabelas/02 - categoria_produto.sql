		/* Tabela: categoria_produto */
		/* Apenas informação de categoria de um determinado produto */
CREATE TABLE public.categoria_produto (
	codigo_categoria serial4 NOT NULL,
	nome_categoria varchar(100) NOT NULL,
	CONSTRAINT categoria_produto_pkey PRIMARY KEY (codigo_categoria)
);