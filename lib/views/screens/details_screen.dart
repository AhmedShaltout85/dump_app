import 'package:dump_app/localization/applocal.dart';
import 'package:flutter/material.dart';

import '../custom_widget/custom_navs/customiz_bottom_nav_bar.dart';
import '../custom_widget/custom_navs/customiz_drawer.dart';
import '../custom_widget/custom_screen_body/custom_details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.image,
    required this.price,
  }) : super(key: key);
  final String image;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${AppLocale.of(context).getTranslated("details_page")}',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios_rounded),
          onTap: () => Navigator.pop(context),
        ),
      ),
      bottomNavigationBar: const CustomizBottomNavBar(),
      drawer: const CustomizDrawer(),
      body: CustomDetailsBody(
        image: image,
        price: price,
      ),
    );
  }
}
