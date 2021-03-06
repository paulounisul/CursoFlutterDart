import 'dart:math';

main() {
  int c = 4;
  int d = 5;

  somaComPrint(2, 3);
  somaComPrint(c, d);
  somaGeneric();
}

//com void no inicio a função no vai retornar nada...
void somaComPrint(int a, int b) {
  print(a + b);
}

void somaGeneric() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print('Valores sorteados $n1 e $n2');
  print(n1 + n2);
}
