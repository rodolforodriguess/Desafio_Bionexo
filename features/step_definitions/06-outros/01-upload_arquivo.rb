Quando("seleciono o submenu upload") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Upload de Arquivo')
end

Quando("faço o upload de um arquivo") do
    outros_inst.fazer_upload
end

Então("o arquivo é carregado na página") do
    tirar_foto('arquivo', 'passou')
    expect(page).to have_css '#thumbnail'
    outros_inst.scroll('Meio')
end