# frozen_string_literal: true

Before do
  @login = LoginPage.new
  @nav = Nav.new
  @cadastro = CadastroPage.new
  @dao = DAO.new
end

# Before('@clear_user') do
#   @dao.remover_usuario(@usuario[:email], @dao.conecta_banco)
# end

After('@logout') do
  @nav.sair
  wait_until_css('.swal2-modal')
end

def wait_until_css(element, timeout = Capybara.default_max_wait_time)
  found = true
  while found
    raise Timeout::Error, "wait until css #{element}" if timeout.zero?

    found = page.has_css?(element)
    timeout -= 1
    sleep 1
  end
end
