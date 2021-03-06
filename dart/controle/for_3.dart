main() {
  Map<String, double> notas = {
    'João Pedro': 9.4,
    'Luiz Gustavo': 6.4,
    'Maria Joana': 5.4,
    'Luiza Pedrina': 7.2,
    'Luiza Zilda': 8.2,
  };

  for (String nome in notas.keys) {
    print("Nome do Aluno é $nome e a nota é: ${notas[nome]}");
  }

  for (var nota in notas.values) {
    print("A nota é $nota");
  }

  print("--------------");
  print(notas.entries);
  print(notas.toString());
  print("--------------");

  for (var registro in notas.entries) {
    print("O ${registro.key} tem nota[${registro.value}]");
  }
}
