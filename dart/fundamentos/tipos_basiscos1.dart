/* 
  - Númeos ( int e double)
  - String (String)
  - Booleano ( bool )
  - dynamic 
*/

main() {
  int n1 = 3;
  double n2 = -5.67.abs();
  double n3 = double.parse("12.765");
  num n4 = 6;
  DateTime dd = DateTime.now();

  print(n1.abs() + n2 + n3 + n4);
  n4 = 6;
  print(n1.abs() + n2 + n3 + n4);

  String s1 = "bom";
  String s2 = " dia";

  print(s1 + s2.toUpperCase() + "!!!!");

  bool estaChovendo = true;
  bool muitoFrio = false;

  print(estaChovendo && muitoFrio);

  dynamic x = 'Bom Dia seus curva-de-rio';
  print(x);
  x = 1234;
  print(x);

  x = false;
  print(x);
}
