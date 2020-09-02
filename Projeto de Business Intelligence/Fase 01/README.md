## Construção do Ambiente OLTP
#### Entrega dos Artefatos Fase 01
 
  
**Análise Geral**

O cliente Tera do ramo varejista, necessita armazenar seus dados através de um sistema que será construído posteriormente à modelagem do banco de dados.
A equipe de analistas Unidados iniciou o levantamento de requisitos em XXXXX conforme descrito nesse documento.

Em necessidades macro, o projeto foi dividido em 04 grandes fases:

- Fase 01: Construção do ambiente OLTP.
- Fase 02: Construção da área de Stage.
- Fase 03: Construção do Datawarehouse.
- Fase 04: Ferramentas de análise de dados.

[As Quatro Fases do Projeto](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001/Documento%20de%20Requesitos/Quatro%20Fases%20da%20Modelagem.jpg)
<br>
<img height="400" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001/Documento%20de%20Requesitos/Quatro%20Fases%20da%20Modelagem.jpg"/>
</br>

[Ambiente OLTP Criado](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001/Documento%20de%20Requesitos/Ambiente%20OLTP.jpg)
<br>
<img height="400" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001/Documento%20de%20Requesitos/Ambiente%20OLTP.jpg"/>
</br>


### Fase 01

A fase 01 compreende à modelagem relacional do negócio. O SGBD utilizado será o ***SQL Server 2017, versão Enterprise***. À UNIDADOS cabe somente a modelagem e construção do banco de dados em sua forma otimizada, ficando à cargo da Tera a sua manutenção como Backups e segurança.

**Artefatos - Entrega**

- **Modelagem Lógica**

[Arquivo em PNG](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001/Modelagem/Modelagem%20L%C3%B3gica%20OLTP.png)
<br>
<img height="400" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001/Modelagem/Modelagem%20L%C3%B3gica%20OLTP.png"/>
</br>

- **Modelagem Física**

[Script da Modelagem Física](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001/Scripts/01%20-%20Modelagem%20Comercio%20OLTP.sql)


- **Dicionário de Dados**

 -**Requisitos**

A Tera necessita armazenar os seus dados de vendas. O estoque não faz parte do escopo desse projeto, porém, utilizará dos produtos cadastrados nessa modelagem.

**Dos cadastros Gerais**

De forma geral, seguem os requisitos de cadastro abaixo.

01. Cadastro de Produtos
02. Cadastro de Fornecedores
03. Cadastro de Categorias
04. Cadastro de Notas Fiscais
05. Cadastro de Endereço de Clientes
06. Cadastro de Clientes
07. Cadastro de Formas de Pagamentos
08. Cadastro de vendedores (Os vendedores cuidam dos pedidos online, acompanhando os mesmos desde a origem até a entrega, otimizando e solucionando problemas.).

**Dos Campos**

**Todos os cadastros deverão ter números de identificação automáticos e aleatórios**, *de forma a deixar a cargo do sistema o controle de identificação de transações*.

| Cadastro    | Produto                    |
|-------------|----------------------------|
| Produto     | Nome do Produto            |
| Valor       | Valor de Venda do Produto  |
| Custo Médio | Custo de Compra do Produto |


| Cadastro | Fornecedor                       |
|----------|----------------------------------|
| Nome     | Nome ou Razão Social do Vendedor |


| Cadastro | Categoria                    |
|----------|------------------------------|
| Nome     | Nome da Categoria do Produto |


| Cadastro   | Nota Fiscal                    |
|------------|--------------------------------|
| Data       | Data da Venda do(s) Produto(s) |
| Quantidade | Quantidade de Itens            |
| Total Item | Valor Total dos Itens          |
| Total      | Valor Total da Nota Fiscal     |


| Cadastro | Endereço                          |
|----------|-----------------------------------|
| Rua      | Nome da Rua                       |
| Cidade   | Nome da Cidade                    |
| Estado   | Nome do Estado                    |
| Região   | Região (Norte, Sul, Sudeste, etc) |


