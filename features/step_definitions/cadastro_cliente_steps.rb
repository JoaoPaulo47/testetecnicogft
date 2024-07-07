Dado('que quero realizar um cadastro de Cliente') do
  visit('')
  home_page.verificar_botao_home
end

Quando('preencher as informações de um novo cliente {string} {string} {string}') do |nome, sobrenome, cep|
  home_page.preencher_primeiro_nome(nome)
  home_page.preencher_sobrenome(sobrenome)
  home_page.preencher_cep(cep)
end

E('selecionar a opção para incluir cliente') do
  home_page.selecionar_botao_add_cliente
end

Entao('devo visualizar a mensagem de cliente cadastrado com sucesso {string}') do |mensagem|
  expect(home_page.alert_mensagem).to include mensagem 
end
