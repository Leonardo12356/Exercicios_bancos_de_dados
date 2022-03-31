# Exercicios_bancos_de_dados
Construir o Modelo Entidade- Relacionamento e em seguida o lógico (gráfico e textual) 
para as questões a seguir:


1)Elaborar um diagrama E-R para uma seguradora de automóveis 
Entidades: Cliente, Apólice, Carro e Acidentes.
Requisitos:

a) Um cliente pode ter várias apólices (no mínimo uma);

b) Cada apólice somente dá cobertura a um carro;

c) Um carro pode ter zero ou n registros de acidentes a ele.

Atributos:

a) Cliente: Número, Nome e Endereço;

b) Apólice: Número e Valor;

c) Carro: Registro e Marca;

d) Acidente: Data, Hora e Local;


2) Elaborar um diagrama para uma Indústria.

Entidades: Peças, Depósitos, Fornecedor, Projeto, Funcionário e Departamento. 


Requisitos:

b) Cada Funcionário pode estar alocado a somente um Departamento;
c) Cada Funcionário pode pertencer a mais de um Projeto;
d) Um projeto pode utilizar-se de vários Fornecedores e de várias Peças;
e) Uma Peça pode ser fornecida por vários Fornecedores e atender a vários Projetos;
f) Um Fornecedor pode atender a vários Projetos e fornecer várias Peças;
g) Um Depósito pode conter várias Peças;
h) Deseja-se ter um controle do material utilizado por cada Projeto, identificando inclusive o seu Fornecedor. 
Gravar as informações de data de Início e Horas Trabalhadas no Projeto.



Atributos:

a) Peças: Número, Peso e Cor;
b) Depósito: Número e Endereço;
c) Fornecedor: Número e Endereço;
d) Projeto: Número e Orçamento;
e) Funcionário: Número, Salário e Telefone;
f) Departamento: Número e Setor.


3) Projetar um Banco de Dados satisfazendo as seguintes restrições e requisitos:

a) Para um Vendedor, armazenar seu código, nome, endereço e comissão;

b) Para um Cliente, armazenar o seu código, nome, endereço, faturamento acumulado e limite de crédito. 
Além disso, armazenar o código e o nome do vendedor que o atende. Um vendedor pode atender muitos clientes, 
porém um cliente deve ser atendido por exatamente um vendedor;

c) Para uma peça, armazenar seu código, descrição, preço quantidade em estoque e o número do armazém onde a peça está estocada. 
Uma peça somente pode estar estocada num único armazém. Para um armazém, armazenar seu código e endereço;

d) Para um pedido, armazenar seu número, data, código, nome e endereço do cliente, que fez o pedido e o código do vendedor para cálculo da comissão. 
Além disso, para cada item do pedido armazenar o código da peça, quantidade e preço cotado. 
Há somente um cliente por pedido e um vendedor;

e) O preço cotado no pedido pode ser mesmo que o preço corrente no arquivo de peças, mas não necessariamente.
