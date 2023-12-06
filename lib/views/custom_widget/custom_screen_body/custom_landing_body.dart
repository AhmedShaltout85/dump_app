import 'package:carousel_slider/carousel_slider.dart';
import 'package:dump_app/themes/themes.dart';
import 'package:flutter/material.dart';

import '../../../localization/applocal.dart';
import '../../../models/list_itmes.dart';
import '../../screens/login_screen.dart';
import '../../screens/register_screen.dart';

class CustomLandingBody extends StatelessWidget {
  const CustomLandingBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(38.0),
            child: Text(
              AppLocale.of(context).getTranslated("landing_page")!,
              style: const TextStyle(
                color: AppTheme.primTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: ListItems.carouselItemsList
                .map(
                  (item) => SizedBox(
                    child: Center(
                      child: Image.asset(
                        item.img,
                        fit: BoxFit.cover,
                        height: 1000,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()));
                },
                child: Text(
                  // 'Login Screen',
                  "${getLang(context, "login_page")}",

                  style: const TextStyle(color: AppTheme.txtColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const RegisterScreen(),
                    ),
                  );
                },
                child: Text(
                  // 'Register Screen',
                  "${getLang(context, "register_page")}",
                  style: const TextStyle(color: AppTheme.txtColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
