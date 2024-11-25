Feature: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Scenario: Login com sucesso
    Given estou na página de login
    When insiro um e-mail e senha válidos
    And clico no botão "Entrar"
    Then sou redirecionado para a tela de checkout

  Scenario: Login com dados inválidos
    Given estou na página de login
    When insiro um e-mail ou senha inválidos
    And clico no botão "Entrar"
    Then o sistema exibe a mensagem de erro "Usuário ou senha inválidos"
