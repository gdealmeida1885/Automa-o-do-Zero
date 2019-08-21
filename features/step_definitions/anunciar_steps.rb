# frozen_string_literal: true

Dado('que acessei a página de anúncio de veículos') do
  @nav.botao_anunciar
  expect(page).to have_button('ANUNCIE SEU CARRO')
end

Dado('que possuo o seguinte veiculo') do |table|
  @veiculos = table.hashes
end

Dado('eu já cadastrei este anúncio anteriormente') do
  steps %(
    Quando faço o anuncio deste veículo
    Então devo ver a seguinte mensagem:
    """
    Parabéns. Seu carro foi anunciado com sucesso.
    """
    Dado que acessei a página de anúncio de veículos
  )
end

Dado('este veiculo é blindado') do
  @blindado = true
end

Quando('faço o anuncio deste veículo') do
  @veiculo = @veiculos.first
  @anuncio.novo_anuncio(@veiculo, @blindado)
end

Então('devo ver a seguinte mensagem:') do |mensagem|
  @mensagem = @swal.mensagem_alerta
  expect(@mensagem.text).to eql(mensagem)
  find('.swal2-confirm').click
end
