#1º cenário
Dado("que eu acessei a lista de usuários") do
    homepage.click_menu('Formulário')
    homepage.clicar_submenu('Lista de Usuários')
end
  
Quando("seleciono a lupa para visualizar um usuário") do
    @dados_lista = []
    @dados_lista = lista_usuario.retornar_user_lista('1')
    puts @dados_lista
    lista_usuario.acoes_usuario('1', 'Visualizar')
end
  
Então("sou direcionado a página de informações do usuario") do
    dados_page_user = []
    dados_page_user = user_data.retornar_dados_user
    puts dados_page_user

    expect(dados_page_user[0]).to include @dados_lista[0]
    expect(dados_page_user[1]).to include @dados_lista[1]
    expect(dados_page_user[2]).to include @dados_lista[2]
    expect(dados_page_user[3]).to include @dados_lista[3]
    expect(dados_page_user[4]).to include @dados_lista[4] 
    expect(dados_page_user[5]).to include @dados_lista[5] 
    expect(dados_page_user[6]).to include @dados_lista[6]
    expect(dados_page_user[7]).to include @dados_lista[7]
end

#2º cenário
Quando("clico no botão excluir") do
    lista_usuario.acoes_usuario('1', 'Excluir')
end

Quando("confirmo") do
    page.accept_alert
end

Então("o usuário e excluído") do
    expect(find('#notice').text).to eql 'Seu Usuário foi removido com sucesso!'
end

#3º cenário
Quando("clico no botão editar") do
    lista_usuario.acoes_usuario('1', 'Editar')
end
  
Quando("sou direcionado a tela de edição do usuário com o texto {string}") do |string|
    expect(page).to have_text string
end
  
Quando("edito um usuário") do
    i = Editar_Usuario.new
    i.user_edit_value = 'Java é tipado'
    i.alterar_usuario
    i.confirmar_edicao
end

Então("o usuário é editado") do
    expect(find('#notice').text).to eql 'Seu Usuário foi Atualizado!'
end