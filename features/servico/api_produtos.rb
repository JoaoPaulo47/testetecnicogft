# frozen_string_literal: true

require_relative 'requisicoes_api'

class APIProdutos < RequisicoesAPI
  def consultar_produtos
    url_busca = construir_url
    construir_get(url_busca)
  end

  def buscar_schemas(file)
    schema = File.read(File.expand_path("../support/data/schemas/#{file}.json", __dir__))
    JSON.parse(schema)
  end

  def cadastrar_pedido
    url_busca = construir_url
    body = Produto.cadastrar_produto
    puts "Body requisição"
    puts body
    puts "URL"
    puts url_busca
    construir_post(body, url_busca)
  end

end