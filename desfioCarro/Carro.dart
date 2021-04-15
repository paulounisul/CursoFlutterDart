class Carro {
  int velocidadeFinal;
  int velocidadeAtual;
  int velocidadeMaxima;
  bool estaNoLimite;
  Carro(
      [this.estaNoLimite = false,
      this.velocidadeAtual = 0,
      this.velocidadeMaxima = 110,
      this.velocidadeFinal = 0]);

  Carro.velocidadeMaxima(this.velocidadeMaxima);

  //get and setter.
  acelerar([int velocidade = 5]) {
    this.velocidadeAtual += velocidade;
    validaVelocidade();
  }

  frear([int velocidade = 5]) {
    this.velocidadeAtual -= velocidade;
    validaVelocidade();
  }

  validaVelocidade() {
    this.estaNoLimite = (this.velocidadeAtual > this.velocidadeMaxima);
  }
}
