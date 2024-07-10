Dado('que quero enviar uma mensagem de contato') do
  visit('https://testecontato-e-boxtrade-online.preview-domain.com/teste-tecnico/')
end
  
Quando('preencher as informações de contato {string} {string} {string} {string}') do |nome, email, telefone, msg|
  contato.preencher_nome(nome)
  contato.preencher_email(email)
  contato.preencher_telefone(telefone)
  contato.preencher_mensagem(msg)
end
  
Quando('selecionar a opção enviar contato') do
  contato.selecionar_botao_enviar
end
  
Então('devo visualizar a mensagem {string}') do |mensagem|
  expect(contato.pegar_mensagem).to include mensagem
end