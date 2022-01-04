import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier {
  //refatorar para usar url diferente no get e push
  final _baseUrl =
      'https://shop-cod3r-e3bd2-default-rtdb.firebaseio.com/products';
  List<Product> _items = []; //dummyProducts;

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

  //Refatorando lista de produtos. de dummydata para FireBase.
  Future<void> loadProducts() async {
    _items.clear();
    final response = await http.get(
      Uri.parse('$_baseUrl.json'),
    );

    if (response.body == 'null') return;
    //else faz o load
    Map<String, dynamic> data = jsonDecode(response.body);
    data.forEach((productId, productData) {
      _items.add(
        Product(
          id: productId,
          name: productData['name'],
          description: productData['description'],
          price: productData['price'],
          imageUrl: productData['imageUrl'],
          isFavorite: productData['isFavorite'],
        ),
      );
    });
    notifyListeners();
  }

  Future<void> saveProduct(Map<String, Object> data) {
    bool hasId = data['id'] != null;

    final product = Product(
      id: hasId
          ? data['id'] as String
          : Random().nextDouble().toString().toString(),
      name: data['name'] as String,
      description: data['description'] as String,
      price: data['price'] as double,
      imageUrl: data['imageUrl'] as String,
    );
    if (hasId) {
      return updateProduct(product);
    } else {
      return addProduct(product);
    }
  }

  //2-Refatorar para async await.
  //1-refatorar addProduct para future.
  Future<void> addProduct(Product product) async {
    final response = await http.post(
      //a url terminada em .json e especificão do FireBase. lembrar Disso.
      Uri.parse('$_baseUrl.json'),
      body: jsonEncode(
        {
          "name": product.name,
          "description": product.description,
          "price": product.price,
          "imageUrl": product.imageUrl,
          "isFavorite": product.isFavorite,
        },
      ),
    );

    final id = jsonDecode(response.body)['name'];
    _items.add(Product(
      id: id,
      name: product.name,
      description: product.description,
      price: product.price,
      imageUrl: product.imageUrl,
      isFavorite: product.isFavorite,
    ));
    notifyListeners();
  }

  //refatorar updateProduct para Future.
  Future<void> updateProduct(Product product) async {
    int index = _items.indexWhere((p) => p.id == product.id);

    if (index >= 0) {
      await http.patch(
        //a url terminada em .json e especifica do FireBase. lembrar Disso.
        Uri.parse('$_baseUrl/${product.id}.json'),
        body: jsonEncode(
          {
            "name": product.name,
            "description": product.description,
            "price": product.price,
            "imageUrl": product.imageUrl,
          },
        ),
      );

      _items[index] = product;
      notifyListeners();
    }
    return Future.value();
  }

  Future<void> removeProduct(Product product) async {
    int index = _items.indexWhere((p) => p.id == product.id);

    if (index >= 0) {
      final product = _items[index];
      _items.remove(product);
      notifyListeners();

      final response = await http.delete(
        Uri.parse('$_baseUrl/${product.id}'),
      );

      //erro na familia dos 400 é erro do lado do cliente.
      //erro na familia dos 500 são erros do lado do servidor.
      if (response.statusCode >= 400) {
        _items.insert(index, product);
        notifyListeners();
      }
    }
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
