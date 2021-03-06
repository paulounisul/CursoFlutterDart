main() {
  // Operadores Atribuição ( binario/infix )
  double a = 2;
  a = a + 3;

  a += 3;
  a -= 3;
  a *= 3;

  a /= 5;
  a %= 2;

  print(a);

  // Operadores Relacionais ( binario/infix ) -> o resultado Sempe e Bool.

  print(3 > 2);
  print(3 >= 3);
  print(3 < 4);
  print(3 <= 3);
  print(3 == 3);
  print('33'.substring(0, 1) == '3');

  print(2 + 5 > 3 - 1 && 4 + 7 != 7 - 4);

  // 101 = 5
  // 100 = 4
  // 100 = 4
  //comparação bit a bit
  print(5 & 4);
}
