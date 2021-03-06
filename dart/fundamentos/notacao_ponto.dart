main() {
  double nota = 6.99;
  print(nota);
  print(nota.toDouble());
  print(nota.roundToDouble());

  print("Texto".toUpperCase());

  String s1 = "leonardo Leitao";
  String s2 = s1.substring(0, 8);
  String s3 = s2.toLowerCase();
  String s4 = s3.padRight(15, "!");

  var s5 = "leoanardo Leitão"
      .substring(0, 8)
      .toLowerCase()
      .padRight(15, "!")
      .substring(0, 10);

  print(s5);
  print(s5.runes); //codigo
}
