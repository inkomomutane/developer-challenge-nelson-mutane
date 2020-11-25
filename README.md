# Challenge Nelson Alexandre Mutane

Este é o arquivo que contem instrucoes de como foi resolvido o desafio lançado.

## Linguagem usada Dart

## Primeiro

Criei 5 classes e um arquivo que contem a funcao -**main()**- que me ajudaram a fazer um mapeamento correto dos dados da rest Api que são:

- **Challenge [função main]** -
- **Country** -
- **Currency** -
- **Language** -
- **RegionalBlock** -
- **Translation** -
  Onde cada classe possue 2 funcoes basicas que sao **toJson e fromJson()** que me ajudaram de certa forma
  a mapear os objetos para serialização _Json_.

## Segundo

fiz a transformacao do Objecto principal _Country_ em _xml_ com a funcao _toXml(XmlBuilder builder)_ que faz o mapeamento do objecto em um arquivo xml.

## Terceiro e último

fiz uma transformacao do objecto principal _Country_ em _csv e xlsx_.

- Notar que a transformacao de csv e xlsx nao foi completa em todos os campos da rest API pois estas extensoes de arquivo funcionam em forma Matricial oque torna muito complexo a trasformacao. mas os campos requeridos no desafio foram possiveis de transformar.-

- e para o caso do _xls_ como sendo uma extensao mais antiga do _Excel_ tive dificuldade de trabalhar com ela por motivo de incompatibilidade com a alinguagem de programacao que usei.-

## Como encontrar arquivo executável

- Se tiverem um compilador para dart é so fazer a sequencia de comandos seguintes na _Cli_: -

- **git clone <https://mutane@bitbucket.org/mutane/developer-challenge-nelson-mutane.git>** -
- **cd Challenge** -
- **dart run** -

## Se não tiver um compilador dart

- Encontre na raiz da pasta do projecto da pasta que se localiza no link _<https://bitbucket.org/mutane/developer-challenge-nelson-mutane/src/master/>_ com o nome de _Challenge.exe_ usando o link seguinte _<https://bitbucket.org/mutane/developer-challenge-nelson-mutane/src/master/Challenge.exe>_ e clique no _View raw_-
