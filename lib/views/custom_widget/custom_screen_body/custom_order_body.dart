import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/order_provider.dart';
import '../single_item_widget/list_view_order_body.dart';

class CustomOrderBody extends StatelessWidget {
  const CustomOrderBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderProv = Provider.of<Orders>(context, listen: false);
    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: orderProv.orders.length,
      itemBuilder: (BuildContext context, int index) =>
          OrdersItems(orderProv.orders[index]),
    );
  }
}
