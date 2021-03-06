main() {
  var listaCoisas = [
    'Banana',
    true,
    123,
    4.567,
    ['Maça', 'Prata', 'Catura']
  ];

  print(listaCoisas);

  List<String> frutas = ['Banana', 'Laranja', 'Tomate'];

  frutas.add('123');
  print(frutas);

  Map<String, double> salarios = {
    'gerente': 19345.45,
    'vendedor': 16345.8,
    'estagiário': 600.00,
  };

  print(salarios);
}
