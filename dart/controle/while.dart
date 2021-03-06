import 'dart:io';

main() {
  var digitado = '';

  //Assim
  int a = 0;
  while (a < 10) {
    print(a);
    a++;
  }
  print("-----------------------------");
  //ou assim
  for (int a = 0; a < 10; a++) {
    print(a);
  }

//Assimmmm
  while (digitado != 'Sair') {
    stdout.write('Digite algo ou [Sair]:');
    digitado = stdin.readLineSync();
    print(digitado);
  }

//Ouuu Assimmm
  for (digitado = ''; digitado != 'Sair';) {
    stdout.write('Digite algo ou [Sair]:');
    digitado = stdin.readLineSync();
    print(digitado);
  }

//Executa pelo menos uma vez...
  digitado = '';
  do {
    stdout.write('Digite algo ou [Sair]:');
    digitado = stdin.readLineSync();
    print(digitado);
  } while (digitado != 'Sair');

  print("Fim!!!");
}
