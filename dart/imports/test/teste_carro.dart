import '../modelo/carro.dart';

main() {
  var c1 = new Carro(320);

  while (!c1.estaNoLimite()) {
    print(" A Velocidade atual é ${c1.acelerar()} Km/h");
  }

  print("Carro chegou no máximo com velocidade de ${c1.velocidadeAtual} Km/h");

  while (!c1.estaParado()) {
    print("A velocidade atual é  ${c1.frear()} Km/h");
  }

  c1.velocidadeAtual = 500;
  c1.velocidadeAtual = -3;
  print("Carro parou com velocidade de ${c1.velocidadeAtual} Km/h");
}
