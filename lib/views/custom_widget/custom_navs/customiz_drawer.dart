import 'package:flutter/material.dart';

import '../../../localization/applocal.dart';
import '../../../themes/themes.dart';
import '../../screens/about_us_screen.dart';
import '../../screens/cart_screen.dart';
import '../../screens/favorite_screen.dart';
import '../../screens/home_screen.dart';
import '../../screens/order_screen.dart';
import '../../screens/profile_screen.dart';
import '../../screens/settings_screen.dart';
import '../common_widget/custom_circle_avatar.dart';
import '../common_widget/custom_drawer_listtile_element.dart';

class CustomizDrawer extends StatelessWidget {
  const CustomizDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final localeChangeProv = Provider.of<LocaleListItems>(context);

    return Drawer(
      child: ListView(
        controller: ScrollController(),
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(97),
                bottomLeft: Radius.circular(97),
              ),
              color: AppTheme.primColor,
            ),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomCircleAvatar(
                    imgString: 'assets/logo/18.png',
                    height: 65,
                    width: 65,
                    radius: 57,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'userName@mail.com',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: AppTheme.txtColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const Divider(
          //   height: 1,
          //   thickness: 2,
          // ),
          const Padding(
            padding: EdgeInsets.only(top: 17.0),
          ),
          CustomDrawerListTileElement(
            title: "${AppLocale.of(context).getTranslated("home_page")}",
            iconLeading: Icons.home,
            iconTrailing: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()));
            },
          ),
          
          const Divider(
            height: 1,
            thickness: 0.5,
          ),
          CustomDrawerListTileElement(
            title:
                "${AppLocale.of(context).getTranslated("user_profile_page")}",
            iconLeading: Icons.person,
            iconTrailing: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const UserProfile()));
            },
          ),
          
          const Divider(
            height: 1,
            thickness: 0.5,
          ),
          CustomDrawerListTileElement(
            title: "${AppLocale.of(context).getTranslated("favorite_page")}",
            iconLeading: Icons.favorite_outlined,
            iconTrailing: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const FavoriteScreen()));
            },
          ),
          
          const Divider(
            height: 1,
            thickness: 0.5,
          ),
          CustomDrawerListTileElement(
            title: "${AppLocale.of(context).getTranslated("cart_page")}",
            iconLeading: Icons.shopping_cart,
            iconTrailing: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const CartScreen()));
            },
          ),
          const Divider(
            height: 1,
            thickness: 0.5,
          ),
          CustomDrawerListTileElement(
            title: "${AppLocale.of(context).getTranslated("order_page_title")}",
            iconLeading: Icons.card_travel,
            iconTrailing: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const OrderScreen()));
            },
          ),
          
          const Divider(
            height: 1,
            thickness: 0.5,
          ),
          CustomDrawerListTileElement(
              title: "${AppLocale.of(context).getTranslated("setting")}",
              iconLeading: Icons.settings,
              iconTrailing: Icons.arrow_forward_ios,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SettingsScreen()));
              }),
          
          const Divider(
            height: 1,
            thickness: 0.5,
          ),
          CustomDrawerListTileElement(
              title: "${AppLocale.of(context).getTranslated("language")}",
              iconLeading: Icons.language_outlined,
              iconTrailing: Icons.arrow_forward_ios,
              onTap: () {}),
         
          const Divider(
            height: 1,
            thickness: 0.5,
          ),
          CustomDrawerListTileElement(
            title: "${AppLocale.of(context).getTranslated("about_us")}",
            iconLeading: Icons.account_box_outlined,
            iconTrailing: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AboutUsScreen()));
            },
          ),
          
          const Divider(
            height: 1,
            thickness: 0.5,
          ),
          CustomDrawerListTileElement(
            title: "${AppLocale.of(context).getTranslated("log_out")}",
            iconLeading: Icons.logout,
            iconTrailing: Icons.arrow_forward_ios,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      // ),
    );
  }
}
