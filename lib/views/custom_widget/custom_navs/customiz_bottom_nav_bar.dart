import 'package:dump_app/themes/themes.dart';
import 'package:dump_app/views/screens/cart_screen.dart';
import 'package:dump_app/views/screens/home_screen.dart';
import 'package:dump_app/views/screens/profile_screen.dart';
import 'package:dump_app/views/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class CustomizBottomNavBar extends StatelessWidget {
  const CustomizBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()));
            },
            icon: const Icon(
              Icons.home,
              color: AppTheme.txtColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SettingsScreen()));
            },
            icon: const Icon(
              Icons.settings,
              color: AppTheme.txtColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const CartScreen()));
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: AppTheme.txtColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const UserProfile()));
            },
            icon: const Icon(
              Icons.person_sharp,
              color: AppTheme.txtColor,
            ),
          ),
        ],
      ),
    );
  }
}
