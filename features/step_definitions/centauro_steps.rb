Dado("que estou na home do site") do
  @login = Login.new
  @login.load
  @login_cadastro
end
  
Quando("clico em {string}") do |string|
  first('.user-greeting-login').click
end

Entao("devo visualizar a tela de login") do
  expect(page).to have_content "Olá, "+$nome
  
end

Quando("seleciono a opcao nao, sou um cliente novo") do
  find('#optNoclient').click
end

Quando("preencho as informacoes necessarias") do
  @login.btn_cadastrar
end

Quando("clico no botao cadastrar") do
  @cadastro.btn_cadastrar
end

Entao("devo visualizar a tela para complementar os dados") do
  @login.btn_cadastrar  
end

Dado("que preencha o campo buscar") do
  @login = Login.new
  @login.load
  @login.buscar_produto
end

Dado("clico no botão buscar") do
  @login
end

Então("devo visualizar o produto") do
  @login
end






