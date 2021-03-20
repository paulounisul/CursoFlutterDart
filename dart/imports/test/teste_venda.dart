import '../modelo/cliente.dart';
import '../modelo/produto.dart';
import '../modelo/venda.dart';
import '../modelo/venda_item.dart';

main() {
  Produto p1, p2, p3;
  VendaItem item1, item2, item3;
  Venda venda;

  //dados do produtos
  p1 = new Produto(codigo: 10, desconto: 2, nome: 'Batas Fritas', preco: 22);
  p2 = new Produto(
      codigo: 20, desconto: 3, nome: 'Caderno 12 folhas', preco: 28);

  //dados do produto1
  p3 = new Produto();
  p3.codigo = 30;
  p3.desconto = 8;
  p3.nome = 'Mochila Preta..';
  p3.preco = 140;

  item1 = new VendaItem(produto: p1, quantidade: 2);
  item2 = new VendaItem(produto: p2, quantidade: 5);
  item3 = new VendaItem(produto: p3, quantidade: 2);

  Cliente cliente = new Cliente(cpf: '12445545', nome: 'Jose ramirez lopes');

  venda = new Venda(cliente: cliente, itens: []);

  venda.itens.add(item1);
  venda.itens.add(item2);
  venda.itens.add(item3);

  print(venda.cliente.nome);
  print(venda.valorTotal);
  print(venda.toString());

  print('----------------');

  for (int i = 0; i <= venda.itens.length; i++) {
    print(venda.itens[i].preco);
    print(venda.itens[i].quantidade);
  }
  print(venda.valorTotal);
}
