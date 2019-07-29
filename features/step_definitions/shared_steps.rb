# frozen_string_literal: true

# login.feature - cadastro.feature
Então('sou autenticado com sucesso') do
  menu_usuario = find('#userMenu')
  within(menu_usuario) do
    expect(menu_usuario.text).to have_content @usuario[:nome]
  end
end
