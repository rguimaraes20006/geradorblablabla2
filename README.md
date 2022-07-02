#Gerador de Blábláblá 

##Package que gera um texto  de uma dica aleatória a ser utilizado na aplicação através da API pública https://api.adviceslip.com/advice

##Modo de uso:

1 - Referenciar o componente no pubspec.yaml


  geradorblablabla:
    git: https://github.com/rguimaraes20006/geradorblablabla.git
    

2 - Exemplo de chamada

```dart
FutureBuilder<RandomAdvice>(
          future:  RandomAdvice.getRandomAdvice() ,
          builder: (context, snapshot) {
            return Text(snapshot.data == null ? "é nulo":  snapshot.data!.slip.advice );
          },


```

