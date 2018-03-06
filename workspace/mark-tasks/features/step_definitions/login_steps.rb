Quando("eu tentar me autenticar com o login {string} e a senha {string}") do |login, senha|
  @login.faz_login(login, senha)
  @username = login
end

Então("não devo ser autenticado") do
  expect(@login.login_header.text).to eql 'Login'
end

Então("devo ver a mensagem {string}") do |mensagem|
  expect(@login.mensagem_login.text).to eql mensagem
end

Então("devo ser autenticado com Sucesso") do
  expect(@task.topmenu.nome_usuario_logado.text).to eql @username
end

Então("devo ver a minha lista de tarefas") do
  expect(@task.tasks_header.text).to eql 'Painel de Atividades'
end
