import 'package:flutter/material.dart';

import '../custom_widget/custom_screen_body/custom_rest_password_body.dart';



class RestPassword extends StatelessWidget {
  const RestPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: CustomRestPasswordBody(),
    );
  }
}
