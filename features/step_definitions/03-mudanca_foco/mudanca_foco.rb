#1º cenario
Dado("que eu seleciono o menu mudança de foco") do
    homepage.click_menu('Mudança de foco')
end

Quando("seleciono o submenu modal") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Modal')
end

Quando("clico em Abrir") do
    mudancaFoco_inst.abrir_modal
end

Então("o modal é exibido") do
    expect(page).to have_css 'div.modal-overlay'
end




#2º cenario
Quando("seleciono o submenu janela") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Janela')
end

Quando("clico no botão clique aqui") do
    mudancaFoco_inst.abrir_aba
end

Então("uma nova aba é aberta") do
    expect(page).to have_text 'Você Abriu uma nova janela!!'
end




#3º cenário
Quando("seleciono o submenu iframe") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Iframe')
end

Quando("seleciono a opção formulário dentro do iframe") do
    iframe = find('#id_do_iframe')
    switch_to_frame(iframe)
    homepage.click_menu('Formulário')
end

Quando("seleciono a criar usuário dentro do iframe") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Criar Usuários')
end

Quando("preecho o formulário para novo usuário") do
    criar_usuario.preencher_user
end

Entao("o usuário é cadastrado dentro do iframe") do
    msg = find('#notice').text
    expect(msg).to eql 'Usuário Criado com sucesso'
end



#4º cenário
Quando("seleciono o submenu Alert") do
    expect(page).to have_css 'div[style="display: block;"]'
    homepage.clicar_submenu('Alert')
end

Quando("abro o JS Alert") do
    mudancaFoco_inst.abrir_alerts('Js Alert')
end

Então("eu seleciono OK no JS Alert") do
    accept_alert
    expect(page).to have_text 'Você clicou no alerta com sucesso!!'
end

#5º cenário
Quando("abro o JS confirm") do
    mudancaFoco_inst.abrir_alerts('Js Confirm')
end

Então("eu seleciono OK no JS Confirm") do
    accept_confirm
    expect(page).to have_text 'Você clicou: Ok'
end

#6º cenário
Então("eu seleciono Cancel no JS Confirm") do
    dismiss_confirm
    expect(page).to have_text 'Você clicou: Cancel'
end

#7º cenário
Quando("abro o JS Prompt") do
    mudancaFoco_inst.abrir_alerts('Js Prompt')
end

Quando("digito um texto na caixa de diálogo") do
    accept_prompt(with: 'Deu Certo')
end

Então("eu seleciono OK no JS Prompt") do
    msg = find('#result').text
    expect(msg).to eql 'Você digitou: Deu Certo'
end
