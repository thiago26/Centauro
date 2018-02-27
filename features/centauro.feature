#language:pt
Funcionalidade: Cadastro de clientes

@acessar
Cenario: Acessar o site
Dado que estou na home do site
Quando clico em "Entre | Cadastre se"
E seleciono a opcao nao, sou um cliente novo
E preencho as informacoes necessarias
Entao devo visualizar a tela de login

@cadastro
Cenario: Cadastrar usuario
Dado que estou na tela de cadastro
Quando seleciono a opcao nao, sou um cliente novo
E clico no botao cadastrar
Entao devo visualizar a tela para complementar os dados

@dados
Cenario: Preenchimento de dados
Dado que preencho o cadastro
E clico no botao Cadastrar
Entao devo voltar para a home do site logado

@busca_produto
Cenario: Buscar por um produto
Dado que preencha o campo buscar
E clico no botão buscar
Então devo visualizar o produto


