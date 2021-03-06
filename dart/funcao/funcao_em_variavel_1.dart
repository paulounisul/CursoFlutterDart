main() {
//tipo nome = valor

  //função que já existe.
  int Function(int, int) soma1 = somaFn;
  print(soma1(30, 415));

  //chamar uma função anonima.
  //ponto e vircula depois do parenteses da funcao pois é um sentença de codigo.
  int Function(int, int) soma2 = (x, y) {
    return x + y;
  };

  print(soma2(20, 325));

  //outra forma e usar a inferencia
  var soma3 = ([int x = 1, int y = 2]) {
    return x + y;
  };

  print(soma3(15, 100));
  print(soma3(50));
}

int somaFn(int a, int b) {
  return a + b;
}
