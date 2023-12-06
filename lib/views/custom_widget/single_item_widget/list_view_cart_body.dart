import 'package:dump_app/providers/order_provider.dart';
import 'package:dump_app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../localization/applocal.dart';
import '../../../models/cart_items.dart';
import '../../../providers/cart_provider.dart';
import '../../screens/check_ou_screen.dart';
import '../common_widget/custom_alert_dialog_cart_body.dart';

class ListViewCartBody extends StatelessWidget {
  const ListViewCartBody({
    Key? key,
    required this.cartData,
  }) : super(key: key);

  final Cart cartData;

  @override
  Widget build(BuildContext context) {
    final ordersPro = Provider.of<Orders>(context, listen: false);
    return ListView.builder(
      itemCount: cartData.cartListItems.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13.0),
            child: Dismissible(
              key: UniqueKey(),
              direction: DismissDirection.startToEnd,
              background: Container(
                padding: const EdgeInsets.only(right: 10.0),
                alignment: Alignment.centerRight,
                color: Colors.red[200],
                child: const Icon(Icons.delete),
              ),
              onDismissed: (DismissDirection direction) {
                cartData.removeFromCart(cartData.cartListItems[index]);
              },
              child: Card(
                color: Colors.amber[200],
                elevation: 5.0,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(7),
                  title: Text(
                    cartData.cartListItems[index].title,
                    style: const TextStyle(color: AppTheme.primTextColor),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      '${cartData.cartListItems[index].price} \$',
                      style: const TextStyle(
                        color: AppTheme.primTextColor,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  leading: Image.asset(cartData.cartListItems[index].img,
                      fit: BoxFit.cover),
                  trailing: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (_) => CustomAlertDailog(
                          cartData: cartData,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const CheckOutScreen(),
                              ),
                            );
                            // ordersPro.addOrder(
                            //     cartData.cartListItems, cartData.totalPrice);
                            ordersPro.addOrder(
                              cartData.cartListItems
                                  .map((item) => CartItem(
                                      img: item.img,
                                      price: item.price,
                                      title: item.title))
                                  .toList(),
                              cartData.totalPrice,
                            );

                            cartData
                                .removeFromCart(cartData.cartListItems[index]);
                          },
                        ),
                      );
                    },
                    child: Text(
                      '${AppLocale.of(context).getTranslated("order_now")}',
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
