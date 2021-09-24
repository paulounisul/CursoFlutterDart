import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier {
  List<Product> _items = dummyProducts;

  //retornando dessa forma, possibilita que o conteudo de items, seja alterado.
  //List<Product> get items => _items;
  //Já dessa forma forçara a passar pelos metódos de ProductList.
  List<Product> get items => [..._items];

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
