import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:great_places/utils/db_util.dart';

import '../models/place.dart';

class GreatPlaces with ChangeNotifier {
  final List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  Place getItem(int index) {
    return _items[index];
  }

  Place itemByIndex(int index) {
    return _items[index];
  }

  void addPlaces(String title, File image) {
    final newPlace = Place(
      id: Random().nextDouble().toString(),
      title: title,
      image: image,
      location: PlaceLocation(latitude: 0, longitude: 0),
    );
    _items.add(newPlace);
    DbUtil.insert('places', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image.path,
    });
    notifyListeners();
  }
}
