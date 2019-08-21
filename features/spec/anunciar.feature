#language: pt

Funcionalidade: Anunciar Veículo
  Sendo um vendedor cadastrado
  Para que eu possa receber ofertas de compras
  Posso anunciar meu veículo

  Contexto: Página de Anuncios
    Dado que acessei a página de anúncio de veículos
  
  @login
  Cenario: Criar Anuncio
    E que possuo o seguinte veiculo
      | marca     | modelo | versão  | ano  | preço      |
      | Chevrolet | Camaro | Blue 79 | 1979 | 250.000,00 |
    Quando faço o anuncio deste veículo
    Então devo ver a seguinte mensagem:
    """
    Parabéns. Seu carro foi anunciado com sucesso.
    """
  @login
  Cenario: Veiculo Blindado
    E que possuo o seguinte veiculo
      | marca      | modelo | versão      | ano  | preço      |
      | Volkswagen | Fusca  | 1.0 Amarelo | 1990 | 10.000,00  |
    E este veiculo é blindado
    Quando faço o anuncio deste veículo
    Então devo ver a seguinte mensagem:
    """
    Não anunciamos carros blindados.
    """

  @login @wip   
  Cenario: Anuncio Duplicado
    E que possuo o seguinte veiculo
      | marca | modelo | versão         | ano  | preço     |
      | Ford  | Fusion | 2.4 Automatico | 2016 | 70.000,00 |
    Mas eu já cadastrei este anúncio anteriormente
    Quando faço o anuncio deste veículo
    Então devo ver a seguinte mensagem:
    """
    Este anúncio já foi cadastrado.
    """
