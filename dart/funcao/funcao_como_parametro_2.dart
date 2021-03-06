import 'funcao_como_parametro_1.dart';

int executarPor(int qtde, String Function(String) fn, String valor) {
  String textoCompleto = '';
  for (int i = 0; i < qtde; i++) {
    textoCompleto += fn(valor);
  }
  return textoCompleto.length;
}

main() {
  print('Teste');
  var meuPrint = (String valor) {
    print(valor);
    return valor;
  };
  int tamanho = executarPor(15, meuPrint, 'Muito Legal.. Print..');
  print('Tamanho da  string é : $tamanho');
}
