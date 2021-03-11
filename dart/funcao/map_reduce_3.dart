main() {
  var alunos = [
    {'nome': 'Alfreto', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  var total = alunos
      .map((aluno) => aluno['nota'])
      .map((nota) => (nota as double))
      .where((nota) => nota >= 8)
      .reduce((t, a) => t + a);

  print(total);

  print("O valor da média é ${total / alunos.length}.");
}

double myPrint(var nota) {
  print(nota);
  return nota;
}
