#1º cenário
Dado("que eu seleciono o menu iteracões") do
    homepage.click_menu('Iterações')
end

Quando("seleciono o submenu drag and drop") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Drag And Drop')
end

Então("movo a figura de posição") do
    iteracoes_inst.mover
end

#2º cenário
Quando("seleciono o submenu mouse hover") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Mousehover')
end
  
Então("posiciono o cursor do mouse sobre a figura") do
    iteracoes_inst.mouse_hover
    el = find('div[class="card-reveal"]').text
    expect(el).to include('Parábens') | include('Você usou o mouse hover!')
end