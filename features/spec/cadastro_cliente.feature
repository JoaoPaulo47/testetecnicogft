# language: pt

@teste_tecnico
Funcionalidade: Preencher Form para teste tecnico
  Eu como Usuario 
  Quero conseguir navegar pelo site 
  Para realizar cadastro de Form

  @cadastrar_cliente
  Esquema do Cenário: Cadastrar Cliente
    Dado que quero realizar um cadastro de Cliente
    Quando preencher as informações de um novo cliente <nome> <sobrenome> <cep>
    E selecionar a opção para incluir cliente
    Então devo visualizar a mensagem de cliente cadastrado com sucesso 'Customer added successfully with customer'
      Exemplos:
      | nome          | sobrenome     | cep        |
      | 'Joao Paulo'  | 'Nascimento'  | '60355337' |
