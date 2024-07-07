# Projeto de Automação Teste Técnico
> GFT

## Índices
- [Guia de instalação](#installation)
- [Equipe](#team)
- [FAQ](#faq)
- [Resources](#resources)

## Guia de instalação
- Todo o código do projeto se encontra no repositório

1. Dependências Globais

    * Instalar o [Ruby + Devkit] link para download =>(https://rubyinstaller.org/downloads/)
    - Rodar o executavel de instalação e no final executar o comando 1 aguarda instalar, 2 aguarda e 3 por final

    * Ou Instalar o Ruby via [Homebrew](http://brew.sh/)
    ```
    $ brew install ruby
    ```
    * Instalar Bundler (Sudo pode ser necessário)
    - Bundler é o gerenciador de gemas do Ruby, oferece um ambiente consistente para o gerenciamento e instalação
    das dependencias do projeto.
    ```
    $ gem install bundler
    ```
2. Dependências do Projeto

	* Instalar pacotes (Usar sudo caso necessário)
	```
	$ bundle install
	```

### Executar Testes
  O comando cucumber permite executar uma série de funções que podem ser informadas pelo comando “cucumber -help”, o argumento “-t” significa que iremos passar uma tag por parâmetro e “@teste_tecnico é a tag que será executada, pois foi informada na escrita da feature.
  ```
	$ cucumber -t @teste_tecnico

  Alterar o arquivo cucumber.yml para MACos, caso o sistema operacional seja MACos
  Default está para SO Windows
	```

## Equipe

- JP

## FAQ

- **Sessão para perguntas frequentes**

# WIP(Work in progress)
- Duvidas, criticas e sugestões são bem vindas

### Resources

##### [SeleniumHQ Documentation](http://www.seleniumhq.org/docs/)

##### [Cucumber Documentation](https://cucumber.io/docs/reference)

##### [Ruby Documentation](http://ruby-doc.org/)

##### [Stack Overflow](http://stackoverflow.com/)
