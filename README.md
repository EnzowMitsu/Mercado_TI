# Análise sobre o mercado de TI - SQL, PowerBI

## 📝 Descrição
- Este projeto foi criado para realizar a análise sobre as vagas no mercado de TI, utilizando o banco de dados PostgreSQL, desde a criação de tabelas,
inserções na tabela até a realização das análises. Foram exploradas informações como salários, cargos, localização, modalidades de trabalho e habilidades mais requisitadas.
- Também foi usada a ferramente PowerBI para a criação de dashboards, permitindo visualizações mais dinâmicas e intuitivas dos dados analisados.

## 🛠️ Ferramentas
- PostgreSQL
- SQL
- Power BI

## 🎲 Dados
- Os dados utilizados neste projeto foram gerados com auxílio de um inteligência artificial, com o objetivo de simular um cenário do mercado de trabalho em TI.
  
## 🗄️ Estrutura do banco de dados
- Empresa: armazena informações das empresas que publicam as vagas, como nome, setor e porte.
- Localização: contém os dados geográficos associados às vagas, incluindo cidade, estado e país.
- Níveis: registra os níveis de experiência exigidos para as vagas e habilidades.
- Habilidade: armazena as habilidades técnicas requeridas nas vagas.
- Função: representa os cargos ou funções disponíveis no mercado de TI.
- Modalidade: define o tipo de trabalho da vaga, como presencial, remoto ou híbrido.
- Vaga: tabela central que reúne as informações principais das vagas, como título, empresa, função, localização, modalidade, tipo de contrato, salário e data de postagem.
- Vaga_Habilidade: tabela associativa que relaciona vagas e habilidades, permitindo indicar o nível de experiência exigido para cada habilidade em uma vaga.
