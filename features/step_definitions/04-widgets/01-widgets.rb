#1º cenario
Dado("que eu seleciono o menu widgets") do
    homepage.click_menu('Widgets')
end

Quando("seleciono o submenu datapicker") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Datapicker')
end

Então("seleciono uma data no calendário") do
    widgets_inst.selecionar_data('2018', 'January', '9')
end

#2º cenario
Quando("seleciono o submenu autocomplete") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Autocomplete')
end

Então("seleciono um estado") do
    widgets_inst.escolher_estado('São Paulo')
end

#3º cenario
Quando("seleciono o submenu accordion") do
    homepage.clicar_submenu('Accordion')
end

Então("seleciono os colapsibles") do
    widgets_inst.colapsable('First')
    expect(find('li[class="active"] div.collapsible-body > span').text).to eql 'Primeiro Texto.'
    widgets_inst.colapsable('Second')
    expect(find('li[class="active"] div.collapsible-body > span').text).to eql 'Segundo Texto.'
    widgets_inst.colapsable('Third')
    expect(find('li[class="active"] div.collapsible-body > span').text).to eql 'Terceiro Texto.'
end

