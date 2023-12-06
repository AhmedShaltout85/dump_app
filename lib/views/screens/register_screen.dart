import 'package:flutter/material.dart';

import '../custom_widget/custom_screen_body/custom_register_body.dart';



class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: CustomRegisterScreenBody(),
    );
  }
}
