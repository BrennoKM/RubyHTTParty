# RubyHTTParty

Automação de testes de API utilizando **Cucumber**, **Ruby**, **HTTParty** e **RSpec**.

## 🔹 Estrutura do Projeto

```
.  
├── cucumber.yml  
├── features  
│ ├── assertions # Validações dos testes  
│ │ └── employee.assertions.rb  
│ ├── bdd # Features escritas em Gherkin  
│ │ └── employee.feature  
│ ├── requests # Classes para requisições HTTP  
│ │ └── employee_request.rb  
│ ├── step_definitions # Step definitions do Cucumber  
│ │ └── employee.step.rb  
│ └── support # Arquivos de suporte  
│   ├── base_url.rb  
│   ├── database.rb  
│   └── env.rb  
├── Gemfile # Gems do projeto  
├── Gemfile.lock  
├── README.md  
└── relatorio.html # Relatório gerado após execução

````

## 🔹 Pré-requisitos

- Ruby >= 3.4  
- Bundler  
- Acesso à internet (para chamadas à API de teste)  

## 🔹 Instalação

1. Clone o repositório:

```bash
git clone https://github.com/BrennoKM/RubyHTTParty.git
cd RubyHTTParty
````

2. Instale as dependências do projeto:
    

```bash
bundle install
```

3. (Opcional) Configure variáveis de ambiente ou dados de teste conforme necessário no arquivo `features/support/database.rb`

## 🔹 Executando os testes

Para rodar todos os testes:

```bash
bundle exec cucumber
```

Para rodar um cenário específico usando tags:

```bash
bundle exec cucumber -t @cenario_get     # Teste de consulta de funcionários
bundle exec cucumber -t @cenario_post    # Teste de criação de funcionário
bundle exec cucumber -t @cenario_put     # Teste de atualização de funcionário
bundle exec cucumber -t @cenario_delete  # Teste de exclusão de funcionário
```

Para gerar relatórios dos testes use:

```bash
bundle exec cucumber --format html --out=relatorio.html
```

## 🔹 Estrutura do Projeto

O projeto segue o padrão de organização para testes de API:

- `employee_request.rb` → Classe com métodos para requisições HTTP (GET, POST, PUT, DELETE)
- `employee.assertions.rb` → Validações customizadas para os testes
- `base_url.rb` → Configuração da URL base da API usando HTTParty
- `database.rb` → Dados de teste (nomes, salários, idades)
- `employee.feature` → Cenários de teste escritos em Gherkin
- `employee.step.rb` → Implementação dos steps do Cucumber

## 🔹 Relatórios

Após execução, é gerado um relatório em `relatorio.html`.  
Você pode abrir no navegador para visualizar o status dos testes.  

## 🔹 API Testada

Este projeto testa a API REST do **dummy.restapiexample.com**, que oferece endpoints para:

- **GET** `/api/v1/employees` - Listar funcionários
- **POST** `/api/v1/create` - Criar funcionário
- **PUT** `/api/v1/update/{id}` - Atualizar funcionário
- **DELETE** `/api/v1/delete/{id}` - Deletar funcionário

## 🔹 Cenários de Teste

- ✅ **Consulta de funcionários** - Verifica se a API retorna a lista de funcionários
- ✅ **Cadastro de funcionário** - Testa a criação de um novo funcionário
- ✅ **Atualização de funcionário** - Testa a atualização de dados de um funcionário
- ✅ **Exclusão de funcionário** - Testa a remoção de um funcionário

## 🔹 Tecnologias Utilizadas

- **Ruby** - Linguagem de programação
- **Cucumber** - Framework BDD para escrita de cenários
- **HTTParty** - Gem para requisições HTTP
- **RSpec** - Framework de expectativas/assertions
- **Gherkin** - Linguagem para escrita dos cenários de teste
    