main() {
  juntar(1, 9);
  juntar('Hello', ' World!!');
  String resultado = juntar('O Valor de PI é ', 3.1415);

  print(resultado.toLowerCase());
}

juntar(dynamic a, b) {
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}
