Dado("que eu selecione a opcao formularios") do
    homepage.click_menu('Formulário')
    homepage.clicar_submenu('Criar Usuários')
end

Quando("preencho os dados de novo um usuário") do
    @pagina_cadastro, @pagina_sucesso = [], []
    @pagina_cadastro = criar_usuario.preencher_user
    
    @pagina_sucesso = user_data.retornar_dados_user
end

Então("o usuario é cadastrado com sucesso") do
    @pagina_sucesso.each_with_index do |el, index|
        expect(el).to include @pagina_cadastro[index]
    end
end