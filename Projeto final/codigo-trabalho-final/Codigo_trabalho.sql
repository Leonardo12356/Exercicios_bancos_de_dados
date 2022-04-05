CREATE TABLE "categoria_produto" (
  "codigo_categoria" serial not null,
  "nome_categoria" varchar(100) not null,
  PRIMARY KEY ("codigo_categoria")
);

CREATE TABLE "produto_portugol" (
  "codigo_produto" serial not null,
  "nome_produto" varchar(100) not null,
  "qtde_estoque" integer not null,
  "data_fabricacao" date,
  "valor_unitario" decimal not null,
  "codigo_categoria" integer not null,
  "codigo_cadastro" integer not null,
  PRIMARY KEY ("codigo_produto"),
  CONSTRAINT "FK_produto_portugol.codigo_categoria"
    FOREIGN KEY ("codigo_categoria")
      REFERENCES "categoria_produto"("codigo_categoria"),
	CONSTRAINT "FK_produto_portugol.codigo_cadastro"
    FOREIGN KEY ("codigo_cadastro")
      REFERENCES "cadastro_produto"("codigo_cadastro")
);

CREATE TABLE "cadastro_funcionario" (
  "codigo_funcionario" serial not null,
  "nome_funcionario" varchar(100) not null,
  "cpf" integer not null,
  "salario" decimal not null,
  PRIMARY KEY ("codigo_funcionario")
);

CREATE TABLE "cadastro_produto" (
  "codigo_funcionario" integer not null,
  "codigo_cadastro" serial not null,
  "data_cadastro" date not null,
  PRIMARY KEY ("codigo_cadastro"),
  CONSTRAINT "FK_cadastro_produto.codigo_funcionario"
    FOREIGN KEY ("codigo_funcionario")
      REFERENCES "cadastro_funcionario"("codigo_funcionario")
);

CREATE TABLE "cliente_portugol" (
  "codigo_cliente" serial not null,
  "nome_cliente" varchar(100) not null,
  "login" varchar(100) not null,
  "senha" integer not null,
  "email" varchar(100) not null,
  "cpf" integer not null,
  "data_nasc" date not null,
  "tel_celular" integer not null,
  "codigo_entrega" varchar(400) not null,
  PRIMARY KEY ("codigo_cliente"),
  CONSTRAINT "FK_produto_portugol.codigo_cliente"
    FOREIGN KEY ("codigo_cliente")
      REFERENCES "cliente_portugol"("codigo_cliente")
);

CREATE TABLE "pedido_portugol" (
  "codigo_pedido" serial not null,
  "codigo_cliente" integer not null,
  "data_pedido" date not null,
  "valor_total" decimal not null,
  PRIMARY KEY ("codigo_pedido"),
  CONSTRAINT "FK_pedido_portugol.codigo_cliente"
    FOREIGN KEY ("codigo_cliente")
      REFERENCES "cliente_portugol"("codigo_cliente")
);

CREATE TABLE "pagamento" (
  "codigo_pagamento" serial not null,
  "codigo_pedido" integer not null,
  "forma_pagamento" varchar(100) not null,
  "data_pagamento" date not null,
  PRIMARY KEY ("codigo_pagamento"),
  CONSTRAINT "FK_pagamento.codigo_pedido"
    FOREIGN KEY ("codigo_pedido")
      REFERENCES "pedido_portugol"("codigo_pedido")
);

CREATE TABLE "item_pedido" (
  "codigo_item_pedido" serial not null,
  "codigo_pedido" integer not null,
  "codigo_produto" integer not null,
  "qtde_comprada" integer not null,
  PRIMARY KEY ("codigo_item_pedido"),
  CONSTRAINT "FK_item_pedido.codigo_pedido"
    FOREIGN KEY ("codigo_pedido")
      REFERENCES "pedido_portugol"("codigo_pedido"),
  CONSTRAINT "FK_item_pedido.codigo_produto"
    FOREIGN KEY ("codigo_produto")
      REFERENCES "produto_portugol"("codigo_produto")
);

CREATE TABLE "entrega_cliente" (
  "codigo_entrega" serial not null,
  "ent_tel_contato" varchar(100) not null,
  "ent_pessoa_contato" varchar(100) not null,
  "logradouro" integer not null,
  "n_logradouro" varchar(150) not null,
  "bairro" varchar(100) not null,
  "cidade" varchar(100) not null,
  "estado" varchar(100) not null,
  "CEP" integer not null,
  PRIMARY KEY ("codigo_entrega")
);