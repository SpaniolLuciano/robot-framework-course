*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.br/
${MENU_ELETRONICOS}    //a[@data-csa-c-content-id='nav_cs_electronics']

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser 


Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Sleep    25s
    Wait Until Element Is Visible    ${MENU_ELETRONICOS}