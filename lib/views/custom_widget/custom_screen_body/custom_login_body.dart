import 'package:dump_app/themes/themes.dart';
import 'package:dump_app/views/custom_widget/common_widget/custom_circle_avatar.dart';
import 'package:dump_app/views/custom_widget/common_widget/custom_elevated_button.dart';
import 'package:dump_app/views/custom_widget/common_widget/custom_text_button.dart';
import 'package:dump_app/views/custom_widget/common_widget/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../localization/applocal.dart';
import '../../screens/home_screen.dart';
import '../../screens/register_screen.dart';
import '../../screens/rest_password_screen.dart';

class CustomizLoginScreenBody extends StatelessWidget {
  const CustomizLoginScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 30.0,
          ),
          const CustomCircleAvatar(
            imgString: 'assets/logo/18.png',
            width: 65,
            height: 65,
            radius: 50,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 25),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                '${AppLocale.of(context).getTranslated("login_user")}',
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
                '${AppLocale.of(context).getTranslated("login_register_users")}',
                style: const TextStyle(
                  color: AppTheme.txtColor,
                ),
              ),
              alignment: Alignment.topLeft,
            ),
          ),
          const SizedBox(
            height: 17.0,
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
                        textInputAction: TextInputAction.next),
                    const SizedBox(
                      height: 8.0,
                    ),
                    CustomTextField(
                      lableText:
                          '${AppLocale.of(context).getTranslated("password")}',
                      hintText:
                          '${AppLocale.of(context).getTranslated("enter_password")}',
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: const Icon(Icons.visibility),
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                    ),
                    const SizedBox(
                      height: 17.0,
                    ),
                    CustomElevatedButton(
                      textString:
                          '${AppLocale.of(context).getTranslated("login_user")}',
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const HomeScreen()),
                      ),
                    ),
                    CustomTextButton(
                      textString:
                          '${AppLocale.of(context).getTranslated("sign_up_for_dump_app")}',
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const RegisterScreen(),
                        ),
                      ),
                    ),
                    CustomTextButton(
                      textString:
                          '${AppLocale.of(context).getTranslated("forgot_password")}',
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const RestPassword(),
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
