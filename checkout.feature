Feature: Tela de cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Scenario: Cadastro com sucesso
    Given estou na página de cadastro
    When preencho todos os campos obrigatórios marcados com asteriscos
    And insiro um e-mail no formato válido
    And clico no botão "Finalizar"
    Then meu cadastro é concluído e sou redirecionado para a confirmação do pedido

  Scenario: Cadastro com campos inválidos
    Given estou na página de cadastro
    When insiro um e-mail no formato inválido
    And clico no botão "Finalizar"
    Then o sistema exibe a mensagem de erro "Formato de e-mail inválido"

  Scenario: Cadastro com campos obrigatórios vazios
    Given estou na página de cadastro
    When deixo campos obrigatórios em branco
    And clico no botão "Finalizar"
    Then o sistema exibe a mensagem de alerta "Preencha todos os campos obrigatórios"
