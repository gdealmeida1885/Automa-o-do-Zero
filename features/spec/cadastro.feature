#language: pt

Funcionalidade: Cadastro do usuário
    Sendo um visitante do site
    Posso fazer meu cadastro com nome, email e senha
    Para que eu possa anunciar meu veiculo usado

@cadastro @clear_user
Cenário: Cadastro simples
    Dado que estou na página de cadastro
    Quando faço o meu cadastro com
        | nome  | Fernando                 |
        | email | papito@ninjahouse.com.br |
        | senha | 123456                   |
    Então sou autenticado com sucesso

@smoke
Esquema do Cenario: Tentativa de Cadastro
    Dado que estou na página de cadastro
    Quando faço o meu cadastro com
        | nome  | <nome>  |
        | email | <email> |
        | senha | <senha> |
    Então devo ver a mensagem "<alerta>"

    Exemplos: 
        | nome    | email              | senha  | alerta                                  |
        | Gabriel | gabriel#net        | 123456 | Email inválido.                         |
        | Gabriel | gabriel@net.com    |        | Senha não informada.                    |
        |         | gabriel@net.com.br | 123456 | Nome não informado.                     |
        | Gabriel | gabriel@net.com.br | 1234   | Senha deve ter pelo menos 6 caracteres. |