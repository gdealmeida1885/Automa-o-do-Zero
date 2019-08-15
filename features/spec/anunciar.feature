#language: pt

Funcionalidade: Anunciar Veículo
  Sendo um vendedor cadastrado 
  Para que eu possa receber ofertas de compras
  Posso anunciar meu veículo
  
  # Contexto: Página de Anuncios
  #   Dado que estou na página de anuncios

  Cenario: Criar Anuncio
    Dado que possuo o seguinte veiculo
      | marca     | modelo | versão  | ano  | preço      |
      | Chevrolet | Camaro | Blue 79 | 1979 | 250.000,00 |
    Quando faço o anuncio deste veículo
    Então vejo a seguinte mensagem de sucesso: 
      """
      Parabéns. Seu carro foi anunciado com sucesso.
      """ 

  Cenario: Anuncio Duplicado
    Dado que possuo o seguinte veiculo
      | marca | modelo | versão         | ano  | preço     |
      | Ford  | Fusion | 2.4 Automatico | 2016 | 70.000,00 |
    Mas eu já cadastrei este anúncio anteriormente
    Então devo ver o seguinte alerta:
      """
      Este anúncio já está cadastrado.
      """
  
  Cenario: Veiculo Blindado
    Dado que possuo o seguinte veiculo
      | marca     | modelo | versão  | ano  | preço      |
      | Chevrolet | Camaro | Blue 79 | 1979 | 250.000,00 |
    E este veiculo é blindado
    Quando faço o anuncio deste veículo
    Então vejo a seguinte mensagem de sucesso: 
      """
      Não anunciamos carros blindados.
      """ 
