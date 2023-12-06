import 'package:flutter/material.dart';

import '../custom_widget/custom_navs/customiz_drawer.dart';
import '../custom_widget/custom_screen_body/custom_settings_body.dart';



class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomizDrawer(),
      body: CustomSettingsBody(),
    );
  }
}
