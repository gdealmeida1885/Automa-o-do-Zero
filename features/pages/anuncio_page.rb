# frozen_string_literal: true

class AnuncioPage
  include Capybara::DSL

  def novo_anuncio(veiculo, blindado=false)
    seleciona_marca(veiculo)
    seleciona_modelo(veiculo)
    preenche_versao(veiculo)
    preenche_ano(veiculo)
    preenche_preco(veiculo)
    seleciona_blindado if blindado
    find('#sell-my-car').click
  end

  private

  def seleciona_marca(veiculo)
    find('#brand').find('option', text: veiculo[:marca]).select_option
  end

  def seleciona_modelo(veiculo)
    find("input[type=radio][value=#{veiculo[:modelo]}").click
  end

  def preenche_versao(veiculo)
    find('#version').set veiculo[:versão]
  end

  def preenche_ano(veiculo)
    find('#year').set veiculo[:ano]
  end

  def preenche_preco(veiculo)
    find('#price').set veiculo[:preço]
  end

  def seleciona_blindado
    find('#armoredCar').check
  end
end
