# language: pt

@teste_tecnico_api
Funcionalidade: Realizar validação api para teste tecnico

  @consultar_produto
  Cenario: Consultar produtos
    Dado que realizar uma requisição consultar produtos
    Entao deve retornar todos os produtos com sucesso

  @cadastrar_produto
  Cenario: Cadastrar produto
    Dado que realizar uma requisição para cadastrar produto
    Entao deve realizar o cadastro com sucesso