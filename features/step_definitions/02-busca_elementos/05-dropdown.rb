#1º cenário
Quando("seleciono o submenu Dropdown e Select") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Dropdown e Select')
end

Quando("clico no botão Mail") do
    dropdown_inst.abrir_mail_box
end

Quando("seleciono a opção {string} no dropdown em estilo mailbox") do |string|
    expect(page).to have_css 'ul[class="dropdown-content active"]'
    dropdown_inst.sel_mail_box(string)
end

Então("a {string} é exibida") do |string|
    expect(page).to have_text string
end

#2º cenário
Então("seleciono o {string}, {string}, {string}, {string}, {string}") do |string, string2, string3, string4, string5|
    dropdown_inst.selects_desenho(string)
    dropdown_inst.select_jogador(string2)
    dropdown_inst.select_pais(string3)
    outros_inst.scroll('Meio')
    dropdown_inst.select_genero(string4)
    dropdown_inst.select_sexo(string5)

end