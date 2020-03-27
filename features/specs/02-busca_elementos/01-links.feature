#language: pt
Funcionalidade: Acessar Links

@link_200 
Cenário: Acessar link 200 sucess
Dado que eu selecionei a opcao busca de elementos
E acessei a opção links
Quando clico no link "Ok 200 - Sucess"
Então a imagem "Deadpool" com o texto de "Success!!" é exibida

@link_404
Cenário: Acessar link 404 page not found
Dado que eu selecionei a opcao busca de elementos
E acessei a opção links
Quando clico no link "Erro 404 - Page not found"
Então a imagem "Deadpoolsad" com o texto de "Page Not Found!!" é exibida

@link_400
Cenário: Acessar link 400 page not found
Dado que eu selecionei a opcao busca de elementos
E acessei a opção links
Quando clico no link "Erro 400 - Bad Request"
Então a imagem "Spider" com o texto de "Bad Request!!" é exibida

@link_500
Cenário: Acessar link 500 - Internal Server Error
Dado que eu selecionei a opcao busca de elementos
E acessei a opção links
Quando clico no link "Erro 500 - Internal Server Error"
Então a imagem "Servidor" com o texto de "Internal Server Error!!" é exibida
