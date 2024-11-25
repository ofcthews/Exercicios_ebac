Feature: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Scenario: Configurar produto com sucesso
    Given estou na página de detalhes do produto
    When seleciono a cor, o tamanho e a quantidade
    And clico no botão "Adicionar ao carrinho"
    Then o produto é adicionado ao carrinho com as especificações escolhidas

  Scenario: Limpar configurações do produto
    Given estou na página de detalhes do produto com opções já selecionadas
    When clico no botão "Limpar"
    Then todas as opções voltam ao estado inicial

  Scenario Outline: Limite de produtos por venda
    Given estou na página de detalhes do produto
    When seleciono <quantidade> produtos
    Then o sistema deve permitir adicionar até 10 produtos
    And exibir uma mensagem de erro se exceder o limite

    Examples:
      | quantidade |
      | 1          |
      | 5          |
      | 10         |
      | 11         |
