
  Dado("que eu esteja na página de cadastro") do
    @cadastro.load
  end
  
  Dado("preencha os campos com os seguintes dados") do |table|
    @usuario = table.rows_hash
    @cadastro.faz_cadastro(@usuario[:nome],@usuario[:email],@usuario[:senha])
  end
  
  Quando("faço o cadastro") do
    @cadastro.botao_cadastrar.click
  end
  
  Então("sou redirecionado para o painel de tarefas") do
    @task.wait_for_lista_de_tarefas
    expect(@task.tasks_header.text).to eql 'Painel de Atividades'
  end
  
  Então("devo ver a mensagem: {string}") do |mensagem|
    expect(@cadastro.mensagem_cadastro.text).to eql mensagem
  end
  