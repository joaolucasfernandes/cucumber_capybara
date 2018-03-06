require_relative 'pages/login_page'

Before do
  @login = LoginPage.new
  @task = TasksPage.new
end

Before('@tentativas') do
  @login.load
end

After('@login') do
  @task.topmenu.faz_logout
end
