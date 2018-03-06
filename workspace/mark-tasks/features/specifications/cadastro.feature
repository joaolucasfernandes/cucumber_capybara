#language: pt
Funcionalidade: Cadastro de Usuários
            Como um usuário comum
            Posso realizar o meu cadastro
            Para que eu tenha acesso ao sistema MarkTasks

            Contexto: Cadastro
            Dado que eu esteja na página de cadastro

            #TODO - Implementar exclusão do usuário criado via API no after deste cenário
            @login
            Cenário: Cadastro com Sucesso
            E preencha os campos com os seguintes dados
            |nome|Joao|
            |email|joao9@gmail.com|
            |senha|123456|
            Quando faço o cadastro
            Então sou redirecionado para o painel de tarefas

            #TODO - Implementar a inserção de usuário via API para testar cenário já existente
            Esquema do Cenário: Tentativa de Cadastro
            E preencha os campos com os seguintes dados
            |nome|<nome>|
            |email|<email>|
            |senha|<senha>|
            Quando faço o cadastro
            Então devo ver a mensagem: "<mensagem>"

          Exemplos:
            | nome | email          | senha  | mensagem                 |
            |      | joao@gmail.com | 123456 | Nome é obrigatório.      |
            | João |                | 123456 | Email é obrigatório.     |
            | João | joao@gmail.com |        | Informe uma senha.       |
            | João | joao           | 123456 | Informe um email válido. |