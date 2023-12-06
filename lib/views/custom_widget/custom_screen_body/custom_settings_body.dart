import 'package:dump_app/themes/themes.dart';
import 'package:dump_app/views/custom_widget/common_widget/custom_circle_avatar.dart';
import 'package:dump_app/views/custom_widget/common_widget/custom_list_tile.dart';
import 'package:flutter/material.dart';

import '../../../localization/applocal.dart';

import '../../screens/cart_screen.dart';
import '../../screens/home_screen.dart';
import '../../screens/rest_password_screen.dart';

class CustomSettingsBody extends StatelessWidget {
  const CustomSettingsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: CustomCircleAvatar(
              imgString: 'assets/logo/12.jpg',
              width: MediaQuery.of(context).size.height * 0.3,
              height: double.infinity,
              radius: 23,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 17),
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            // color: Colors.orange,
            decoration: const BoxDecoration(
              color: AppTheme.primColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(17),
                topRight: Radius.circular(17),
              ),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 27,
                ),
                CustomListTile(
                  title: '${AppLocale.of(context).getTranslated("home_page")}',
                  icon: const Icon(Icons.home),
                  onTap: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const HomeScreen()),
                    );
                  }),
                ),
                CustomListTile(
                  title: '${AppLocale.of(context).getTranslated("cart_page")}',
                  icon: const Icon(Icons.shopping_cart),
                  onTap: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const CartScreen()),
                    );
                  }),
                ),
                CustomListTile(
                  title:
                      '${AppLocale.of(context).getTranslated("rest_password_page")}',
                  icon: const Icon(Icons.verified_user),
                  onTap: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const RestPassword()),
                    );
                  }),
                ),
                CustomListTile(
                  title: '${AppLocale.of(context).getTranslated("log_out")}',
                  icon: const Icon(Icons.logout),
                  onTap: (() {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
