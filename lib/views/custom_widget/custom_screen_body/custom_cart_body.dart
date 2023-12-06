import 'package:dump_app/models/cart_items.dart';
import 'package:dump_app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../localization/applocal.dart';
import '../../../providers/cart_provider.dart';
import '../../../providers/order_provider.dart';
import '../../screens/check_ou_screen.dart';
import '../common_widget/custom_alert_dialog_cart_body.dart';
import '../single_item_widget/list_view_cart_body.dart';

class CustomCartBody extends StatelessWidget {
  const CustomCartBody({
    Key? key,
    required this.cartData,
  }) : super(key: key);

  final Cart cartData;

  @override
  Widget build(BuildContext context) {
    final ordersPro = Provider.of<Orders>(context, listen: false);

    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 70,
          width: double.infinity,
          child: Card(
            color: Colors.black12,
            elevation: 7,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '${AppLocale.of(context).getTranslated("total_price")}',
                    style: const TextStyle(color: AppTheme.txtColor),
                  ),
                  Chip(
                    label: Text(
                      '${cartData.totalPrice.toStringAsFixed(2)} \$',
                      style: const TextStyle(
                        color: AppTheme.txtColor,
                      ),
                    ),
                    backgroundColor: AppTheme.primColor,
                    elevation: 5,
                  ),
                  TextButton(
                    onPressed: (cartData.totalPrice <= 0)
                        ? null
                        : () {
                            // cartData.activeIsLoading();
                            if (cartData.cartListItems.isEmpty) {
                              return;
                            } else {
                              showDialog(
                                context: context,
                                builder: (_) => CustomAlertDailog(
                                  cartData: cartData,
                                  onPressed: () {
                                    ordersPro.addOrder(
                                      cartData.cartListItems
                                          .map((item) => CartItem(
                                              img: item.img,
                                              price: item.price,
                                              title: item.title))
                                          .toList(),
                                      cartData.totalPrice,
                                    );

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const CheckOutScreen(),
                                      ),
                                    );
                                    // cartData.disableIsLoading();
                                    cartData.clear();
                                  },
                                ),
                              );
                              Navigator.of(context);
                            }
                          },
                    child: 
                    // cartData.isLoading == true
                    //     ? const CircularProgressIndicator()
                    //     : 
                        Text(
                            '${AppLocale.of(context).getTranslated("order_now")}',
                          ),
                  ),
                ]),
          ),
        ),
        cartData.cartListItems.isEmpty
            ? const Expanded(child: Center(child: CircularProgressIndicator()))
            : const Padding(padding: EdgeInsets.all(9)),
        Expanded(
          child: ListViewCartBody(cartData: cartData),
        ),
      ],
    );
  }
}
