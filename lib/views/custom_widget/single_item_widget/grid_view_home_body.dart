import 'package:dump_app/models/cart_items.dart';
import 'package:dump_app/models/favorite_item.dart';
import 'package:dump_app/models/product_item.dart';
import 'package:dump_app/providers/favorite_provider.dart';
import 'package:dump_app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/cart_provider.dart';
import '../../../providers/products_provider.dart';
import '../../screens/details_screen.dart';

class GirdViewHomeBody extends StatelessWidget {
  const GirdViewHomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartData = Provider.of<Cart>(context);
    final productsPro = Provider.of<Products>(context);
    final product = productsPro.productsItems;
    final favoritePro = Provider.of<Favorites>(context);

    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.all(3.0),
        height: MediaQuery.of(context).size.height,
        color: Colors.amber[50],
        child: GridView.builder(
          itemCount: productsPro.productsItems.length,
          padding: const EdgeInsets.all(7.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (_, index) {
            return ChangeNotifierProvider.value(
              value: product[index],
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GridTile(
                  footer: GridTileBar(
                    backgroundColor: AppTheme.primColor,
                    title: Text(
                      '${product[index].price} \$',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: AppTheme.txtColor,
                        fontSize: 7,
                      ),
                    ),
                    // subtitle: Text(
                    //   product[index].title,
                    //   textAlign: TextAlign.center,
                    //   style: const TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 7,
                    //   ),
                    // ),
                    leading: Consumer<Product>(
                      builder: (_, singleProductPro, __) => IconButton(
                        icon: Icon(
                          singleProductPro.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: AppTheme.txtColor,
                          size: 13,
                        ),
                        onPressed: () {
                          singleProductPro.toggleIsFavoriteStatus();
                          if (singleProductPro.isFavorite) {
                            favoritePro.addToFavorite(
                              FavoriteItem(
                                img: product[index].img,
                                price: product[index].price,
                                title: product[index].title,
                              ),
                            );
                          } else if (!singleProductPro.isFavorite) {
                            favoritePro.removeFromFavorite(
                              FavoriteItem(
                                img: product[index].img,
                                price: product[index].price,
                                title: product[index].title,
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: AppTheme.txtColor,
                        size: 13,
                      ),
                      onPressed: () {
                        cartData.addtoCart(
                          CartItem(
                              img: product[index].img,
                              price: product[index].price,
                              title: product[index].title),
                        );
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.black54,
                            duration: const Duration(seconds: 2),
                            content: Text(
                              'Add ${product[index].title} to Cart',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  child: InkWell(
                    hoverColor: Colors.amber[70],
                    splashColor: Colors.black12,
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      product[index].img,
                      fit: BoxFit.cover,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailsScreen(
                            image: product[index].img,
                            price: product[index].price,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
