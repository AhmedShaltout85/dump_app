import 'package:dump_app/localization/applocal.dart';
import 'package:dump_app/localization/locale_list.dart';
import 'package:dump_app/providers/favorite_provider.dart';
import 'package:dump_app/providers/order_provider.dart';
import 'package:dump_app/providers/products_provider.dart';
import 'package:dump_app/views/screens/landing_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:dump_app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'models/login_user.dart';
import 'providers/cart_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: LoginUser(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Favorites(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.orange,
        statusBarBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      //define the default language
      locale: LocaleListItems.localItems.first,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.setTheme(),
      title: "Mobile Store",
      home: const SafeArea(
        child: LandingScreen(),
      ),
      supportedLocales: LocaleListItems.localItems,
      localizationsDelegates: const [
        AppLocale.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      localeResolutionCallback: (currentLang, supportLang) {
        if (currentLang != null) {
          for (Locale locale in supportLang) {
            if (locale.languageCode == currentLang.languageCode) {
              return currentLang;
            }
          }
        }
        return supportLang.first;
      },
    );
  }
}
