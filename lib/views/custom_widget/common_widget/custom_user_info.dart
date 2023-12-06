import 'package:dump_app/themes/themes.dart';
import 'package:flutter/material.dart';

import '../../../localization/applocal.dart';
import 'custom_circle_avatar.dart';

class CustomUserInfo extends StatelessWidget {
  const CustomUserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      color: Colors.amber[50],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomCircleAvatar(
            imgString: 'assets/logo/18.png',
            width: 25,
            height: 25,
            radius: 23,
          ),
          Text(
            '${AppLocale.of(context).getTranslated("user_name")}',
            style: const TextStyle(color: Colors.brown),
          ),
          const Text(
            '555.00\$',
            style: TextStyle(color: AppTheme.primTextColor),
          ),
        ],
      ),
    );
  }
}
