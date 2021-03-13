class Data {
  int dia;
  int mes;
  int ano;
//   Data(int dia, int mes, int ano) {
//     this.dia = dia; //this usa os dados da instância da classe.
//     this.mes = mes;
//     this.ano = ano;
//   }

  //Data(this.dia, this.mes, this.ano);
  //deixar os paramentros opcionais com uso dos colchetes.
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  //chaves especifica que teras parâmetros nomeados.
  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});

  //outra forma contrutor nomeado..
  Data.ultimoDiaDoAno(this.ano) {
    dia = 31;
    mes = 12;
  }

  String obterFormatada() {
    return "$dia/$mes/$ano";
  }

  toString() {
    //return ('toString() da classe sobre  poe o metodo da linguagem.');
    return obterFormatada();
  }
}

main() {
  var dataAniversario = new Data(3, 05, 2021);
  //   dataAniversario.dia = 3;
  //   dataAniversario.mes = 10;
  //   dataAniversario.ano = 2021;

  Data dataCompra = Data(01, 02, 2022);
  //   dataCompra.dia = 12;
  //   dataCompra.mes = 11;
  //   dataCompra.ano = 2021;

  //   print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");
  //   print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");

  String d1 = dataAniversario.obterFormatada();

  print('Data Aniversário é : $d1');
  print('Data da Compra é : ' + dataCompra.obterFormatada());

  print(dataCompra);
  print(dataCompra.toString());

  print(new Data());
  print(Data(31));
  print(Data(31, 12));
  print(Data(31, 12, 2025));

  print(Data.com(ano: 2032));

  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print("O Micquei sera publico em $dataFinal");

  print(Data.ultimoDiaDoAno(2021));
}
