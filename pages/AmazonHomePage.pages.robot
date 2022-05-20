*** Settings ***    

Resource        ../components/components.robot 
Resource        ../pages/commons/hooks.pages.commons.robot

*** Keywords ***
Verificar pagina atraves da logomarca
    Page Should Contain Element         ${LOGO_AMAZON} 

Clicar em faca login
    Click Element                       ${BOTAO_LOGIN}

Inserir e-mail    
    Input Text                          ${CAMPO_EMAIL}      ${EMAIL_FAKE}

Clicar no botao continuar
    Click Button                        ${BOTAO_CONTINUAR}

Menssagem de erro ao tentar efetuar login 
    Page Should Contain Element         ${MENSAGEM_ERRO}

Clicar no menu Todos
    Wait Until Element Is Visible       ${MENU_TODOS}   
    Click Element                       ${MENU_TODOS}

Clicar em Mais Vendidos
    Wait Until Element Is Visible       ${MAIS_VENDIDOS}
    Click Element                       ${MAIS_VENDIDOS}

Clicar no produto
    Wait Until Element Is Visible       ${PRODUTO}
    Click Element                       ${PRODUTO}

Clicar no botao e adicionar ao carrinho
    Wait Until Element Is Visible       ${ADICIONAR_CARRINHO}    
    Click Button                        ${ADICIONAR_CARRINHO}

Clicar no botao sem garantia estendida do produto    
    Wait Until Element Is Visible       ${SEM_GARANTIA_ESTENDIDA}
    Click Element                       ${SEM_GARANTIA_ESTENDIDA}

Validar se o produto esta no carrinho
    Click Element                       ${IR_PARA_CARRINHO}
    Wait Until Element Is Visible       ${PRODUTO_CARRINHO}

Remover o produto adicionado do carrinho
    Wait Until Element Is Visible       ${EXCLUIR_PRODUTO}
    Click Element                       ${EXCLUIR_PRODUTO}

Validar se o carrinho esta vazio
    Wait Until Element Is Visible       ${MENSAGEM_CARRINHO_VAZIO}

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

Quando clicar no menu TODOS
    Clicar no menu Todos

E clicar em Mais Vendidos
    Clicar em Mais Vendidos

E clicar no produto Cadeira Gamer Profissional TGC12 Preta ThunderX3
    Clicar no produto

E adicionar ao carrinho
    Clicar no botao e adicionar ao carrinho

E clicar no botao sem garantia do produto
   Clicar no botao sem garantia estendida do produto 
   
Entao deve ser validado que o produto adicionado se encontra no carrinho
    Validar se o produto esta no carrinho

Quando adicionar o produto Cadeira Gamer Profissional TGC12 Preta ThunderX3 ao carrinho
    Quando clicar no menu TODOS
    E clicar em Mais Vendidos
    E clicar no produto Cadeira Gamer Profissional TGC12 Preta ThunderX3
    E adicionar ao carrinho
    E clicar no botao sem garantia do produto

E validar que o produto se encontra no carrinho
    Entao deve ser validado que o produto adicionado se encontra no carrinho
        
E o produto sera removido do carrinho
    Remover o produto adicionado do carrinho

Entao sera exibido a mensagem Seu carrinho de compras da Amazon está vazio
    Validar se o carrinho esta vazio