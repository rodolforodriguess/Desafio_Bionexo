#1º cenario
Dado("que eu selecionei a opcao busca de elementos") do
    homepage.click_menu('Busca de elementos')
end

Dado("acessei a opção links") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Links')
end

Quando("clico no link {string}") do |string|
    links_instance.selecionar_link(string)
end

Então("a imagem {string} com o texto de {string} é exibida") do |string, string2|
    img = find('div:nth-child(3) > div > img')['alt']
    expect(img).to include string
    expect(page).to have_text string2
end
