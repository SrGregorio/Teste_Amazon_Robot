*** Settings ***

Resource        ../pages/AmazonHomePage.pages.robot


Test Setup          Start Test
Test Teardown       Finish Test       

*** Test Cases ***

Cenário 01 - Fazer validação de um usuário invalido
    [Documentation]     Esse teste utiliza um usuário invalido, validando a mensagem
    ...                 de erro "Houve um erro, Não encontramos uma conta associada a este endereço de e-mail"
    [Tags]              login_usuario
    Dado que o usuario esteja na home page da Amazon
    Quando clicar em faca login
    E inserir um e-mail
    E clicar no botao continuar
    Entao deve ser exibido a mensagem "Houve um problema"

Cenário 02 - Adicionar produto ao carrinho e validar
    [Documentation]     Nesse teste adiciono um produto ao carrinho e valido
    [Tags]              produto_carrinho
    Dado que o usuario esteja na home page da Amazon
    Quando clicar no menu TODOS
    E clicar em Mais Vendidos
    E clicar no produto Cadeira Gamer Profissional TGC12 Preta ThunderX3
    E adicionar ao carrinho
    E clicar no botao sem garantia do produto
    Entao deve ser validado que o produto adicionado se encontra no carrinho    