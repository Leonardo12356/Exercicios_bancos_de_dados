		/* Tabela: produto_portugol */
		/* Lista os produtos do E-commerce, diretamente vinculada ao cadastro de produto e categoria */
CREATE TABLE public.produto_portugol (
	codigo_produto serial4 NOT NULL,
	nome_produto varchar(100) NOT NULL,
	qtde_estoque int4 NOT NULL,
	data_fabricacao date NULL,
	valor_unitario numeric NOT NULL,
	codigo_categoria int4 NOT NULL,
	codigo_cadastro int4 NOT NULL,
	CONSTRAINT produto_portugol_pkey PRIMARY KEY (codigo_produto)
);

ALTER TABLE public.produto_portugol 
	ADD CONSTRAINT "FK_produto_portugol.codigo_cadastro" 
	FOREIGN KEY (codigo_cadastro) 
	REFERENCES public.cadastro_produto(codigo_cadastro);
ALTER TABLE public.produto_portugol 
	ADD CONSTRAINT "FK_produto_portugol.codigo_categoria" 
	FOREIGN KEY (codigo_categoria) 
	REFERENCES public.categoria_produto(codigo_categoria);