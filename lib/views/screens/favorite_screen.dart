import 'package:dump_app/providers/favorite_provider.dart';
import 'package:dump_app/views/custom_widget/custom_navs/customiz_bottom_nav_bar.dart';
import 'package:dump_app/views/custom_widget/custom_navs/customiz_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../localization/applocal.dart';
import '../../providers/cart_provider.dart';
import '../custom_widget/single_item_widget/grid_view_favorite_body.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoritePro = Provider.of<Favorites>(context);
    final cartData = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${AppLocale.of(context).getTranslated("favorites_title")}',
        ),
        centerTitle: true,
      ),
      drawer: const CustomizDrawer(),
      bottomNavigationBar: const CustomizBottomNavBar(),
      body: FavoriteScreenBody(favoritePro: favoritePro, cartData: cartData),
    );
  }
}
