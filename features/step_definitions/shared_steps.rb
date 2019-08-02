# frozen_string_literal: true

# login.feature - cadastro.feature
Então('sou autenticado com sucesso') do
  expect(@nav.menu_usuario.text).to have_content @usuario[:nome]
end
