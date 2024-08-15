*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

#Suite Setup
#Suite Teardown

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]  Esse teste verifica o menu eletrônicos do site da Amazon.com.br
    ...              E verifica a categoria Computadores e Informática
    [Tags]           menus  categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"

Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]  Esse teste verifica a busca de um produto
    [Tags]           busca_produtos  lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar se o produto "Console Xbox Series S" está retornando na pesquisa

# Opções de execução
# robot .\amazon_testes.robot
# robot -t "Caso de Teste 02 - Pesquisa de um Produto" .\amazon_testes.robot
# robot --help
# robot --help
# include tags: robot -i menus .\amazon_testes.robot
# exclude tags: robot -e menus .\amazon_testes.robot
# move reports to a specific folder: robot -d resultados .\amazon_testes.robot
# specify a value for a variable: robot -v BROWSER:firefox .\amazon_testes.robot