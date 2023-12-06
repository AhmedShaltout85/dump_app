import 'package:flutter/material.dart';

import '../custom_widget/custom_navs/customiz_bottom_nav_bar.dart';
import '../custom_widget/custom_navs/customiz_drawer.dart';
import '../custom_widget/custom_screen_body/custom_about_us_body.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomizDrawer(),
      bottomNavigationBar: CustomizBottomNavBar(),
      body: CustomAboutUsBody(),
    );
  }
}
