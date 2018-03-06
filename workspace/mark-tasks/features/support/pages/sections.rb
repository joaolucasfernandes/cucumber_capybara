class TopMenu < SitePrism::Section
  element :nome_usuario_logado, "a[href='/user_settings dropdown-toggle']"
  element :botao_logout, 'a[href$=logout]'

  def faz_logout
    self.nome_usuario_logado.click
    self.botao_logout.click
  end
end
