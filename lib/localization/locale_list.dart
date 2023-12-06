import 'package:flutter/material.dart';

class LocaleListItems {
  static List<Locale> localItems = const [
    Locale("en", ""),
    Locale("ar", ""),
  ];
}

// class Language {
//   final int id;
//   final String name;
//   final String languageCode;

//   Language(this.id, this.name, this.languageCode);

//   static List<Language> languageList() {
//     return <Language>[
//       Language(1, "English", "en"),
//       Language(2, "اَلْعَرَبِيَّةُ", "ar"),
//     ];
//   }
// }
   // Language.languageList()
                                //     .map<DropdownMenuItem<Language>>(
                                //       (e) => DropdownMenuItem<Language>(
                                //         value: e,
                                //         child: Text(
                                //           e.name,
                                //           style:
                                //               const TextStyle(color: Colors.brown),
                                //         ),
                                //       ),
                                //     )
                                //     .toList(),