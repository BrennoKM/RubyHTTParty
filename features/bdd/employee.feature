# language: pt

Funcionalidade: Pesquisar Funcionários
    Para averiguar informações
    O usuário do sistema
    Deseja  poder conulstar informações dos Funcionários

    @cenario_get
    Cenario: Buscar informações de funcionário
        Dado que o usuario consulte informacoes de funcionario
        Quando ele realizar a pesquisa
        Entao uma lista de funcionariso deve ser retornada

    @cenario_post
    Cenario: Cadastrar funcionário
        Dado que o usuario informe os dados do novo funcionario
        Quando ele enviar as informações do funcionário
        Entao esse funcionario sera cadastrado

    @cenario_put
    Cenario: Atualizar informações do funcionário
        Dado que o usuario informe os dados atualizados do funcionario
        Quando ele enviar as informações atualizadas do funcionário
        Entao as informações do funcionario serao atualizadas

    @cenario_delete
    Cenario: Deletar cadastro de funcionário
        Dado que o usuario queira deletar o cadastro de um funcionario
        Quando ele enviar a solicitação de exclusão com o ID do funcionario
        Entao o cadastro do funcionario sera deletado