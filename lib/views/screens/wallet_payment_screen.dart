import 'package:flutter/material.dart';

import '../../localization/applocal.dart';

import '../custom_widget/custom_navs/customiz_bottom_nav_bar.dart';
import '../custom_widget/custom_navs/customiz_drawer.dart';
import '../custom_widget/custom_screen_body/custom_wallet_body.dart';

class WalletPaymentScreen extends StatelessWidget {
  const WalletPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // 'Wallet Payment',
          '${AppLocale.of(context).getTranslated("wallet_payment")}',
        ),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios_rounded),
          onTap: () => Navigator.pop(context),
        ),
      ),
      bottomNavigationBar: const CustomizBottomNavBar(),
      drawer: const CustomizDrawer(),
      body: const CustomWalletBody(),
    );
  }
}
