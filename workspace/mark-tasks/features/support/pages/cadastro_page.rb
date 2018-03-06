class CadastroPage < SitePrism::Page
  set_url '/register'

  element :input_name, '#register_name'
  element :input_email, '#register_email'
  element :input_password, '#register_password'
  element :botao_cadastrar, '.btn.btn-accent'
  element :mensagem_cadastro, '.alert-message div'    

  def faz_cadastro(nome, email, senha)
    self.input_name.set nome
    self.input_email.set email
    self.input_password.set senha
  end
  
end
