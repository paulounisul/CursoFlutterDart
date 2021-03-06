main() {
  //Aritimeticos
  int a = 7;
  int b = 3;
  int resultado = a + b;

  print(resultado);
  //Operadores Binario precisa de dois operandos..
  //operador é um infix..  pois esta no meio dos operandos.
//   tipos de operador : infix, prefix

  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);

  b += b * 10;
  print(b);

  //Operadoes lógicos..
  print('--------------------[Logicos]-------------------');
  bool prdVencido = false;
  bool prdFragil = true;

  print(prdFragil);

  print(prdVencido && prdFragil); //false E
  print(prdFragil || prdVencido); //true  OU
  //OU exclusivo , somente quando um dos dois esta esclusivo. se os dois for verdadeiro retorna false.
  print(prdFragil ^ prdVencido); //XOR

  print(!prdFragil); //NOT ->Unário/Prefix
  print(!!prdFragil);
}
