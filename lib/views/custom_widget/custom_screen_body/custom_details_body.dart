import 'package:dump_app/themes/themes.dart';
import 'package:dump_app/views/custom_widget/common_widget/custom_user_info.dart';
import 'package:flutter/material.dart';

import '../../../localization/applocal.dart';
import '../../screens/check_ou_screen.dart';

class CustomDetailsBody extends StatelessWidget {
  const CustomDetailsBody({
    Key? key,
    required this.image,
    required this.price,
  }) : super(key: key);

  final String image;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const CustomUserInfo(),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: AppTheme.txtColor,
            child: Image.asset(image),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            height: 70,
            padding: const EdgeInsets.all(5.0),
            color: Colors.amber[50],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${AppLocale.of(context).getTranslated("services_name")}',
                  style: const TextStyle(color: AppTheme.primTextColor),
                ),
                Text(
                  'Price: $price \$',
                  style: const TextStyle(color: AppTheme.primTextColor),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.amber[50],
              child: Text(
                '${AppLocale.of(context).getTranslated("services_details")}',
                style: const TextStyle(color: AppTheme.primTextColor),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 45,
            width: 250,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19.0),
                    side: const BorderSide(color: AppTheme.primColor),
                  ),
                ),
              ),
              child: Text(
                '${AppLocale.of(context).getTranslated("check_out")}',
                style: const TextStyle(color: AppTheme.txtColor),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CheckOutScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
