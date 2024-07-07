Dado('que realizar uma requisição consultar produtos') do
  @retorno = api_produtos.consultar_produtos
end

Dado('que realizar uma requisição para cadastrar produto') do
  @retorno_cadastro = api_produtos.cadastrar_pedido
end

Entao('deve realizar o cadastro com sucesso') do
  expect(@retorno_cadastro.code).to eq(200)
  produto = @retorno_cadastro.parsed_response
  expect(produto['title']).to eq $titulo
  expect(produto['price']).to eq $preco
  expect(produto['description']).to eq $descricao
  expect(produto['image']).to eq $imagem
  expect(produto['category']).to eq $categoria
end

Entao('deve retornar todos os produtos com sucesso') do
  expect(@retorno.code).to eq(200)

  lista = @retorno.parsed_response

  expect(lista).not_to be_nil
  schema = api_produtos.buscar_schemas('produtos')

  JSON::Validator.validate!(schema, lista, strict: true)
end