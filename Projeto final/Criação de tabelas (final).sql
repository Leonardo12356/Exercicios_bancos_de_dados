		/* Tabela: cadastro_funcionario */
		/* Informa��o dos funcion�rios da empresa */
CREATE TABLE public.cadastro_funcionario (
	codigo_funcionario serial4 NOT NULL,
	nome_funcionario varchar(100) NOT NULL,
	cpf int8 NOT NULL,
	salario numeric NOT NULL,
	CONSTRAINT cadastro_funcionario_pkey PRIMARY KEY (codigo_funcionario)
);



		/* Tabela: categoria_produto */
		/* Apenas informa��o de categoria de um determinado produto */
CREATE TABLE public.categoria_produto (
	codigo_categoria serial4 NOT NULL,
	nome_categoria varchar(100) NOT NULL,
	CONSTRAINT categoria_produto_pkey PRIMARY KEY (codigo_categoria)
);




		/* Tabela: cadastro_produto */
		/* Informa��o sobre quem cadastrou e quando cadastrou determinado produto */
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



		/* Tabela: cliente_portugol */
		/* Cadastro dos clientes (excluindo endere�o) */



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



		/* Tabela: entrega_cliente */
		/* Informa��es de endere�o do cliente, diretamente vinculada ao cadastro de cliente */
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



		/* Tabela: pagamento */
		/* Informa��es sobre o pagamento do pedido X */
CREATE TABLE public.pagamento (
	codigo_pagamento serial4 NOT NULL,
	codigo_pedido int4 NOT NULL,
	forma_pagamento varchar(100) NOT NULL,
	data_pagamento date NOT NULL,
	CONSTRAINT pagamento_pkey PRIMARY KEY (codigo_pagamento)
);

ALTER TABLE public.pagamento 
	ADD CONSTRAINT "FK_pagamento.codigo_pedido" 
	FOREIGN KEY (codigo_pedido) 
	REFERENCES public.pedido_portugol(codigo_pedido);