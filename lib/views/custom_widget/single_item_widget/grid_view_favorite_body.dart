import 'package:dump_app/themes/themes.dart';
import 'package:flutter/material.dart';

import '../../../models/cart_items.dart';
import '../../../providers/cart_provider.dart';
import '../../../providers/favorite_provider.dart';
import '../../screens/details_screen.dart';

class FavoriteScreenBody extends StatelessWidget {
  const FavoriteScreenBody({
    Key? key,
    required this.favoritePro,
    required this.cartData,
  }) : super(key: key);

  final Favorites favoritePro;
  final Cart cartData;

  @override
  Widget build(BuildContext context) {
    return favoritePro.favList.isEmpty
        ? const Center(child: CircularProgressIndicator())
        : GridView.builder(
            padding: const EdgeInsets.all(27),
            itemCount: favoritePro.count,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemBuilder: (_, index) => ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GridTile(
                footer: GridTileBar(
                  backgroundColor: AppTheme.primColor,
                  title: Text(
                    favoritePro.favList[index].title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppTheme.txtColor,
                      fontSize: 7,
                    ),
                  ),
                  subtitle: Text('${favoritePro.favList[index].price} \$'),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: AppTheme.txtColor,
                      size: 13,
                    ),
                    onPressed: () {
                      cartData.addtoCart(
                        CartItem(
                            img: favoritePro.favList[index].img,
                            price: favoritePro.favList[index].price,
                            title: favoritePro.favList[index].title),
                      );
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.black54,
                          duration: const Duration(seconds: 2),
                          content: Text(
                            'Add ${favoritePro.favList[index].title} to Cart',
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
                    favoritePro.favList[index].img,
                    fit: BoxFit.fitHeight,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailsScreen(
                          image: favoritePro.favList[index].img,
                          price: favoritePro.favList[index].price,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
  }
}
