# Análise do Mercado de Trabalho em TI - PostgreSQL, Excel e Power BI

## 📝 Descrição do projeto
Este projeto tem como objetivo analisar o mercado de trabalho na área de TI no Brasil.
Nesse projeto, os dados foram gerados artificialmente. Com o foco de praticar criação de tabelas, inserção de dados (inserts) e consultas SQL no PostgreSQL, 
além de explorar análises com Excel e dashboards no Power BI.

Apesar de os dados serem fictícios, o projeto permite simular situações reais do mercado, 
respondendo a perguntas sobre salários, cargos, habilidades mais requisitadas, tipos de contrato e distribuição geográfica das vagas.

## 🛠️ Ferramentas
- PostgreSQL 
- Excel
- Power BI
- SQL

## 🗄️Tabelas do Banco de Dados
- Empresa – Armazena informações sobre as empresas, incluindo nome, setor e porte.
- Localizacao – Contém cidades, estados e países das vagas de emprego.
- Niveis – Define os níveis de experiência para as vagas.
- Habilidade – Lista as habilidades requeridas nas vagas.
- Funcao – Guarda os cargos/funções das vagas.
- Modalidade – Define o tipo de trabalho: presencial ou remoto.
- Vaga – Centraliza as informações das vagas, ligando empresa, função, localização, modalidade, nível de experiência, tipo de contrato e salário.
- Vaga_Habilidade – Relaciona as vagas às habilidades exigidas e ao nível necessário, permitindo múltiplas habilidades por vaga.

## ❓ Perguntas
Este projeto busca responder algumas das seguintes questões:

- Quais são as habilidades mais requisitadas no mercado de TI?
- Quais cargos possuem maior número de oportunidades e melhores salários?
- Qual é a média salarial das vagas por nível de experiência?
- Quais tipos de contrato (CLT, PJ, Estágio) são mais comuns?
- Qual é a distribuição de vagas por estado e modalidade (remoto/presencial)?
- Existem diferenças significativas entre vagas para nível básico, intermediário e avançado?

## 💡 Insights obtidos

- Habilidades mais demandadas: SQL, Python, AWS e Power BI são as competências mais requisitadas, mostrando a forte demanda por análise de dados e tecnologias em nuvem.
- Cargos e salários: Engenheiros e cientistas de dados são os cargos mais bem pagos, mostrando que funções técnicas e de alta complexidade têm maior valorização no mercado de TI.
- Contrato e modalidade: A maioria das vagas é CLT, mas o trabalho remoto é predominante, mostrando a tendência de flexibilidade no mercado de TI.
- Níveis de experiência: Cargos para níveis avançados e intermidiários exigem mais habilidades e experiência, oferecendo salários mais altos e maior competitividade.
- Distribuição geográfica: Estados com grandes centros urbanos, como São Paulo, concentram mais vagas, mas estados como Rio de Janeiro apresentam médias salariais maiores.
