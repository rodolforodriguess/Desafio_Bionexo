Quando("seleciono o submenu basic authetication") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Basic Auth(user:admin, password: admin)')
end

Quando("faço a autenticação com usuário {string} e senha {string}") do |string, string2|
    outros_inst.basic_authentication(string, string2)
end

Então("eu me autentico com sucesso") do
    expect(page).to have_text "Você se autenticou com sucesso!!"
end