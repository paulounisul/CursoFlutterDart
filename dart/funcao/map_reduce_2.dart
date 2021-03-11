calcula1() {
  var notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  var total = 0.0;

  for (var nota in notas) {
    total += nota;
  }

  print('calcula 1 [$total]');
}

// reduce transforma uma lista em qualquer outra coisa.
calcula2() {
  var notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  var total = notas.reduce(somar);
  print('calcula 2 [$total]');
}

/* //não funcionou..
calcula3() {
  var notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  String total = notas.reduce(somarString);
  print('calcula 3 $total');
}

String somarString(String a, double elemento) {
  return "$a $elemento";
}
 */
calcula4() {
  var nomes = ['Ana', 'Bia', 'Carlos', 'Carlitos', 'Gaby', 'Jose'];
  print(nomes.reduce(juntar));
}

String juntar(String acumulador, String elemento) {
  //return "$acumulador, $elemento";
  print("$acumulador, $elemento");
  return "$acumulador, $elemento";
}

double somar(double a, double elemento) {
  print("$a $elemento");
  return a + elemento;
}

main() {
  calcula1();
  calcula2();
  calcula4();
}
