Dado("que eu selecionei o menu outros") do
    homepage.click_menu('Outros')
end

Quando("seleciono o submenu scroll") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Scroll')
end

Então("faço o scroll até o rodapé da página") do
    outros_inst.scroll('Meio')
end