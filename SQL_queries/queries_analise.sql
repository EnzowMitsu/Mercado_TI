-- Retorna o salário médio de todas as vagas
SELECT 
	COUNT(*) AS "Total de vagas",
	ROUND(AVG(salario),2) AS "Media dos salários" 
FROM Vaga;

-- Retorna a média salarial, maior salário e menor salário por tipo de contrado
SELECT 
	tipo_contrato AS "Tipo do contrado", ROUND(AVG(salario),2) AS "Media", 
	MAX(salario) AS "Maior", MIN(salario) AS "Menor"
FROM Vaga GROUP BY tipo_contrato;

-- Retorna os 10 maiores salários 
SELECT 
	titulo_vaga AS "Nome vaga",
	salario AS "Salário"
FROM Vaga 
ORDER BY salario DESC
LIMIT 10;

-- Retorna a quantidade de vagas com salários maiores que 5000 reais
SELECT 
	COUNT(salario) AS "Quantidade das vagas com salário maior que 5000"
FROM Vaga 
WHERE salario > 5000

-- Retorna a quantidade de vagas separadas por tipo de contrato (CLT, PJ)
SELECT 
	tipo_contrato AS "Tipo do contrato", 
	COUNT(*) AS "Quantidade" 
FROM Vaga 
WHERE tipo_contrato = 'CLT' OR tipo_contrato = 'PJ'
GROUP BY tipo_contrato;

-- Retorna a quantidade de vagas separadas por nível de experiência
SELECT 
	nivel_experiencia AS "Nível de experiencia", 
	COUNT(*) AS "Quantidade" 
FROM Vaga 
GROUP BY nivel_experiencia;

-- Retorna a média salarial por nível de experiência
SELECT 
	nivel_experiencia AS "Nível de experiencia", 
	ROUND(AVG(salario),2) AS "Média"
FROM Vaga 
GROUP BY nivel_experiencia;

-- Retorna a quantidade de empresas por porte (pequeno, médio ou grande)
SELECT 
	porte, 
	COUNT(*) AS "Quantidade" 
FROM Empresa 
GROUP BY porte;

-- Retorna a quantidade de vagas por tipo de modalidade
SELECT CASE
	WHEN id_modalidade = 1 THEN 'Presencial'
	WHEN id_modalidade = 2 THEN 'Remoto'
END AS "Tipo da modalidade", COUNT(*) AS "Quantidade"
FROM Vaga 
GROUP BY id_modalidade


-- Retorna as 3 habilidades mais requisitadas
SELECT 
	h.nome_habilidade AS "Habilidade", COUNT(*) AS "Quantidade"
FROM Vaga_Habilidade vh 
	JOIN Habilidade h ON vh.id_habilidade = h.id_habilidade
GROUP BY h.id_habilidade 
ORDER BY "Quantidade" DESC 
LIMIT 3;

-- Retorna a quantidade de vagas por estado
SELECT 
	l.estado AS "Estado", 
	COUNT(*) AS "Quantidade"
FROM Vaga v 
JOIN Localizacao l ON v.id_localizacao = l.id_localizacao
GROUP BY "Estado" 
ORDER BY "Quantidade" DESC;

-- Retorna a média salarial por função do profissional
SELECT 
	f.nome_funcao AS "Função", 
	ROUND(AVG(v.salario),2) AS "Média salarial"
FROM Vaga v 
JOIN Funcao f ON v.id_funcao = f.id_funcao
GROUP BY f.nome_funcao 
ORDER BY "Média salarial" DESC;

-- Retorna a média de salários por estado
SELECT 
	l.estado AS "Estado", 
	ROUND(AVG(salario),2) AS "Média salarial"
FROM Vaga v 
JOIN Localizacao l ON v.id_localizacao = l.id_localizacao
GROUP BY l.estado 
ORDER BY "Média salarial" DESC;
  
/* Encontrar o maior e o menor salário de cada empresa, 
somente para empresas que têm mais de duas vagas cadastradas. */
SELECT 
	e.nome_empresa, 
	MAX(v.salario) AS "Maior salário", 
	MIN(v.salario) AS "Menor salário"
FROM Vaga v 
JOIN Empresa e ON v.id_empresa = e.id_empresa
GROUP BY e.id_empresa 
HAVING COUNT(v.id_vaga) > 1;

-- Retorna a média de salário por função e a modalidade
SELECT 
	e.nome_empresa AS "Empresa",
	m.nome_modalidade AS "Modalidade",
	f.nome_funcao AS "Função",
	ROUND(AVG(v.salario),2) AS "Media de salário"
FROM Vaga v 
JOIN Empresa e ON v.id_empresa = e.id_empresa
JOIN Modalidade m ON v.id_modalidade = m.id_modalidade
JOIN Funcao f ON v.id_funcao = f.id_funcao
GROUP BY 1,2,3 
ORDER BY "Empresa", "Modalidade" DESC;

-- Retorna o maior salário por função de cada empresa
SELECT 
	e.nome_empresa AS "Empresa",
	f.nome_funcao AS "Função",
	MAX(v.salario) AS "Maior"
FROM Vaga v 
JOIN Empresa e ON v.id_empresa = e.id_empresa
JOIN Funcao f ON v.id_funcao = f.id_funcao
GROUP BY 1,2 
ORDER BY "Função", "Maior" DESC;

-- Retorna as habilidades mais requisitadas por função
SELECT 
	f.nome_funcao AS "Função",
	h.nome_habilidade AS "Habilidade",
	COUNT (h.nome_habilidade) AS "Quantidade de empresas que pedem"
FROM Vaga v 
JOIN Funcao f ON v.id_funcao = f.id_funcao
JOIN Vaga_Habilidade vh ON v.id_vaga = vh.id_vaga
JOIN Habilidade h ON vh.id_habilidade = h.id_habilidade
GROUP BY 1,2 
ORDER BY "Função", COUNT(h.nome_habilidade) DESC;

-- Retorna as 5 empresas que tem a maior média salarial
SELECT 
	e.nome_empresa AS "Empresa",
	ROUND(AVG(v.salario),2) AS "Média"
FROM Vaga v 
JOIN Empresa e ON v.id_empresa = e.id_empresa
GROUP BY 1 
ORDER BY "Média" DESC
LIMIT 5;

-- Retorna onde cada empresa está localizada
SELECT 
	e.nome_empresa AS "Empresa", l.estado 
FROM empresa e 
JOIN vaga v ON e.id_empresa = v.id_empresa
JOIN localizacao l ON l.id_localizacao = v.id_localizacao



