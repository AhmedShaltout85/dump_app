// import 'package:dump_app/localization/applocal.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// const String LAGUAGE_CODE = 'languageCode';

// //languages code
// const String ENGLISH = 'en';

// const String ARABIC = 'ar';

// Future<Locale> setLocale(String languageCode) async {
//   SharedPreferences _prefs = await SharedPreferences.getInstance();
//   await _prefs.setString(LAGUAGE_CODE, languageCode);
//   return _locale(languageCode);
// }

// Future<Locale> getLocale() async {
//   SharedPreferences _prefs = await SharedPreferences.getInstance();
//   String languageCode = _prefs.getString(LAGUAGE_CODE) ?? "en";
//   return _locale(languageCode);
// }

// Locale _locale(String languageCode) {
//   switch (languageCode) {
//     case ENGLISH:
//       return const Locale(ENGLISH, 'US');

//     case ARABIC:
//       return const Locale(ARABIC, "SA");

//     default:
//       return const Locale(ENGLISH, 'US');
//   }
// }

// getLang(BuildContext context, String key) {
//   return AppLocale.of(context).getTranslated(key);
// }
