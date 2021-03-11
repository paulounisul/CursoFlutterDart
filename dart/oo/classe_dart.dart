class Data {
  int dia;
  int mes;
  int ano;

  String obterFormatada() {
    return "$dia/$mes/$ano";
  }

  toString() {
    //return ('toString() da classe sobre  poe o metodo da linguagem.');
    return obterFormatada();
  }
}

main() {
  var dataAniversario = new Data();
  dataAniversario.dia = 3;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2021;

  Data dataCompra = Data();
  dataCompra.dia = 12;
  dataCompra.mes = 11;
  dataCompra.ano = 2021;

//   print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");
//   print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");

  String d1 = dataAniversario.obterFormatada();

  print('Data Aniversário é : $d1');
  print('Data da Compra é : ' + dataCompra.obterFormatada());

  print(dataCompra);
  print(dataCompra.toString());

  Data d2 = dataCompra;
  String s1 = dataCompra.toString();

  print('Resultado chamada direta $d1<-->$s1');
}
