import 'package:flutter/material.dart';

import '../custom_widget/custom_screen_body/custom_login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: CustomizLoginScreenBody(),
    );
  }
}
