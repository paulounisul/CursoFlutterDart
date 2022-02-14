import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop/utils/constantes.dart';

class Product with ChangeNotifier {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });

  void _toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }

  Future<void> toggleFavorite(String token, String userId) async {
    try {
      _toggleFavorite();

      //refatorado para put. pois agora não vai mais atualizar produto. Mais sim popular a propria rota de favorito.
      final response = await http.put(
        //a url terminada em .json e especifica do FireBase. lembrar Disso.
        Uri.parse(
            '${Constants.PRODUCT_FAVORITE_URL}/$userId/$id.json?auth=$token'),
        body: jsonEncode(isFavorite),
      );

      if (response.statusCode >= 400) {
        _toggleFavorite();
        print('Não salvou o favoritos no firebase');
      }
    } catch (_) {
      _toggleFavorite();
    }
  }
}
