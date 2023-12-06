import 'package:dump_app/views/custom_widget/custom_navs/customiz_bottom_nav_bar.dart';
import 'package:dump_app/views/custom_widget/custom_navs/customiz_drawer.dart';
import 'package:flutter/material.dart';

import '../../localization/applocal.dart';
import '../custom_widget/custom_screen_body/custom_order_body.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final orderProv = Provider.of<Orders>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${AppLocale.of(context).getTranslated("order_page_title")}',
        ),
        centerTitle: true,
      ),
      drawer: const CustomizDrawer(),
      bottomNavigationBar: const CustomizBottomNavBar(),
      body: const CustomOrderBody(),
    );
  }
}
