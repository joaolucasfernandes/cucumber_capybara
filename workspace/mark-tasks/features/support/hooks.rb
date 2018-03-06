require_relative 'pages/login_page'
require_relative 'pages/cadastro_page'

Before do
  @login = LoginPage.new
  @task = TasksPage.new
  @cadastro = CadastroPage.new
end

Before('@tentativas') do
  @login.load
end

After('@login') do
  @task.topmenu.faz_logout
end