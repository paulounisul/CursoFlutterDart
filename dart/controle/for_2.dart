//for in

main() {
  var notas = [8.9, 9.3, 7.8, 6.9];

  for (var nota in notas) {
    print(" O Valor da nota e: $nota");
  }

  var cordenadas = [
    [10, 1],
    [25, 2],
    [4, 5],
    [5, 7],
    [10, 5],
  ];

  for (var cordenada in cordenadas) {
    print("Valor ${cordenada[0]} e ${cordenada[1]}");
    print("-----------------");
    for (var ponto in cordenada) {
      print("Valo do ponto é $ponto");
    }
  }
}
