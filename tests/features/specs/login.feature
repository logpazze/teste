#language:pt

Funcionalidade: Login
    Sendo um usuário do SAT
    Posso acessar o sistema
    Para abrir Ordens de Serviço e também administrar os reparos em aberto na minha AT

Cenário: Administrador faz login

    Dado que eu tenho um usuário com os seguintes atributos:
        | login | admin |
        | senha | admin |
    Quando faço login
    Então vejo a tela inicial com a mensagem "oi, Lorain!"