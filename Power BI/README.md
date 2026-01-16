# 🔍 Análises usando Power BI
- ***Após a modelagem dos dados no PostgreSQL, esses dados foram importados para o PowerBI com o objetivo de criar um dashboard interativo para permitir uma visualização mais clara sobre os dados e padrões no mercado de TI.***

## 🗒️Medidas
- ***Ao decorrer da criação do dashboards, foram criadas medidas no PowerBI para calcular indicadores como salários e a quantidade de vagas.***
  
- Calcular o maior salário. ( usado para o indicador de maior salário )
```DAX
Maior_salário = MAX(Vaga[salario])
```

- Calcular o menor salário. ( usado para o indicador de menor salário )
```DAX
Menor_salário = MIN(Vaga[salario])
```

- Calcular a média salarial. ( usado para o indicador de média salarial )
```DAX
Salário_médio = AVERAGE(Vaga[salario])
```

- Calcular a quantidade de vagas. ( usado para o gráfico de vagas por função )
```DAX
Total_vagas = COUNT(Vaga[id_vaga])
```

- Calcular a quantidade de vagas por cidade. ( usado para o gráfico de vagas por estado )
```DAX
Vaga_por_cidade = COUNTROWS(Vaga)
```

## 📊 Gráficos

### Cards
  - Os cards permitem uma visão rápida sobre os salários das vagas, como o maior salário, menor salário e a média salarial.
  - Os valores são atualizados dinamicamente onforme os filtros selecionados.

### Filtros por estado e cargo
  - Os filtros interativos facilitam a análise dos dados e possibilitam uma análise rápida e dinâmica por estado e cargo.

### Gráficos de barras
   - Os gráficos de barras permitem uma visualização sobre vagas por função, o total de cada habilidade que as empresas exigem e a quantidade de vagas por estado.
   - Vendo o gráfico de habilidades, podemos identificar que dentre todas as habilidades, Python é a mais requisitada, com aproximadamente 48 vagas exigindo essa linguagem.
   - Pelo gráfico de vagas por função, podemos visualizar que algumas vagas apresentam a mesma quantidade de registros.
   - No gráfico de vagas por estado, o gráfico indica que o estado de São Paulo apresenta a maior quantidade de vagas dentre os demais estados, com aproximadamente 47 vagas.

### Gráfico de rosca
  - O gráfico de rosca permite a visualização da porcentagem de vagas presenciais e remotas.
  - O gráfico indica que a modalidade presencial apresenta uma porcentagem um pouco maior das vagas em relação a vagas remotas.
 
### Mapa geográfico
  - O mapa geográfico permite a indentificação de vagas por estado de uma forma mais dinâmica em comparação aos gráficos de barras.
  - Entre todas as vagas, podemos visualizar que São Paulo realmente concentra a maior parte das vagas.






