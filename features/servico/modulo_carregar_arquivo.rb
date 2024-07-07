# frozen_string_literal: true

module ModuloCarregarArquivo
  def buscar_url
    YAML.load_file("#{Dir.pwd}/features/support/config/url_apis.yml")
  end
end
  