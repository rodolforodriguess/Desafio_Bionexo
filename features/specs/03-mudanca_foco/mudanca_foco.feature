#language: pt

Funcionalidade: Mudança de foco

Contexto: 
Dado que eu seleciono o menu mudança de foco

@modal
Cenário: Abrir um modal
Quando seleciono o submenu modal
E clico em Abrir
Então o modal é exibido

@janela
Cenário: Abrir uma janela
Quando seleciono o submenu janela
E clico no botão clique aqui
Então uma nova aba é aberta

@iframe
Cenário: Cadastrar uma usuário dentro do iframe
Quando seleciono o submenu iframe
E seleciono a opção formulário dentro do iframe
E seleciono a criar usuário dentro do iframe
E preecho o formulário para novo usuário
Entao o usuário é cadastrado dentro do iframe

@js_alert
Cenário: Manipular JS Alert
Quando seleciono o submenu Alert
E abro o JS Alert
Então eu seleciono OK no JS Alert

@js_confirm_ok
Cenário: Manipular JS Confirm OK
Quando seleciono o submenu Alert
E abro o JS confirm
Então eu seleciono OK no JS Confirm

@js_confirm_cancel
Cenário: Manipular JS Confirm Cancel
Quando seleciono o submenu Alert
E abro o JS confirm
Então eu seleciono Cancel no JS Confirm

@js_prompt
Cenário: Manipular JS Prompt
Quando seleciono o submenu Alert
E abro o JS Prompt
E digito um texto na caixa de diálogo
Então eu seleciono OK no JS Prompt
