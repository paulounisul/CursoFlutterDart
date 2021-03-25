import '../modelo/produto.dart';
import '../modelo/venda.dart';
import '../modelo/cliente.dart';
import '../modelo/venda_item.dart';

main() {
  var venda = Venda(
      cliente: Cliente(
        cpf: '123.456.456.145',
        nome: 'Jose ramires',
      ),
      itens: <VendaItem>[
        VendaItem(
          quantidade: 2,
          produto: Produto(
            codigo: 1,
            nome: 'Celular Apple. 10',
            preco: 100,
            desconto: 0.1,
          ),
        ),
        VendaItem(
          quantidade: 3,
          produto: Produto(
            codigo: 5,
            nome: 'Mi Fit Band.',
            preco: 20,
            desconto: 0.1,
          ),
        ),
        VendaItem(
          quantidade: 3,
          produto: Produto(
            codigo: 3,
            nome: 'Apple Watch',
            preco: 50.0,
            desconto: 0.1,
          ),
        ),
      ]);

  print("O Valor Total da Venda é: R\$${venda.valorTotal}");

  print("Produto 1 é: " + venda.itens[0].produto.nome);

  print("O cpf do cliente é  é: ${venda.cliente.cpf}");
}
