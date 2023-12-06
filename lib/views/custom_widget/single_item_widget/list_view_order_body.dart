import 'package:dump_app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../models/order_item.dart';

class OrdersItems extends StatelessWidget {
  const OrdersItems(this.order, {Key? key}) : super(key: key);
  final OrderItem order;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9.0),
        child: ExpansionTile(
          backgroundColor: Colors.amber[200],
          childrenPadding: const EdgeInsets.all(9.0),
          title: Text(
            "${DateFormat('dd/MM/yyyy   hh:mm').format(order.dateTime)}  \n\n TotalPrice: ${order.totalPrice.toStringAsFixed(2)} \$ \n\n ",
          ),
          children: order.orderPorducts
              .map((prod) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        prod.title,
                        style: const TextStyle(
                            color: AppTheme.primColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        prod.price.toString(),
                        style: const TextStyle(
                            color: AppTheme.primColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.monetization_on_outlined)
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
