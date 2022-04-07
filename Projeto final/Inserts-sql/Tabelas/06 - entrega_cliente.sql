		/* Tabela: entrega_cliente */
		/* Informações de endereço do cliente, diretamente vinculada ao cadastro de cliente */
CREATE TABLE public.entrega_cliente (
	codigo_entrega serial4 NOT NULL,
	ent_tel_contato int8 NOT NULL,
	ent_pessoa_contato varchar(100) NOT NULL,
	logradouro varchar(150) NOT NULL,
	n_logradouro int4 NOT NULL,
	bairro varchar(100) NOT NULL,
	cidade varchar(100) NOT NULL,
	estado varchar(100) NOT NULL,
	"CEP" int4 NOT NULL,
	codigo_cliente int4 NULL,
	CONSTRAINT entrega_cliente_pkey PRIMARY KEY (codigo_entrega)
);

ALTER TABLE public.entrega_cliente
	ADD CONSTRAINT "FK_entrega_cliente.codigo_cliente"
	FOREIGN KEY (codigo_cliente)
	REFERENCES public.cliente_portugol(codigo_cliente) 
	ON DELETE CASCADE 
	ON UPDATE CASCADE;