# frozen_string_literal: true

Dado('que eu acessei a página de login') do
  @login.acessar
  expect(page).to have_content('Olá, faça seu login com email e senha.')
end

Quando('eu faço login com') do |table|
  @usuario = table.rows_hash
  @login.faz_login(@usuario)
end

Então('devo ver a seguinte mensagem {string}') do |mensagem_alerta|
  expect(@login.mensagem).to eql(mensagem_alerta)
end
