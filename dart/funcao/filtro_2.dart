//uso do where = filtro. e se será descrito em filtro_3
main() {
  var notas = [8.2, 7.1, 6.3, 4.4, 3.9, 8.8, 9.1, 5.1];

  //bool Function(double) notasBoasFn = (double nota) => nota >= 7;

  //posso inferir typo da função.. com o uso de var. e retirar o valor literal.
  var notasBoasFn = (double nota) => nota >= 7;
  var notasMuitoBoasFn = (double nota) => nota >= 8.8;

  var notasBoas = notas.where(notasBoasFn);
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);

  print(notas);
  print(notasBoas);
  print(notasMuitoBoas);
}
