## Construção do DataWarehouse
#### Entrega dos Artefatos Fase 03

Em necessidades macro, o projeto foi dividido em 04 grandes fases:

- [x] Fase 01: Construção do ambiente OLTP.
- [x] Fase 02: Construção da área de Stage.
- [x] Fase 03: Construção do Datawarehouse.
- [ ] Fase 04: Ferramentas de análise de dados.

[As Quatro Fases do Projeto](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001%20-%20Ambiente%20OLTP/Documento%20de%20Requesitos/Quatro%20Fases%20da%20Modelagem.jpg)
<br>
<img height="400" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001%20-%20Ambiente%20OLTP/Documento%20de%20Requesitos/Quatro%20Fases%20da%20Modelagem.jpg"/>
</br>

A modelagem lógica foi feita usando o programa StarUML e física no Microsft SQL Server Management Studio versão 2017 (SSMS) com base na modelagem lógica.

[Arquivo em JPG](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Modelagem/Modelagem%20L%C3%B3gica%20DW.png)
<br>
<img height="600" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Modelagem/Modelagem%20L%C3%B3gica%20DW.png"/>
</br>

[Arquivos em SQL](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/tree/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Scripts)

Foi feita a extração dos dados e o carregamento das informações (ETL) para o DataWahrehouse conforme imagem:

[Arquivo em JPG](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Modelagem/As%20Tr%C3%AAs%20Fases%20do%20Projeto.jpg)
<br>
<img height="200" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2002%20-%20%C3%81rea%20de%20Stage/Modelagem/As%20Tr%C3%AAs%20Fases%20do%20Projeto.jpg"/>
</br>

As tabelas carregadas no DataWarehouse são elas:

**Tabela DIM_CLIENTE**
| Identificação | Descrição                       |
|---------------|---------------------------------|
| IDSK          | Identificação da chave primária |
| IDCliente     | Identificação do cliente        |
| Inicio        | Inicio de alteração do nome     |
| Fim           | Fim da alteração do nome        |
| Nome          | Nome do cliente                 |
| Sexo          | Sexo do cliente                 |
| Email         | Email do cliene                 |
| Nascimento    | Data do nascimento do cliente   |
| Cidade        | Cidade onde o cliente reside    |
| Estado        | Estado onde o cliente reside    |
| Região        | Região onde o cliente reside    |

**Tabela DIM_VENDEDOR**
| Identificação | Descrição                       |
|---------------|---------------------------------|
| IDSK          | Identificação da chave primária |
| IDVendedor    | Identificação do vendedor       |
| Inicio        | Inicio de alteração do nome     |
| Fim           | Fim da alteração do nome        |
| Nome          | Nome do vendedor                |
| Sexo          | Sexo do vendedor                |
| IDGerente     | Identificação do gerente        |

**Tabela DIM_Categoria**
| Identificação | Descrição                  |
|---------------|----------------------------|
| IDCategotia   | Identificação da categoria |
| Nome          | Nome da categoria          |

**Tabela DIM_FORNECEDOR**
| Identificação | Descrição                       |
|---------------|---------------------------------|
| IDSK          | Identificação da chave primária |
| IDFornecedor  | Identificação do fornecedor     |
| Inicio        | Inicio de alteração do nome     |
| Fim           | Fim da alteração do nome        |
| Nome          | Nome do fornecedor              |

**Tabela DIM_PRODUTO**
| Identificação  | Descrição                       |
|----------------|---------------------------------|
| IDSK           | Identificação da chave primária |
| IDProduto      | Identificação do produto        |
| Inicio         | Inicio de alteração do nome     |
| Fim            | Fim da alteração do nome        |
| Nome           | Nome do produto                 |
| Valor Unitário | Valor unitário do produto       |
| Custo Médio    | Custo médio dos produtos        |
| IDCategoria    | Identificação da categoria      |

**Tabela DIM_TEMPO**
| Identificação  | Descrição                       |
|----------------|---------------------------------|
| IDSK           | Identificação da chave primária |
| Data           | Data                            |
| Dias da Semana | Dia da semana descritivo        |
| Mês            | Número do mês                   |
| Nome do mês    | Nome do mês                     |
| Quarto         | Número do trimestre             |
| Nome do Quarto | Nome do trimestre               |
| Ano            | Número do ano                   |
| Estação do Ano | Estação do ano                  |
| Fim de semana  | Se é fim de semana              |
| Data completa  | Data por extenso                | 

**Tabela DIM_NOTA**
| Identificação | Descrição                       |
|---------------|---------------------------------|
| IDSK          | Identificação da chave primária |
| IDNota        | Identificação da nota fiscal    |

**Tabela DIM_FORMA**
| Identificação | Descrição                           |
|---------------|-------------------------------------|
| IDSK          | Identificação da chave primária     |
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
| IDTempo       | Data da compra                      |
| Custo Total   | Custo total da nota                 |
| Lucro Total   | Lucro total da nota                 |

Segue abaixo o controle do fluxo e o fluxo de dados criados no SSIS (SQL Server Integration Services):

[Arquivos em JPG](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/tree/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes)

[**Carga Dimensão Categoria**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/tree/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Projeto_BI)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20DW%20Categoria.jpg"/>
</br>

<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20DW%20Categoria.jpg"/>
</br>

[**Carga Dimensão Cliente**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/tree/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Projeto_BI)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20DW%20Cliente.jpg"/>
</br>

<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20DW%20Cliente.jpg"/>
</br>

[**Carga Dimensão Forma**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/tree/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Projeto_BI)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20DW%20Forma.jpg"/>
</br>

<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20DW%20Forma.jpg"/>
</br>

[**Carga Dimensão Fornecedor**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/tree/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Projeto_BI)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20DW%20Fornecedor.jpg"/>
</br>

<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20DW%20Fornecedor.jpg"/>
</br>

[**Carga Dimensão Nota**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/tree/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Projeto_BI)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20DW%20Nota.jpg"/>
</br>

<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20DW%20Nota.jpg"/>
</br>

[**Carga Dimensão Produto**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/tree/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Projeto_BI)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20DW%20Produto.jpg"/>
</br>

<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20DW%20Produto.jpg"/>
</br>

[**Carga Dimensão Vendedor**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/tree/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Projeto_BI)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Controle%20de%20Fluxo%20DW%20Vendedor.jpg"/>
</br>

<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2003%20-%20Datawarehouse/Pacotes/Imagens%20dos%20Pacotes/Fluxo%20de%20Dados%20DW%20Vendedor.jpg"/>
</br>
