#language: pt

Funcionalidade: Login
Como um usuário cadastrado
Posso me autenticar no sistema
Para que eu possa ver a minha lista de tarefas

@login @tentativas
Cenário: Login com Sucesso
Quando eu tentar me autenticar com o login "joao@qaninja.io" e a senha "123456"
Então devo ser autenticado com Sucesso
E devo ver a minha lista de tarefas

@tentativas
Esquema do Cenário: Tentativa de Login
Quando eu tentar me autenticar com o login "<login>" e a senha "<senha>"
Então não devo ser autenticado
E devo ver a mensagem "<mensagem>"

Exemplos:
    Exemplos: 
      | login             | senha  | mensagem                               |
      | joao@gmail.com    |        | Senha ausente.                         |
      |                   | 123456 | Email incorreto ou ausente.            |
      | usernca@gmail.com | 123453 | Usuário não cadastrado.                |
      | usernca@gmail.com | 123    | Senha deve ter no mínimo 6 caracteres. |
