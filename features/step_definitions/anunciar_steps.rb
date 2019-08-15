# frozen_string_literal: true

Dado('que possuo o seguinte veiculo') do |table|
  @anuncio = table.hashes
  @veiculo = @anuncio[0]
  @veiculo[:marca]
end

Dado('eu já cadastrei este anúncio anteriormente') do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('este veiculo é blindado') do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('faço o anuncio deste veículo') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('vejo a seguinte mensagem de sucesso:') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Então('devo ver o seguinte alerta:') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
