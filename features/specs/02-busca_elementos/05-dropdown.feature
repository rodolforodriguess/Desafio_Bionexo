#language: pt

Funcionalidade: Interagir com dropdowns

Contexto: 
Dado que eu selecionei a opcao busca de elementos

@mail_box
Esquema do Cenário: Abrir Mail Box
Quando seleciono o submenu Dropdown e Select
E clico no botão Mail
E seleciono a opção <Opção> no dropdown em estilo mailbox
Então a <Mensagem> é exibida

Exemplos:
| Opção    |                Mensagem           |
| 'Inbox'  | 'Você Clicou no Dropdown Inbox!'  |
| 'Unread' | 'Você Clicou no Dropdown Unread!' |
| 'Sent'   | 'Você Clicou no Dropdown Sent!'   |
| 'Outbox' | 'Você Clicou no Dropdown Outbox!' |

@selects
Esquema do Cenário: Abrir Selects
Quando seleciono o submenu Dropdown e Select
Então seleciono o <Desenho Favorito>, <Jogador>, <Pais>, <Genero>, <Sexo>

Exemplos:
| Desenho Favorito  | Jogador  | Pais  | Genero   | Sexo |
| 'Naruto' | 'Ronaldo'  | 'Brasil'  | 'Homem'   | 'Masculino' |
| 'Dragon Ball'  | 'Ronaldinho Gaucho'  | 'Alemanha'  | 'Mulher'   | 'Feminino' |
|  'Cavaleiros dos Zodiacos'  | 'Romario'  | 'Inglaterra'  | 'Homem'   | 'Masculino' |
| 'Dragon Ball'  | 'Ronaldo'  | 'Argentina'  | 'Mulher'   | 'Feminino' |