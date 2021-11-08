import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier {
  List<Product> _items = dummyProducts;

  //retornando dessa forma, possibilita que o conteudo de items, seja alterado.
  //List<Product> get items => _items;
  //Já dessa forma forçara a passar pelos metódos de ProductList.
  //List<Product> get items => [..._items];

  bool _showFavoriteOnly = false;

  //refatorar para pegar apartir dos popup favorito ou todos.
  List<Product> get items => [..._items];
  List<Product> get favoriteItems =>
      _items.where((prod) => prod.isFavorite).toList();

  int get itemsCount {
    return _items.length;
  }

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
// antes de refatorar para favoritos #2

// bool _showFavoriteOnly = false;
// //refatorar para pegar apartir dos popup favorito ou todos.
// List<Product> get items {
//   if (_showFavoriteOnly) {
//     return _items.where((prod) => prod.isFavorite).toList();
//   }
//   return [..._items];
// }

// void showFavoriteOnly() {
//   _showFavoriteOnly = true;
//   notifyListeners();
// }

// void showAll() {
//   _showFavoriteOnly = false;
//   notifyListeners();
// }
