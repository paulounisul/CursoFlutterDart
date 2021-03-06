import 'dart:io';

main() {
  //Área da circunferência = PI * raio * raio
  const PI = 3.1415;

  // print('Informe o Raio:');
  stdout.write("Informe o raio: ");
  var entradaDoUsuario = stdin.readLineSync();
  final raio = double.parse(entradaDoUsuario);

  final area = PI * raio * raio;
  print("O Valor da área é:" + area.toString());
  // print(texto.runtimeType);
}
