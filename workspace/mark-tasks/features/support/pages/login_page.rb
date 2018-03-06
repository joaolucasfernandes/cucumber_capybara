class LoginPage < SitePrism::Page
  set_url '/login'
  element :login_header, '.header-title h3'
  element :input_login, '#login_email'
  element :input_senha, '#login_password'
  element :botao_login, '#btLogin'
  element :mensagem_login, '.alert-login div'

  def faz_login(usuario, senha)
    self.input_login.set usuario
    self.input_senha.set senha
    self.botao_login.click
  end
end
