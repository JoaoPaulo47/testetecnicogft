module PageObjects
  def home_page
    HomePage.new
  end

  def api_produtos
    APIProdutos.new
  end

  def requisicoes_api
    RequisicoesAPI.new
  end

  def contato
    ContatoPage.new
  end
end
