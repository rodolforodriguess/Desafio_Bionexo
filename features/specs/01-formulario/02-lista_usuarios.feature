#language: pt

Funcionalidade: Acessar lista de usuários

@visualizar_usuário 
Cenário: Visualizar usuário na lista de usuário
Dado que eu acessei a lista de usuários
Quando seleciono a lupa para visualizar um usuário
Então sou direcionado a página de informações do usuario

@excluir_usuario 
Cenário: Excluir usuário da lista de usuários
Dado que eu acessei a lista de usuários
Quando clico no botão excluir
E confirmo
Então o usuário e excluído

@editar_usuario 
Cenário: Editar usuário da lista de usuários
Dado que eu acessei a lista de usuários
Quando clico no botão editar
E sou direcionado a tela de edição do usuário com o texto 'Editar Usuário!!'
E edito um usuário
Então o usuário é editado

