main() {
  String nome = 'João';
  String status = 'aprovado';
  double nota = 9.2;

  String frase1 =
      nome + "está " + status + " pq tirou nota " + nota.toString() + "!";

//com \ usa o valor literal..
  //String frase2 = "\$nome está $status pq tirou nota $nota!";
  String frase2 = "\$nome está $status pq tirou nota $nota!";
  String frase3 = "$nome está $status pq tirou nota ${nota.toString()}!";

  print(frase1);
  print(frase2);
  print(frase3);

  print("30 * 30 = ${30 * 30} ");
}
