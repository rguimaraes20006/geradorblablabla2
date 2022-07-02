import 'package:flutter_test/flutter_test.dart';

import 'package:descricaoaleatoria/descricaoaleatoria.dart';

void main() {
  test('Verificar se obteve o item da API', () {

    
  Future<RandomAdvice> future = RandomAdvice.getRandomAdvice();
  future.then((valor) {

    expect(valor.slip, isNot(equals(null)));
   
  });
  expect(future, completes);
});

    

  
}
