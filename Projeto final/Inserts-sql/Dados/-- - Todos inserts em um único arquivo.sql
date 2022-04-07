		/* Cadastro de funcionários */
INSERT INTO public.cadastro_funcionario
(codigo_funcionario, nome_funcionario, cpf, salario)
VALUES  (1, 'Lavínia Débora Analu Vieira', 50736844198, 2205),
		(2, 'Oliver Bento Danilo Moreira', 45413810105, 1974),
		(3, 'Danilo Arthur da Mata', 71977552714, 2400),
		(4, 'Isis Laura Aragão', 99762532732, 2250),
		(5, 'Alexandre Tiago Osvaldo Cavalcanti', 32683806469, 1984),
		(6, 'Henry Heitor de Paula', 48945837710, 2147);
		
	
		
	
		/* Categorias dos produtos */
INSERT INTO public.categoria_produto
(codigo_categoria, nome_categoria)
VALUES	(1, 'CAÇA E PESCA'),
		(2, 'CAMPING'),
		(3, 'ESPORTES'),
		(4, 'ARTES MARCIAIS'),
		(5, 'CICLISMO'),
		(6, 'YOGA');
	
	
	
		/* Informações de cadastro de produtos */
INSERT INTO public.cadastro_produto
(codigo_funcionario, codigo_cadastro, data_cadastro)
VALUES	(1, 1, '2022-03-13'),
		(1, 2, '2022-03-14'),
		(1, 3, '2022-03-15'),
		(1, 4, '2022-03-16'),
		(1, 5, '2022-03-17'),
		(1, 6, '2022-03-19'),
		(1, 7, '2022-03-20'),
		(1, 8, '2022-03-21'),
		(2, 9, '2022-03-22'),
		(2, 10, '2022-03-23'),
		(2, 11, '2022-03-24'),
		(2, 12, '2022-03-25'),
		(2, 13, '2022-03-31'),
		(2, 14, '2022-04-02'),
		(2, 15, '2022-04-03');

	
	
		/* Cadastro dos produtos */
INSERT INTO public.produto_portugol
(codigo_produto, nome_produto, qtde_estoque, data_fabricacao, valor_unitario, codigo_categoria, codigo_cadastro)
VALUES	(1, 'Vara de pesca lumis infinity im6 sec: 2 cast', 10, '1999-03-22', 240.00, 1, 1),
		(2, 'Caixa de munição 5,56/223 - aurok', 7, NULL, 62.91, 1, 2),
		(3, 'Bandoleira tática hera 2 pontas preta', 20, NULL, 103.49, 1, 3),
		(4, 'Molinete Totó 200 Azul', 19, NULL, 36.00, 1, 4),
		(5, 'Mira a lazer microdot vector frenzy', 10, NULL, 1421.10, 1, 5),
		(6, 'Cadeira de campo dobrável', 30, NULL, 99.90, 2, 6),
		(7, 'Conjunto de talheres camping', 50, '2010-01-10', 12.90, 2, 7),
		(8, 'Mesa de camping dobrável 6 pessoas', 30, '2010-03-21', 299.90, 2, 8),
		(9, 'Mochila de trilha 10 litros', 25, '2020-12-01', 49.90, 2, 9),
		(10, 'Pia portátil para camping sink ntk', 50, '2022-01-10', 1124.90, 2, 10),
		(11, 'Barreira de treino 3 alturas', 17, '2000-05-21', 99.99, 3, 11),
		(12, 'Bola para futebol de campo', 23, '1991-05-13', 59.99, 3, 12),
		(13, 'Colete azul infantil', 34, '2022-02-12', 12.99, 3, 13),
		(14, 'Saco para 8 bolas de futebol preto', 40, '2021-05-12', 109.99, 3, 14),
		(15, 'Short juvenil kappa', 52, '2021-12-01', 29.99, 3, 15);



		/* Cadastro dos clientes*/
