class CartItem {
  final String img;
  final double price;
  final String title;
  int quantity;

  CartItem({
    required this.img,
    required this.price,
    required this.title,
    this.quantity = 1,
  });
}
