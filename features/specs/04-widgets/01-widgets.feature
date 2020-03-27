#language: pt

Funcionalidade: Iteragir com elementos complexos

Contexto: 
Dado que eu seleciono o menu widgets

@datapicker
Cenário: Selecionar uma data no calendário
Quando seleciono o submenu datapicker
Então seleciono uma data no calendário

@autocomplete
Cenário: Selecionar uma data no calendário
Quando seleciono o submenu autocomplete
Então seleciono um estado

@accordion
Cenário: Selecionar collapsible
Quando seleciono o submenu accordion
Então seleciono os colapsibles