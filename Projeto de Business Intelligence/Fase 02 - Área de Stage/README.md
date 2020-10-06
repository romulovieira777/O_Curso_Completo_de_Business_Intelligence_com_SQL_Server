## Construção do Ambiente Stage
#### Entrega dos Artefatos Fase 02

Em necessidades macro, o projeto foi dividido em 04 grandes fases:

- [x] Fase 01: Construção do ambiente OLTP.
- [x] Fase 02: Construção da área de Stage.
- [ ] Fase 03: Construção do Datawarehouse.
- [ ] Fase 04: Ferramentas de análise de dados.

[As Quatro Fases do Projeto](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001%20-%20Ambiente%20OLTP/Documento%20de%20Requesitos/Quatro%20Fases%20da%20Modelagem.jpg)
<br>
<img height="400" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001%20-%20Ambiente%20OLTP/Documento%20de%20Requesitos/Quatro%20Fases%20da%20Modelagem.jpg"/>
</br>

[Área de Stage Criada](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Modelagem/%C3%81rea%20de%20Stage.jpg)
<br>
<img height="400" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Modelagem/%C3%81rea%20de%20Stage.jpg"/>
</br>

A modelagem lógica foi feita usando o programa StarUML e física no Microsft SQL Server Management Studio versão 2017 (SSMS) com base na modelagem lógica.

[Arquivos em SQL](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/tree/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Scripts)

Foi feita a extração dos dados e o carregamento das informações (ETL) para a área de stage conforme imagem:

[Arquivo em JPG](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Modelagem/As%20Tr%C3%AAs%20Fases%20do%20Projeto.jpg)
<br>
<img height="200" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Modelagem/As%20Tr%C3%AAs%20Fases%20do%20Projeto.jpg"/>
</br>

As tabelas carregadas na área de stage são elas:

**Tabela ST_CLIENTE**
| Identificação | Descrição                     |
|---------------|-------------------------------|
| IDCliente     | Identificação do cliente      |
| Nome          | Nome do cliente               |
| Sexo          | Sexo do cliente               |
| Nascimento    | Data do nascimento do cliente |
| Cidade        | Cidade onde o cliente reside  |
| Estado        | Estado onde o cliente reside  |
| Região        | Região onde o cliente reside  |

**Tabela ST_VENDEDOR**
| Identificação | Descrição                 |
|---------------|---------------------------|
| IDVendedor    | Identificação do vendedor | 
| Nome          | Nome do vendedor          |
| Sexo          | Sexo do vendedor          |
| IDGerente     | Identificação do gerente  |

**Tabela ST_Categoria**
| Identificação | Descrição                  |
|---------------|----------------------------|
| IDCategotia   | Identificação da categoria |
| Nome          | Nome da categoria          |

**Tabela ST_FORNECEDOR**
| Identificação | Descrição                   |
|---------------|-----------------------------|
| IDFornecedor  | Identificação do fornecedor |
| Nome          | Nome do fornecedor          |

**Tabela ST_PRODUTO**
| Identificação  | Descrição                  |
|----------------|----------------------------|
| IDProduto      | Identificação do produto   |
| Nome           | Nome do produto            |
| Valor Unitário | Valor unitário do produto  |
| Custo Médio    | Custo médio dos produtos   |
| IDCategoria    | Identificação da categoria |

**Tabela ST_NOTA**
| Identificação | Descrição                    |
|---------------|------------------------------|
|IDNota         | Identificação da nota fiscal |

**Tabela ST_FORMA**
| Identificação | Descrição                           |
|---------------|-------------------------------------|
| IDForma       | Identificação da forma de pagamento |
| Forma         | Forma de pagamento                  |

**Tabela FATO**
| Identificação | Descrição                           |
|---------------|-------------------------------------|
| IDCliente     | Identificação do cliente            |
| IDVendedor    | Identificação do vendedor           |
| IDProduto     | Identificação do produto            |
| IDFornecedor  | Identificação do fornecedor         |
| IDNota        | Identificação da nota fiscal        |
| IDForma       | Identificação da forma de pagamento |
| Quantidade    | Quantidade de produtos              |
| Total Item    | Total dos itens                     |
| Data          | Data da compra                      |
| Custo Total   | Custo total da nota                 |
| Lucro Total   | Lucro total da nota                 |

Segue abaixo o controle do fluxo e o fluxo de dados criados no SQL Server Integration Services (SSIS):

[Arquivos em JPG](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/tree/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes)

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20Stage%20Categoria.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20Stage%20Categoria.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20Stage%20Cliente.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20Stage%20Cliente.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20Stage%20Forma.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20Stage%20Forma.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20Stage%20Fornecedor.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20Stage%20Fornecedor.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20Stage%20Nota.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20Stage%20Nota.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20Stage%20Produto.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20Stage%20Produto.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20Stage%20Vendedor.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20Stage%20Vendedor.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20Stage%20Fato.jpg"/>
<br/>

<br>
<img height="500" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20Stage%20Fato.jpg"/>
<br/>
