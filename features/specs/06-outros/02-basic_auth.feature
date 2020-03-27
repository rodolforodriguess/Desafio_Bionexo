#language: pt

Funcionalidade: Basic authetication

@basic_auth
Cenário: Basic Auth
Dado que eu selecionei o menu outros
Quando seleciono o submenu basic authetication
E faço a autenticação com usuário "admin" e senha "admin"
Então eu me autentico com sucesso