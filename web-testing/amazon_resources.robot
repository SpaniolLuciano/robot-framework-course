*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://www.amazon.com.br/
${MENU_ELETRONICOS}        //a[@data-csa-c-content-id='nav_cs_electronics']
${MENU_ELETRONICOS}        //a[@data-csa-c-content-id='nav_cs_electronics']
${HEADER_ELETRONICOS}      //h1[contains(text(),'Eletrônicos e Tecnologia')]
*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser 


Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Sleep    5s
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}    

Verificar se aparece a categoria "${CATEGORIA}"
    Element Should Be Visible   locator=//a[@aria-label='${CATEGORIA}']

Digitar o nome de produto "${PRODUTO_NAME}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO_NAME}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar se o produto "${PRODUTO_NAME}" está retornando na pesquisa
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO_NAME}')])[3]