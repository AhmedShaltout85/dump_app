import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../models/product_item.dart';

class Products with ChangeNotifier {
  final List<Product> _productsItems = [
    Product(
      id: DateTime.now().toString(),
      img: 'assets/imgs/1.jpg',
      price: 12.01,
      title: 'Mobile Samsung grand 1',
    ),
    Product(
      id: DateTime.now().toString(),
      img: 'assets/imgs/2.jpg',
      price: 13.01,
      title: 'Mobile Hawawi ',
    ),
    Product(
      id: DateTime.now().toString(),
      img: 'assets/imgs/3.png',
      price: 14.01,
      title: 'Mobile I-phone',
    ),
    Product(
      id: DateTime.now().toString(),
      img: 'assets/imgs/4.jpeg',
      price: 15.01,
      title: 'Mobile tablet',
    ),
    Product(
      id: DateTime.now().toString(),
      img: 'assets/imgs/5.jpeg',
      price: 16.01,
      title: 'Mobile Ipad',
    ),
    Product(
      id: DateTime.now().toString(),
      img: 'assets/imgs/6.jpeg',
      price: 17.01,
      title: 'Mobile ReadMe',
    ),
    Product(
      id: DateTime.now().toString(),
      img: 'assets/imgs/7.png',
      price: 18.01,
      title: 'Mobile BlueBird',
    ),
    Product(
      id: DateTime.now().toString(),
      img: 'assets/imgs/8.jpg',
      price: 19.01,
      title: 'Mobile infinx',
    ),
    Product(
      id: DateTime.now().toString(),
      img: 'assets/imgs/9.jpeg',
      price: 20.01,
      title: 'Mobile Oppo',
    ),
    Product(
      id: DateTime.now().toString(),
      img: 'assets/imgs/10.jpg',
      price: 21.01,
      title: 'Mobile shawMe',
    ),
  ];

  var _showFavorites = false;

  int get count {
    return _productsItems.length;
  }

  List<Product> get productsItems {
    if (_showFavorites) {
      _productsItems.where((productItem) => productItem.isFavorite).toList();
    }
    return [..._productsItems];
  }

  void showAll() {
    _showFavorites = false;
    notifyListeners();
  }

  void showOnlyFavorites() {
    _showFavorites = true;
    notifyListeners();
  }

  void addNewProduct(Product product) {
    _productsItems.add(product);
    notifyListeners();
  }

  void removeItems(Product product) {
    _productsItems.remove(product);
    notifyListeners();
  }

  Future<void> removeProduct(String id) async {
    const url = "";
    // "https://flutter-app-568d3.firebaseio.com/products/$id";
    final exitingProductIndex =
        productsItems.indexWhere((element) => element.id == id);
    final exitingProduct = productsItems[exitingProductIndex];
    productsItems.removeAt(exitingProductIndex);
    notifyListeners();
    var response = await http.delete(Uri.parse(url));

    if (response.statusCode >= 400) {
      // remove
      // .....
      productsItems.insert(exitingProductIndex, exitingProduct);
      notifyListeners();
    }
    // exitingProduct = null;
  }
}
