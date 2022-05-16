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