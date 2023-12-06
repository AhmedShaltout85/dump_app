import 'package:flutter/material.dart';

import '../custom_widget/custom_screen_body/custom_landing_body.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomLandingBody(),
    );
  }
}
