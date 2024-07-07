# frozen_string_literal: true

require_relative "#{Dir.pwd}/features/servico/modulo_carregar_arquivo.rb"

class RequisicoesAPI
  include ModuloCarregarArquivo
  def construir_url
    buscar_url['url']['url_base']
  end

  def buscar_schemas(file)
    schema = File.read(File.expand_path("../support/data/schemas/#{file}.json", __dir__))
    JSON.parse(schema)
  end

  def construir_post(massa, url_busca)
    HTTParty.post(url_busca,
                             :body => massa.to_json, 
                             headers: { 'Content-Type' => 'application/json'})

  end

  def construir_get(url_busca)
    HTTParty.get(url_busca)
  end

end
