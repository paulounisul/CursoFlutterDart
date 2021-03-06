main() {
  int a = 0;

  for (int a = 10; a < 100; a++) {
    print('repetições>>> a =  $a ');
  }

  int b = 0;
  for (; b <= 10; b++) {
    print('b = $b');
  }

  var notas = [8.9, 9.3, 7.8, 6.9];
  for (var i = 0; i < notas.length; i++) {
    print("Nota ${i + 1} = ${notas[i]}");
  }

  print('Fim!');
}
