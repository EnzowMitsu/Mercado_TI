-- Criação das tabelas para o banco de dados do Projeto Mercado TI

-- Criação da tabela Empresa
CREATE TABLE Empresa (
id_empresa SERIAL PRIMARY KEY, -- Coluna ID da empresa (Identificador único)
nome_empresa VARCHAR(100), -- Coluna com o nome da empresa
setor VARCHAR(50), -- Coluna com o setor da empresa
porte VARCHAR(20) -- Coluna com o porte da empresa
);

-- Criação da tabela Localização
CREATE TABLE Localizacao (
id_localizacao SERIAL PRIMARY KEY, -- Coluna ID da localização(Identificador único)
cidade VARCHAR(100), -- Coluna com o nome da cidade
estado VARCHAR(50), -- Coluna com o nome do estado
pais VARCHAR(50) -- Coluna com o nome do país
);

-- Criação da tabela Níveis de experiência
CREATE TABLE Niveis (
id_nivel SERIAL PRIMARY KEY, -- Coluna ID do nível (Identificador único)
nome_nivel VARCHAR(50) -- Coluna com o nome do nível de experiência
);

-- Criação da tabela Habilidade
CREATE TABLE Habilidade (
id_habilidade SERIAL PRIMARY KEY, -- Coluna ID da habilidade (Identificador único)
nome_habilidade VARCHAR(100) -- Coluna com o nome da habilidade
);

-- Criação da tabela Função
CREATE TABLE Funcao (
id_funcao SERIAL PRIMARY KEY, -- Coluna ID da função (Identificador único)
nome_funcao VARCHAR(50) -- Coluna com o nome da função
);

-- Criação da tabela Modalidade
CREATE TABLE Modalidade(
id_modalidade SERIAL PRIMARY KEY, -- Coluna ID da modalidade (Identificador único)
nome_modalidade VARCHAR(10) -- Coluna com o nome da modalidade
);

-- Criação da tabela Vaga
CREATE TABLE Vaga(
id_vaga SERIAL PRIMARY KEY, -- Coluna ID da vaga (Identificador único)
titulo_vaga VARCHAR(50), -- Coluna com o título da vaga
id_empresa INT references Empresa(id_empresa), -- Chave estrangeira referenciando a tabela Empresa
id_funcao INT references Funcao(id_funcao), -- Chave estrangeira referenciando a tabela Função
id_localizacao INT references Localizacao(id_localizacao), -- Chave estrangeira referenciando a tabela Localização
id_modalidade INT references Modalidade(id_modalidade), -- Chave estrangeira referenciando a tabela Modalidade
nivel_experiencia VARCHAR(20), -- Coluna com o nível de experiência requerido
tipo_contrato VARCHAR(10), -- Coluna com o tipo de contrato
salario DECIMAL(10,2), -- Coluna com o salário 
data_postagem DATE -- Coluna com a data de postagem da vaga
);

-- Criação da tabela Vaga_Habilidad
CREATE TABLE Vaga_Habilidade (
PRIMARY KEY (id_vaga, id_habilidade), -- Chave primária composta com o id da vaga e o id da habilidade
id_vaga INT REFERENCES Vaga(id_vaga), -- Chave estrangeira referenciando a tabela Vaga
id_habilidade INT REFERENCES Habilidade(id_habilidade), -- Chave estrangeira referenciando a tabela Habilidade
id_nivel INT REFERENCES Niveis(id_nivel) -- Chave estrangeira referenciando a tabela Níveis
)

