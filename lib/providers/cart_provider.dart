import 'package:dump_app/models/cart_items.dart';
import 'package:flutter/foundation.dart';

class Cart with ChangeNotifier {
  final List<CartItem> _items = [];
  double _totalPrice = 0.0;

  int get count {
    return _items.length;
  }

  double get totalPrice {
    return _totalPrice;
  }

  List<CartItem> get cartListItems {
    return [..._items];
  }

  void addtoCart(CartItem cartItem) {
    _items.add(cartItem);
    _totalPrice += cartItem.price * cartItem.quantity;
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    _totalPrice -= cartItem.price;
    _items.remove(cartItem);
    notifyListeners();
  }

  void clear() {
    _totalPrice = 0.0;
    _items.clear();

    notifyListeners();
  }
}
