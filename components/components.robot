*** Settings ***
Documentation       Components File

*** Variables ***
${LOGO_AMAZON}                  id:nav-logo-sprites
${BOTAO_LOGIN}                  //span[contains(.,'Olá, Faça seu login')]
${CAMPO_EMAIL}                  //input[contains(@type,'email')]
${EMAIL_FAKE}                   aaaaat@aaaa.com.br
${BOTAO_CONTINUAR}              class:a-button-input
${MENSAGEM_ERRO}                //h4[contains(.,'Houve um problema')]

${MENU_TODOS}                   //span[@class='hm-icon-label'][contains(.,'Todos')]    
${MAIS_VENDIDOS}                //a[@href='/gp/bestsellers/?ref_=nav_em_cs_bestsellers_0_1_1_2'][contains(.,'Mais Vendidos')]
${PRODUTO}                      //a[contains(.,'Cadeira Gamer Profissional TGC12 Preta ThunderX3.')]
${ADICIONAR_CARRINHO}           //input[contains(@name,'submit.add-to-cart')]
${SEM_GARANTIA_ESTENDIDA}       //input[@aria-labelledby='attachSiNoCoverage-announce']
${IR_PARA_CARRINHO}             //a[contains(.,'Ir para o carrinho')]
${PRODUTO_CARRINHO}             //div[@class='sc-list-item-content']