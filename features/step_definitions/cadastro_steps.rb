# frozen_string_literal: true

Dado('que estou na página de cadastro') do
  @cadastro.visita
end

Quando('faço o meu cadastro com') do |table|
  @usuario = table.rows_hash
  @dao.remover_usuario(@usuario[:email])
  @cadastro.cadastra_usuario(@usuario)
end

Então('devo ver a mensagem {string}') do |mensagem|
  expect(@cadastro.mensagem_alerta).to eql(mensagem)
end
