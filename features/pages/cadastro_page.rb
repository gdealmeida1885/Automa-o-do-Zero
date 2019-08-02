# frozen_string_literal: true

class CadastroPage
  include Capybara::DSL

  def visita
    visit '/cadastre-se'
  end

  def reset_api
    visit 'api/reset'
  end

  def cadastra_usuario(usuario)
    fill_in 'fullName', with: usuario[:nome]
    fill_in 'email', with: usuario[:email]
    fill_in 'password', with: usuario[:senha]
    click_button 'Cadastrar'
  end

  def mensagem_alerta
    within('form[class=form-center]') do
      find('.alert').text
    end
  end
end
