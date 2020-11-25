# Challenge Nelson Alexandre Mutane

este é o arquivo que contem instrucoes de como foi resolvido o desafio lançado.

## Linguagem usada Dart

## Primeiro

Criei 5 classes  e um arquivo que contem a funcao -**main()**- que me ajudaram a fazer um mapeamento correto dos dados da rest Api que sao:

- **Challenge [função main]** -
- **Country** -
- **Currency** -
- **Language** -
- **RegionalBlock** -
- **Translation** -
onde cada classe possue 2 funcoes basicas que sao **toJson e fromJson()** que me ajudaram de certa forma
a mapear os objetos para serialização *Json*.

## Segundo

fiz a transformacao do Objecto principal *Country* em *xml* com a funcao *toXml(XmlBuilder builder)* que faz o mapeamento do objecto em um arquivo xml.

## terceiro e ultimo

fiz uma transformacao do objecto principal *Country* em *csv e xlsx*.

- Notar que a transformacao de csv e xlsx nao foi completa em todos os campos da rest API pois estas extensoes de arquivo funcionam em forma Matricial oque torna muito complexo a trasformacao. mas os campos requeridos no desafio foram possiveis de transformar.-

- e para o caso do *xls* como sendo uma extensao mais antiga do *Excel* tive dificuldade de trabalhar com ela por motivo de incompatibilidade com a alinguagem de programacao que usei.-

## como encontrar arquivo executável 

- Se tiverem um compilador para dart é so fazer  a sequencia de comandos seguintes na *Cli*: -

- **git clone <https://mutane@bitbucket.org/mutane/developer-challenge-nelson-mutane.git>** -
- **cd Challenge** -
- **dart run** -

## se não tiver um compilador dart

- Encontre  na raiz da pasta do projecto da pasta que se localiza no link <https://bitbucket.org/mutane/developer-challenge-nelson-mutane/src/master/> com o nome de *Challenge.exe*-
