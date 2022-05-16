*** Settings ***    

Resource        ../components/components.robot 
Resource        ../pages/commons/hooks.pages.commons.robot

*** Keywords ***
Verificar pagina atraves da logomarca
    Page Should Contain Element     ${LOGO_AMAZON} 

Clicar em faca login
    Click Element       ${BOTAO_LOGIN}

Inserir e-mail    
    Input Text          ${CAMPO_EMAIL}      ${EMAIL_FAKE}

Clicar no botao continuar
    Click Button        ${BOTAO_CONTINUAR}

Menssagem de erro ao tentar efetuar login 
    Page Should Contain Element     ${MENSAGEM_ERRO}


# Gherkin BDD

Dado que o usuario esteja na home page da Amazon
    Verificar pagina atraves da logomarca
Quando clicar em faca login 
    Clicar em faca login
E inserir um e-mail
    Inserir e-mail 
E clicar no botao continuar
    Clicar no botao continuar
Entao deve ser exibido a mensagem "Houve um problema"
    Menssagem de erro ao tentar efetuar login