#Author: Marcus Takeyasu
#Keywords Summary: banco, cliente, saldo, saque.
#Feature: Lista dos Cenários
#Scenario: Regra de negócio através de lista de etapas com argumentos.
#Given: Alguma etapa de pré-condição
#When: Algumas ações principais
#Then: Para observar resultados ou validação.
#And,But: Para enumerar mais etapas Given, when e then.
#Scenario Outline: Lista de etapas para orientação a dados como exemplos e <placeholder>
#Examples: Container for s table
#Background: Lista de etapas executadas antes de cada um dos cenários
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template


@tag
Feature: Cliente faz saque de dinheiro como um cliente,
eu gostaria de sacar dinheiro em caixa eletrônico,
para que eu não tenha que esperar em uma fila do banco

  @tag1
  Scenario: Cliente especial com saldo negativo
    Given Um cliente especial com saldo atual de -200 reais
    #O cenário começa com a condição de um cliente especial com saldo negativo.
    When for solicitado um saque no valor de 100 reais
    #Quando um saque de 100 reais é solicitado pelo cliente especial.
    Then deve efetuar o saque e atualizar o saldo da conta para -300 reais
    #Então, o saque deve ser efetuado com sucesso, e o saldo da conta é atualizado para -300 reais.
    And check more outcomes
    #Além disso, são verificados outros resultados não especificados no cenário.

  @tag2
  Scenario Outline: Cliente comum com saldo negativo
    Given Um cliente comum com saldo atual de -200 reais
    #O cenário começa com a condição de um cliente comum com saldo negativo.
    When solicitar um saque de 200 reais
    #Quando um saque de 200 reais é solicitado pelo cliente comum.
    Then não deve efetuar o saque e deve retornar a mensagem Saldo Insuficiente
    #Então, o saque não deve ser efetuado, e uma mensagem de "Saldo Insuficiente" deve ser retornada.

    