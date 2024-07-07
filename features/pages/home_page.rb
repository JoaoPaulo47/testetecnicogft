class HomePage < SitePrism::Page
  # Seletores
  element :btnHome, '.btn.home'
  element :inputPrimeiroNome, '[ng-model="fName"]'
  element :inputSobrenome, '[ng-model="lName"]'
  element :inputCEP, '[ng-model="postCd"]'
  element :btnAddCliente, '.btn-default'

  # MOTODOS
  def verificar_botao_home
    btnHome.visible?
  end

  def preencher_primeiro_nome(nome)
    inputPrimeiroNome.visible?
    inputPrimeiroNome.set nome      
  end

  def preencher_sobrenome(sobrenome)
    inputSobrenome.visible?
    inputSobrenome.set sobrenome      
  end

  def preencher_cep(cep)
    inputCEP.visible?
    inputCEP.set cep      
  end

  def selecionar_botao_add_cliente
    btnAddCliente.visible?
    btnAddCliente.click  
  end

  def alert_mensagem
    alert = page.driver.browser.switch_to.alert
    alert_text = alert.text
    alert.accept
    alert_text
  end

end
