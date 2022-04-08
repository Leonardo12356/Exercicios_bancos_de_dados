		/* Tabela: pedido_portugol */
		/* Registra os pedidos feitos no E-commerce */
CREATE TABLE public.pedido_portugol (
	codigo_pedido serial4 NOT NULL,
	codigo_cliente int4 NOT NULL,
	data_pedido date NOT NULL,
	valor_total numeric NOT NULL,
	CONSTRAINT pedido_portugol_pkey PRIMARY KEY (codigo_pedido)
);

ALTER TABLE public.pedido_portugol 
	ADD CONSTRAINT "FK_pedido_portugol.codigo_cliente" 
	FOREIGN KEY (codigo_cliente) 
	REFERENCES public.cliente_portugol(codigo_cliente) 
	ON DELETE CASCADE 
	ON UPDATE CASCADE;