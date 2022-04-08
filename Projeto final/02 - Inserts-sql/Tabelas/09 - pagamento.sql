		/* Tabela: pagamento */
		/* Informações sobre o pagamento do pedido X */
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