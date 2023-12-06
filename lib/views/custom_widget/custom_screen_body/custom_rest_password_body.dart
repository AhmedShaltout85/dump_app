import 'package:dump_app/themes/themes.dart';
import 'package:dump_app/views/custom_widget/common_widget/custom_circle_avatar.dart';
import 'package:dump_app/views/custom_widget/common_widget/custom_elevated_button.dart';
import 'package:dump_app/views/custom_widget/common_widget/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../localization/applocal.dart';
import '../../screens/login_screen.dart';

class CustomRestPasswordBody extends StatelessWidget {
  const CustomRestPasswordBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 25.0,
          ),
          const CustomCircleAvatar(
            imgString: 'assets/logo/18.png',
            width: 75,
            height: 75,
            radius: 55,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 25),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                '${AppLocale.of(context).getTranslated("restting_user_password")}',
                style: const TextStyle(
                    color: AppTheme.txtColor,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 25),
            child: Align(
              child: Text(
                '${AppLocale.of(context).getTranslated("rest_forgetin_password")}',
                style: const TextStyle(
                  color: AppTheme.txtColor,
                ),
              ),
              alignment: Alignment.topLeft,
            ),
          ),
          const SizedBox(
            height: 27.0,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(23),
              topRight: Radius.circular(23),
            ),
            child: Container(
              color: AppTheme.txtColor,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 27.0,
                    ),
                    CustomTextField(
                      keyboardType: TextInputType.name,
                      lableText:
                          '${AppLocale.of(context).getTranslated("user_name")}',
                      hintText:
                          '${AppLocale.of(context).getTranslated("enter_user_name")}',
                      prefixIcon: const Icon(Icons.verified_user_outlined),
                      suffixIcon: const SizedBox(),
                      obscureText: false,
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    CustomTextField(
                      keyboardType: TextInputType.phone,
                      lableText:
                          '${AppLocale.of(context).getTranslated("phone_no")}',
                      hintText:
                          '${AppLocale.of(context).getTranslated("enter_phone_no")}',
                      prefixIcon: const Icon(Icons.phone),
                      suffixIcon: const SizedBox(),
                      obscureText: false,
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    CustomTextField(
                      lableText:
                          '${AppLocale.of(context).getTranslated("old_password")}',
                      hintText:
                          '${AppLocale.of(context).getTranslated("old_password")}',
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: const SizedBox(),
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    CustomTextField(
                      lableText:
                          '${AppLocale.of(context).getTranslated("new_password")}',
                      hintText:
                          '${AppLocale.of(context).getTranslated("new_password")}',
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: const SizedBox(),
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                    ),
                    const SizedBox(
                      height: 28.0,
                    ),
                    CustomElevatedButton(
                      textString:
                          "${AppLocale.of(context).getTranslated("rest_user_password")}",
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LoginScreen(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
