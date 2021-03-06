import 'dart:io';

main() {
  stdout.write("Está Chovendo? (s/N)");
  bool estaChovendo = stdin.readLineSync() == 's';

  stdout.write("Está Frio? (s/N)");
  bool estaFrio = stdin.readLineSync() == 's';

  String resultado = estaChovendo || estaFrio ? "Ficar em Casa" : "Sair!!";

  print(resultado);
}
