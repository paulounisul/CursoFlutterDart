main() {
  saudarPessoa(nome: "João", idade: 33);
  saudarPessoa(idade: 45, nome: "Maria");
  saudarPessoa(nome: "Pedro", idade: 15);

  imprimirData(7);
  imprimirData(7, ano: 2020);
  imprimirData(7, ano: 2021, mes: 12);
}

//chaves muda de parametros posicionais para parametros nomeados.
saudarPessoa({String nome, int idade}) {
  print("Olá $nome nem parece que voce tem $idade anos..");
}

imprimirData(int dia, {int ano = 1970, int mes = 1}) {
  print('$dia/$mes/$ano');
}
