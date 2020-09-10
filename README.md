# Curso-Flutter
Apps desenvolvidos nos cursos de Flutter.

# APP JOKENPO
A versão do App pedra, papel e tesoura para brincarnas horas livres.

O app utiliza o layout definido pelo Widget Scaffold, com sua AppBar na cor Blue e o seu título, no body tem um layout simples, com um padding envolvendo uma coluna, encontra-se nessa coluna um texto "Escolha do App", uma imagem para exibição do resultado do sistema, outro texto que informará o vencedor e uma linha dentro dessa coluna com três imagens que estão as opções para serem selecionadas entre pedra, papel e tesoura respectivamente, ambas com gesture detector, para que esse jogo funcione o método dentro da classe _JogoState é desenvolvido da seguinte forma:

Antes do método foi declarado duas variáveis _resultado na qual será passado quem venceu, e _imagem que será informada a escolha do App, ambas com valores iniciais, "JOGUE PARA VENCER!" e "assets/padrao.png", respectivamente, e após um array com as mesmas imagens correspondentes na linha de escolha do usuário, pedra, papel e tesoura, esse array, escolhaApp será usada para a escolha aleatória da classe Random, após, no método gerarResultado, o mesmo é um método vazio que tem como parâmetro um String objeto, que irá receber no GestureDetector, de acordo com o escolhido pelo usuário, essa informação é muito importante, pois, será usada para definir o vencedor mediantes as comparações, como a função dentro do GestureDetector o onTap não pode aceitar uma função vazia, foi declarado uma função anônima que retornava a função gerarResultador, dentro da função gerarResultado a classe Random, gerava um número aleatório correspondente ao tamanho do array, usando escolhaApp.length, essse valor utilizado como índice do array era recebido por uma váriavel do tipo String chamada imagem que dentro do setState criava um novo estado para para a váriavel _imagem, desse modo após, testava de acordo com a imagem escolhida e o escolhido pelo usuário através do parâmetro objeto dentro de uma estrutura condicional if/else para análisar o vencedor, após a análise ela mudava o estado da váriavel _resultado com a informação do vencedor. 

OBSERVAÇÃO: Dentro do diretório lib se encontra dois arquivos, o main na qual será renderizado o app e o jogo, ambos aquivos dart, toda estrutura visual e funcional se encontra dentro do arquivo jogo para melhor organização.

# APP ÁLCOOL OU GASOLINA
A proposta do App é apresentar ao usuário se é melhor ele abastecer com gasolina ou álcool, através do seguinte conceito:
    "Multiplique o valor da gasolina no posto de combustível por 0,7. Se o resultado for maior que o valor do álcool, vale abastecer com álcool. Se o resultado for menor que valor do álcool, abasteça com gasolina."

O que possibilita essa conceito é a existência de um método, que pega os objetos do tipo TextEditingController com os dados digitados nos TextField's e converte eles para String e após para double, realiza essa conta e faz uma comparação dentro de uma condicional If/Else, é um app simples, que trás três Widgets não visto nos anteriores a ele, o Widget TextField com todos seus requisitos, Divider e SingleShildScrollView.

# ENTRE EM CONTATO COMIGO:
    WHATSAPP: +55 (35) 9 8452-5250.
    INSTAGRAN: @eu.gabrielcamargo.

Att,
GABRIEL CAMARGO
gabrielhcamargocontato@gmail.com