|Cadastro    | Cliente                       |
|------------|-------------------------------|
| Nome       | Nome do Cliente               |
| Sobrenome	 | Sobrenome do Cliente          |
| Email	     | Endereço de E-mail completo   |
| Sexo       | Sexo do Cliente               |
| Nascimento | Data de Nascimento do Cliente |


| Cadastro | Forma de Pagamento         |
|----------|----------------------------|
| Forma	   | Nome da Forma de Pagamento |


| Cadastro | Vendedor          |
|----------|-------------------|
| Nome	   | Nome do Vendedor  |
| Sexo	   | Sexo do Vendedor  |
| Email	   | Email do Vendedor |


**Particularidades**

Requisitos levantados pela equipe quanto a detalhes do modelo de negócio da Tera. As particularidades são requisitos e são obrigatórios.

01. Nas vendas, uma nota fiscal pode conter um ou mais produtos, diferentes ou do mesmo tipo, contendo um subtotal de produtos do mesmo tipo e um total, com a soma de todos os produtos.
02. Os funcionários possuem gerentes, que deverão ser armazenados no banco de dados.


**Regras de Negócio Essenciais**

*Aqui foram analisadas as regras de negócio junto aos usuários da Tera. Os analistas da UNIDADOS listaram as principais, e caso surjam duvidas ou outras regras, estas deverão ser informadas para a equipe de analistas para que sejam implementadas no banco de dados.*

-	Um fornecedor pode fornece vários produtos.
-	Um cliente pode comprar várias vezes
-	Uma nota fiscal só pode ter uma forma de pagamento
-	Um vendedor pode emitir várias notas fiscais, mas uma nota só pode ser emitida por um vendedor.
-	Um cliente só pode ter um endereço
-	Um produto só pode pertencer a uma categoria.
-	Uma nota fiscal pode ter vários itens de nota.

**Constraints**

Abaixo segue o dicionário de constraints criadas no banco COMERCIO_OLTP

[Arquivo em JPG](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001/Modelagem/Constraint.jpg)
<br>
<img height="250" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001/Modelagem/Constraint.jpg"/>
</br>


**Script**

[Script da Criação das Constraints](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001/Scripts/12%20-%20Habilitando%20as%20Constraints.sql)

**Constraints Aplicadas**

[Arquivo em JPG](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001/Modelagem/Modelagem%20F%C3%ADsica.jpg)
<br>
<img height="600" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001/Modelagem/Modelagem%20F%C3%ADsica.jpg"/>
</br>

**Perguntas a serem respondidas pelo Datawarehouse**

-	Quem são os melhores clientes?
-	Quem são os melhores vendedores?
-	Qual categoria rende mais?
-	Qual a minha relação com os fornecedores?
-	Qual meu pior e melhor produto?
-	Em qual região eu vendo mais?

Entrevista com o manager da Tera, **João Carvalho.**

-Hoje vendemos muito, temos lucro, mas não sei qual **categoria, fornecedor ou produto** me dá mais lucro. **Não estou interessado em quantidade.** Preciso de analises sumarizadas. Hoje não me interessa saber quantas vendas tem um vendedor e sim o total vendido, pois os mesmos podem recomendar produtos para os nossos clientes. Também gostaria de sabe meus **custos** por **sazonalidade**. Preciso saber em que época do ano gasto mais para controlar meus investimentos em estoque ou contratações. Saber qual **cliente** compra mais comigo em termos totais também seria uma boa ideia. **Outra necessidade é um relatório com os dados dos meus clientes, pois a enviar mala direta vai ser uma prática da empresa**. Não estou seguro se uma análise por **categoria ou fornecedor** seria útil. A sua equipe também pode disponibilizar o que achar relevante para o negócio.

**Alteração de Requisitos:**

No dia xx/xx/xxxx a gerente de MKT, Maria de xxxx, solicitou ao analista xxxx a inclusão/alteração de requisitos descrita abaixo:
Coluna com nome único.
Sexo – Masculino e Feminino.
Produtos em padrão Camel Case.
