# frozen_string_literal: true

class LoginPage
  include Capybara::DSL

  def acessar
    visit '/acessar'
  end

  def faz_login(usuario)
    find('input[placeholder=Email]').set usuario[:email]
    find('input[placeholder=Senha]').set usuario[:senha]
    click_button 'Entrar'
  end

  def mensagem
    within('form[id=login]') do
      find('.alert').text
    end
  end
end
