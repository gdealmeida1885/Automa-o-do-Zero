# frozen_string_literal: true

class Nav
  include Capybara::DSL

  def botao_acessar
    within('.navbar') do
      click_link 'Acessar'
    end
  end

  def menu_usuario
    within('.navbar') do
      find('#userMenu')
    end
  end

  def botao_anunciar
    within('.navbar') do
      click_link 'Vender meu Carro'
    end
  end

  def sair
    menu_usuario.click
    click_link 'Sair'
  end
end
