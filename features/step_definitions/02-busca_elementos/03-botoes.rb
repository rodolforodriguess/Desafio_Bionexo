Quando("eu clico na opção botões") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Botões')
end
  
Quando("clico no botão {string}") do |string|
    botoes_inst.clicar_botao(string)
end
  
Então("a mensagem {string} é exibida") do |string|
    msg = find("div[id*='div']").text
    expect(msg).to eql string
end

Então("habilito o botão Disable") do
    botoes_inst.enable_button
end