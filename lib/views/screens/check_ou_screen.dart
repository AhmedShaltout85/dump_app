
import 'package:flutter/material.dart';

import '../custom_widget/custom_navs/customiz_bottom_nav_bar.dart';
import '../custom_widget/custom_navs/customiz_drawer.dart';
import '../custom_widget/custom_screen_body/custom_checkout_body.dart';


class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomizBottomNavBar(),
      drawer: CustomizDrawer(),
      body: CustomCheckoutBody(),
    );
  }
}
