main() {
  var n1 = 2;
  var texto = 'O Valor e :';
  var n2 = 4.567;

  print(texto + (n1 + n2).toString());
  print(texto.runtimeType);

  texto = 1323.toString() + "/";
  print(texto + (n1 + n2).toString());
}
