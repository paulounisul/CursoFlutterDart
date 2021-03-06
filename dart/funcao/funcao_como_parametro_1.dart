import 'dart:math';

//void executar(Function fnPar, Function fnImpar) {
//parametro declarados
void executar({Function fnPar, Function fnImpar}) {
  var sorteado = Random().nextInt(10);
  print('O Valor Sorteado foi: $sorteado');
  sorteado % 2 == 0 ? fnPar() : fnImpar();
}

main() {
  var minhaFnPar = () => print('Eita ! O Valor é par!');
  var minhaFnImpar = () => print('Legal! o Valor é Impar!');

  //executar(minhaFnPar, minhaFnImpar);
  //parametro declarados
  executar(fnPar: minhaFnPar, fnImpar: minhaFnImpar);
}
