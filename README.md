# Desafio_Bionexo
Desafio para a empresa Bionexo

Para executar o projeto, seguir os passos abaixo:

1º Baixar a instalar o Ruby. Recomendo a versão 2.5.5 com DevKit. Abaixo link: https://rubyinstaller.org/downloads/archives/

2º Baixar e instalar um editor de texto e código. Eu recomendo o Visual Studio Code além de um Runner, no caso pode se rodar pelo terminal do próprio Visual Studio Code ou Console do Windows mas recomendo o CMDER.

Abaixo os links: https://code.visualstudio.com/download https://cmder.net

3º Clonar o projeto

4º Navegar até a pasta do projeto e executar o comando bundle install para instalar o gerenciador de libs do Ruby, mais ou menos como o está Maven para o Java.

5º Executar o comando bundle update para atualizar as libs e se certificar que estão todas atualizadas.

6º Agora é só rodar um cucumber --t e a tag do cenário como:

cucumber --t @buscar

Obs: O Arquivo cucumber.yml contém opções de perfis na execução dos cenários com possibilidade de rodar no firefox e chrome headless que é muito útil em uma esteira CI/CD além da troca de ambientes, neste caso teria que ser criado um .yml dentro da pasta ambiente dentro de support.

Na pasta reports, é possível ver o relatório do cucumber e o da lib Report Builder que é mais "encorpado".
