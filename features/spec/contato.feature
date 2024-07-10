# language: pt

@teste_tecnico
Funcionalidade: Preencher Contato
  Eu como Usuario 
  Quero conseguir navegar pelo site 
  Para enviar uma mensagem de contato

  @contato
  Esquema do Cenário: Contato
    Dado que quero enviar uma mensagem de contato
    Quando preencher as informações de contato <nome> <email> <telefone> <mensagem>
    E selecionar a opção enviar contato
    Então devo visualizar a mensagem 'Obrigado por entrar em contato! Entraremos em contato em breve.'
      Exemplos: 
      | nome          | email                | telefone      | mensagem                             |
      | 'Joao Paulo'  | 'joao@teste.com.br'  | '85991410850' | 'Gostaria de realizar uma entrevista'|