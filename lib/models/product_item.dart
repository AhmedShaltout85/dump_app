import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String img;
  final String title;
  final double price;
  bool isFavorite;
  Product({
    required this.id,
    required this.img,
    required this.title,
    required this.price,
    this.isFavorite = false,
  });

  void toggleIsFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
