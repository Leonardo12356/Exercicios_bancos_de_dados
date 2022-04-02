CREATE TABLE "armazem" (
  "codigo_armazem" serial not null,
  "endereco" varchar(200) not null,
  "num_armazem" integer not null,
  PRIMARY KEY ("codigo_armazem")
);

CREATE TABLE "vendedor" (
  "codigo_vendedor" serial not null,
  "nome_vendedor" varchar(50) not null,
  "endereco_vendedor" varchar(200) null,
  "comissao_vendedor" float,
  PRIMARY KEY ("codigo_vendedor")
);

CREATE TABLE "cliente" (
  "codigo" serial not null,
  "nome" varchar(50) not null,
  "endereco" varchar(200),
  "fat_cumulado" decimal,
  "limite_credito" decimal not null,
  "codigo_vendedor" integer not null,
  PRIMARY KEY ("codigo"),
  CONSTRAINT "FK_cliente.codigo_vendedor"
    FOREIGN KEY ("codigo_vendedor")
      REFERENCES "vendedor"("codigo_vendedor")
);

CREATE TABLE "pedido" (
  "codigo_pedido" serial not null,
  "numero_pedido" integer,
  "data_pedido" date,
  "codigo_vendedor" integer not null,
  "codigo_cliente" integer not null,
  "codigo_item" integer not null,
  PRIMARY KEY ("codigo_pedido"),
  CONSTRAINT "FK_pedido.codigo_cliente"
    FOREIGN KEY ("codigo_cliente")
    
      REFERENCES "cliente"("codigo"),

  CONSTRAINT "FK_pedido.codigo_vendedor"
    FOREIGN KEY ("codigo_vendedor")
      REFERENCES "vendedor"("codigo_vendedor"),

  constraint "FK_pedido.codigo_item"
    foreign key ("codigo_item")
      references "item_pedido"("codigo_item")
);

CREATE TABLE "peca" (
  "codigo_peca" serial not null,
  "descricao" varchar(100) not null,
  "preco" decimal not null,
  "qtde_estoque" integer not null,
  "codigo_amazem" integer not null,
  PRIMARY KEY ("codigo_peca"),
  CONSTRAINT "FK_peca.codigo_amazem"
    FOREIGN KEY ("codigo_amazem")
      REFERENCES "armazem"("codigo_armazem")
);

CREATE TABLE "item_pedido" (
  "codigo_item" serial not null,
  "codigo_peca" integer not null,
  "qtde_vendida" integer not null,
  "preco_cotado" decimal not null,
  PRIMARY KEY ("codigo_item"),
  CONSTRAINT "FK_item_pedido.codigo_peca"
    FOREIGN KEY ("codigo_peca")
      REFERENCES "peca"("codigo_peca")
  );

