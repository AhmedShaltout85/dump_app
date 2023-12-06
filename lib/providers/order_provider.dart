import 'package:flutter/foundation.dart';

import '../models/cart_items.dart';
import '../models/order_item.dart';

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];
 

  List<OrderItem> get orders {
    return [..._orders];
  }

 

  void addOrder(List<CartItem> cartProducts, double total) {
    // _orders.add(
    //   OrderItem(
    //       id: DateTime.now().toString(),
    //       // totalPrice: total,
    //       dateTime: DateTime.now(),
    //       orderPorducts: cartProducts),
    // );
    _orders.insert(
      0,
      OrderItem(
        id: DateTime.now().toString(),
        orderPorducts: cartProducts,
        dateTime: DateTime.now(),
        totalPrice: total,
      ),
    );

    notifyListeners();
  }

  void addAllOrders(OrderItem orderItem, List<CartItem> cartPro) {
    _orders.add(orderItem);

    notifyListeners();
  }

  void clearAll() {
    _orders = [];
    notifyListeners();
  }
}
