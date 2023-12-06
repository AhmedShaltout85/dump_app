import 'package:dump_app/models/cart_items.dart';

class OrderItem {
  final String id;
  final double totalPrice;
  final List<CartItem> orderPorducts;
  final DateTime dateTime;
  OrderItem({
    required this.id,
    required this.totalPrice,
    required this.orderPorducts,
    required this.dateTime,
  });
}
