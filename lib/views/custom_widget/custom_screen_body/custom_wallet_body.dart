import 'package:dump_app/views/custom_widget/common_widget/custom_user_info.dart';
import 'package:flutter/material.dart';

import '../../../localization/applocal.dart';

class CustomWalletBody extends StatelessWidget {
  const CustomWalletBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 43.0, horizontal: 25.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 67.0),
            child: Chip(
              elevation: 7.0,
              padding: const EdgeInsets.all(7.0),
              backgroundColor: Colors.amber[50],
              label: Text(
                '\$ 456.78',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ),
          const CustomUserInfo(),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(27.0),
            child: SizedBox(
              height: 47,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  '${AppLocale.of(context).getTranslated("pay_secure")}',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
