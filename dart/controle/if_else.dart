import 'dart:math';

main() {
  var nota = Random().nextInt(11);

  if (nota >= 9) {
    print(nota.toString() + ' <<< Quadro de Honra..');
  }

  if (nota >= 7) {
    print('$nota  <<< Aprovado');
  } else if (nota >= 5) {
    print('$nota <<< Recuperacao');
  } else if (nota >= 4) {
    print('$nota <<< Recuperacao + Trabalho');
  } else {
    print('$nota  <<< Reprovado');
  }
}
