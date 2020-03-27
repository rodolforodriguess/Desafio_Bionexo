Quando("acesso a opção inputs e text fields") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Inputs e TextField')
end

Então("eu preencho os inputs, text fields e text areas") do
    inputText_inst.preencher_fields
end