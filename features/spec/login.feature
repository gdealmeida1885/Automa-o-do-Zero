#language: pt

Funcionalidade: Login
    Sendo um vendedor de carros cadastrado
    Para que eu possa anunciar meus veículos
    Devo poder fazer login no sistema

    Contexto: Página de Login
        Dado que eu acessei a página de login

    @login @logout
    Cenario: Login Com Sucesso
        Quando eu faço login com
            | nome  | Gabriel             |
            | email | gabriel@almeida.com |
            | senha | 12345abc            |
        Então sou autenticado com sucesso

    @tentativa_login
    Esquema do Cenario: Tentativa de Login
        Quando eu faço login com
            | email | <email> |
            | senha | <senha> |
        Então devo ver a seguinte mensagem "<alerta>"

    Exemplos: 
        | email              | senha  | alerta                                  |
        | gabriel@net.com    | 123456 | Usuário e/ou senha inválidos.           |
        | gabriel@net.com    | 12345  | Usuário e/ou senha inválidos.           |
        | gabriel$net.com.br | 123456 | Email inválido.                         |
        | gabriel@net.com.br |        | Senha não informada.                    |