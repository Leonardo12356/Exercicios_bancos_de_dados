		/* Tabela: item_pedido */
		/* Detalha os itens de determinado pedido */
CREATE TABLE public.item_pedido (
	codigo_item_pedido serial4 NOT NULL,
	codigo_pedido int4 NOT NULL,
	codigo_produto int4 NOT NULL,
	qtde_comprada int4 NOT NULL,
	CONSTRAINT item_pedido_pkey PRIMARY KEY (codigo_item_pedido)
);

ALTER TABLE public.item_pedido 
	ADD CONSTRAINT "FK_item_pedido.codigo_pedido" 
	FOREIGN KEY (codigo_pedido) 
	REFERENCES public.pedido_portugol(codigo_pedido);
	
ALTER TABLE public.item_pedido 
	ADD CONSTRAINT "FK_item_pedido.codigo_produto" 
	FOREIGN KEY (codigo_produto) 
	REFERENCES public.produto_portugol(codigo_produto);