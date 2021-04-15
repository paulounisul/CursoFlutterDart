import './Carro.dart';

main() {
  var carro = Carro();
  carro.velocidadeFinal = 110;
  carro.velocidadeAtual = 0;

  for (int rep = 1; rep < 15; rep++) {
    if (carro.estaNoLimite) {
      do {
        carro.frear(5);
      } while (carro.estaNoLimite);

      print('Freou ');
    } else {
      carro.acelerar(rep * 5);
      print('Acelerou');
    }

    print('Velocidade Atual é: ${carro.velocidadeAtual}');
  }
}