INSERT INTO public.cliente_portugol
(codigo_cliente, nome_cliente, login, senha, email, cpf, data_nasc, tel_celular)
VALUES	(1, 'Tiago Martin Kevin da Costa', 'TIAGOVSKI', 123456, 'tiago_martin_corte_real@prudentall.com', 36411240264, '1994-02-01', 61994354280),
		(2, 'Heloisa Elza Clara da Cruz', 'ELZATEA', 798143, 'heloiza@helo.com', 92910923711, '1993-04-01', 62997837592),
		(3, 'Bernardo Calebe Emanuel Melo', 'CALEBESTEIN', 567897, 'berna_berna_@caporal.com', 30908295090, '1999-07-29', 69985751725),
		(4, 'Gabriela Eduarda Mariah da Rocha', 'VONEDUARDA', 963852, 'gabriela.mariah@integrasjc.com.br', 47571808103, '1980-04-01', 33985922735),
		(5, 'Luna Juliana da Costa', 'LUNAKUN', 194803, 'luna_juliana@yahoo.com.br', 58482328735, '1947-01-10', 98989133601),
		(6, 'Mário Bento da Cunha', 'MARIOSAN', 197508, 'mario_bento_dacunha@brws.com.br', 54475576660, '1955-02-23', 91987544520);
	
	
	
		/* Endereço de entrega dos clientes
		 * Base configurada para haver mais de um endereço por cliente*/
INSERT INTO public.entrega_cliente
(codigo_entrega, ent_tel_contato, ent_pessoa_contato, logradouro, n_logradouro, bairro, cidade, estado, "CEP", codigo_cliente)
VALUES	(1, 61994354280, 'Tiago Martin Kevin da Costa', 'Quadra Quadra 2 Conjunto D-8 Bloco C', 1, 'Sobradinho', 'Brasília', 'DF', 73015424, 1),
		(2, 62997837592, 'Heloisa Elza Clara da Cruz', 'Rua Portugal', 341, 'Quinta da Boa Vista', 'Aparecida de Goiânia', 'GO', 74964350, 2),
		(3, 69985751725, 'Bernardo Calebe Emanuel Melo', 'Avenida Presidente Dutra', 378, 'Baixa União', 'Porto Velho', 'RO', 76805859, 3),
		(4, 33985922735, 'Gabriela Eduarda Mariah da Rocha', 'Rua Doutor Sebastião Figueiredo', 600, 'Centro', 'Águas Formosas', 'MG', 39880970, 4),
		(5, 98989133601, 'Luna Juliana da Costa', 'Rua Macapá', 191, 'Planalto Turu', 'São Luís', 'MA', 65066667, 5),
		(6, 91987544520, 'Mário Bento da Cunha', 'Travessa J', 788, 'Águas Brancas', 'Ananindeua', 'PA', 67033530, 6);
	
	
		/* Pedidos registrados */
INSERT INTO public.pedido_portugol
(codigo_pedido, codigo_cliente, data_pedido, valor_total)
VALUES	(1, 1, '2022-04-03', 166.40),
		(2, 2, '2022-04-03', 299.90),
		(3, 3, '2022-04-04', 2199.20),
		(4, 4, '2022-04-04', 859.60),
		(5, 5, '2022-04-05', 1403.60),
		(6, 3, '2022-04-05', 2842.20);
	
	
	
		/* Itens dos pedidos cadastrados acima */
INSERT INTO public.item_pedido
(codigo_item_pedido, codigo_pedido, codigo_produto, qtde_comprada)
VALUES	(1, 1, 2, 1),
		(2, 1, 3, 1),
		(3, 2, 8, 1),
		(4, 3, 9, 2),
		(5, 3, 12, 10),
		(6, 3, 8, 5),
		(7, 4, 15, 20),
		(8, 4, 13, 20),
		(9, 5, 7, 3),
		(10, 5, 1, 1),
		(11, 5, 10, 1),
		(12, 6, 5, 2);



		/* Informação dos pagamentos dos pedidos cadastrados acima */
INSERT INTO public.pagamento
(codigo_pagamento, codigo_pedido, forma_pagamento, data_pagamento)
VALUES	(1, 1, 'PIX', '2022-04-03'),
		(2, 2, 'BOLETO', '2022-04-06'),
		(3, 3, 'BOLETO', '2022-04-07'),
		(4, 4, 'PIX', '2022-04-04'),
		(5, 5, 'PIX', '2022-04-05'),
		(6, 6, 'PIX', '2022-04-05');