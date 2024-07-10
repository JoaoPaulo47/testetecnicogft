class ContatoPage < SitePrism::Page
    # Seletores
    element :inputNome, '#wpforms-479-field_0'
    element :inputEmail, '#wpforms-479-field_1'
    element :inputTelefone, '#wpforms-479-field_3'
    element :inputMsg, '#wpforms-479-field_2'
    element :btnEnviar, '#wpforms-submit-479'
    element :mensagem, '#tw-target-text'
  
    # MOTODOS
    def preencher_nome(nome)
      inputNome.visible?
      inputNome.set nome      
    end
  
    def preencher_email(email)
      inputEmail.visible?
      inputEmail.set email      
    end
  
    def preencher_telefone(telefone)
      inputTelefone.visible?
      inputTelefone.set telefone      
    end

    def preencher_mensagem(msg)
      inputMsg.visible?
      inputMsg.set msg      
    end
  
    def selecionar_botao_enviar
      btnEnviar.visible?
      btnEnviar.click  
    end

    def pegar_mensagem
      mensagem.visible?
      mensagem.text
    end
  
  end
  