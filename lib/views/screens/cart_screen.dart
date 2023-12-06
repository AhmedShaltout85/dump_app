import 'package:badges/badges.dart';
import 'package:dump_app/localization/applocal.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/cart_provider.dart';
import '../custom_widget/custom_navs/customiz_bottom_nav_bar.dart';
import '../custom_widget/custom_navs/customiz_drawer.dart';
import '../custom_widget/custom_screen_body/custom_cart_body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartData = Provider.of<Cart>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${AppLocale.of(context).getTranslated("cart")}',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Badge(
              // padding: const EdgeInsets.all(7),
              child: const Icon(Icons.shopping_cart_checkout_rounded),
              badgeContent: Text(
                cartData.cartListItems.length.toString(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomizBottomNavBar(),
      drawer: const CustomizDrawer(),
      body: CustomCartBody(cartData: cartData),
    );
  }
}
