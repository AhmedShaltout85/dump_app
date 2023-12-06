import 'package:dump_app/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../screens/details_screen.dart';

class ListViewHomeBody extends StatelessWidget {
  const ListViewHomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsPro = Provider.of<Products>(context);
    final product = productsPro.productsItems;

    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.amber[50],
        // height: 80,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          padding: const EdgeInsets.all(15.0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ChangeNotifierProvider.value(
              value: product[index],
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Card(
                  elevation: 15,
                  child: InkWell(
                    hoverColor: Colors.amber[70],
                    splashColor: Colors.black12,
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(product[index].img, fit: BoxFit.cover),
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
          itemCount: productsPro.productsItems.length,
        ),
      ),
    );
  }
}
