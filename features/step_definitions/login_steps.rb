# frozen_string_literal: true

Dado('que eu acessei a página de login') do
  visit '/acessar'
  expect(page).to have_content('Olá, faça seu login com email e senha.')
end

Quando('eu faço login com') do |table|
  @usuario = table.rows_hash
  find('input[placeholder=Email]').set @usuario[:email]
  find('input[placeholder=Senha]').set @usuario[:senha]
  click_button 'Entrar'
end

Então('devo ver a seguinte mensagem {string}') do |mensagem_alerta|
  within('form[id=login]') do
    expect(find('.alert').text).to eql mensagem_alerta
  end
end
