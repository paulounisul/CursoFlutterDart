main() {
  //Cuidar para esse codigo, pois aqui a funcão adicaoSet não vai retornar o
  //resultado de a + b , mais sim um set de a e b = {ab}  (2,3) => {23}
  var adicaoSet = (int a, int b) => {a + b};

  var adicao = (int a, int b) => a + b;
  var subtracao = (int a, int b) => a - b;
  var multiplicacao = (int a, int b) => a * b;
  var divisao = (int a, int b) => a / b;

  print(adicao(4, 19));
  print(subtracao(9, 13));
  print(multiplicacao(9, 13));
  print(divisao(9, 13));
}
