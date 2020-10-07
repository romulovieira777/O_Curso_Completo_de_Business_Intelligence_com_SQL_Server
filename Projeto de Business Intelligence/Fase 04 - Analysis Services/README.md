## Construção do Ambiente Analysis Services
#### Entrega dos Artefatos Fase 04

Em necessidades macro, o projeto foi dividido em 04 grandes fases:

- [x] Fase 01: Construção do Ambiente OLTP.
- [x] Fase 02: Construção da Área de Stage.
- [x] Fase 03: Construção do Data Warehouse.
- [x] Fase 04: Ferramentas de Análise de Dados.

[As Quatro Fases do Projeto](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001%20-%20Ambiente%20OLTP/Documento%20de%20Requesitos/Quatro%20Fases%20da%20Modelagem.jpg)
<br>
<img height="400" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2001%20-%20Ambiente%20OLTP/Documento%20de%20Requesitos/Quatro%20Fases%20da%20Modelagem.jpg"/>
</br>

As tabelas carregadas no Analysis Services são elas:

[**Arquivo em DIM**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/tree/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analyis%20Services/Projeto%20OLAP)

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

Segue abaixo a criação no SSAS (SQL Server Analysis Services):

[**Arquivo em JPG**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/tree/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analyis%20Services/Modelagem)

[**BASE DE DADOS**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/BASE_DADOS.jpg)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/BASE_DADOS.jpg"/>
</br>

[**CUBO**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/CUBO.jpg)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/CUBO.jpg"/>
</br>

[**DIM CLIENTE**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_CLIENTE.jpg)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_CLIENTE.jpg"/>
</br>

[**DIM VENDEDOR**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_VENDEDOR.jpg)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_VENDEDOR.jpg"/>
</br>

[**DIM FORMA**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_FORMA.jpg)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_FORMA.jpg"/>
</br>

[**DIM FORNECEDOR**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_FORNECEDOR.jpg)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_FORNECEDOR.jpg"/>
</br>

[**DIM NOTA**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_NOTA.jpg)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_NOTA.jpg"/>
</br>

[**DIM PRODUTO**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_PRODUTO.jpg)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_PRODUTO.jpg"/>
</br>

[**DIM TEMPO**](https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_TEMPO.jpg)
<br>
<img height="550" src="https://github.com/romulovieira777/Business_Intelligence_SQL_Server/blob/master/Projeto%20de%20Business%20Intelligence/Fase%2004%20-%20Analysis%20Services/Modelagem/DIM_TEMPO.jpg"/>
</br>
