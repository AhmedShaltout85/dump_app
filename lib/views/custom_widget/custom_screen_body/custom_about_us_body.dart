import 'package:dump_app/themes/themes.dart';
import 'package:dump_app/views/custom_widget/common_widget/custom_circle_avatar.dart';
import 'package:flutter/material.dart';

import '../../../localization/applocal.dart';

class CustomAboutUsBody extends StatelessWidget {
  const CustomAboutUsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 200,
              color: AppTheme.primColor,
            ),
            Container(
              color: AppTheme.txtColor,
              height: 50.0,
            ),
            const Positioned(
              child: CustomCircleAvatar(
                imgString: 'assets/logo/17.png',
                width: 80,
                height: 80,
                radius: 50,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 28.0, left: 8, bottom: 8),
          child: Row(
            children: [
              const Expanded(
                flex: 1,
                child: Icon(
                  Icons.location_city,
                ),
              ),
              const SizedBox(
                width: 23.0,
              ),
              Expanded(
                flex: 21,
                child: Text(
                  "${AppLocale.of(context).getTranslated("address")}",
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              const Icon(
                Icons.email,
              ),
              const SizedBox(
                width: 23.0,
              ),
              Text(
                "${AppLocale.of(context).getTranslated("our_email")}",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              const Icon(
                Icons.mobile_friendly,
              ),
              const SizedBox(
                width: 23.0,
              ),
              Text(
                "${AppLocale.of(context).getTranslated("our_mobile")}",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              const Icon(
                Icons.facebook,
              ),
              const SizedBox(
                width: 23.0,
              ),
              Text(
                "${AppLocale.of(context).getTranslated("our_facebook")}",
              )
            ],
          ),
        ),
      ],
    );
  }
}
