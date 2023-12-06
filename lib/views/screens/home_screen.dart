import 'package:dump_app/localization/applocal.dart';
import 'package:dump_app/models/filter_favorites.dart';
import 'package:dump_app/providers/products_provider.dart';
import 'package:dump_app/views/screens/favorite_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../custom_widget/custom_navs/customiz_bottom_nav_bar.dart';
import '../custom_widget/custom_navs/customiz_drawer.dart';
import '../custom_widget/custom_screen_body/custom_home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context);
    // final product = Provider.of<Product>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${AppLocale.of(context).getTranslated("menu")}',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          PopupMenuButton(
            tooltip: "${AppLocale.of(context).getTranslated("show_products")}",
            onSelected: (FilterFavOptions selectedItem) {
              if (selectedItem == FilterFavOptions.showFav) {
                //....
                // product.isFavorite = true;
                products.showOnlyFavorites();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FavoriteScreen(),
                  ),
                );
              } else {
                //....
                // product.isFavorite = false;
                products.showAll();
              }
            },
            icon: const Icon(
              Icons.more_vert,
            ),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text(
                    "${AppLocale.of(context).getTranslated("show_all")}",
                    style: const TextStyle(color: Colors.brown),
                  ),
                  value: FilterFavOptions.showAll,
                ),
                PopupMenuItem(
                  child: Text(
                    "${AppLocale.of(context).getTranslated("only_favorites")}",
                    style: const TextStyle(color: Colors.brown),
                  ),
                  value: FilterFavOptions.showFav,
                ),
              ];
            },
          )
        ],
      ),
      bottomNavigationBar: const CustomizBottomNavBar(),
      drawer: const CustomizDrawer(),
      body: const CustomHomeBody(),
    );
  }
}
