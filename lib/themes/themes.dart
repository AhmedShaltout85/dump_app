import 'package:flutter/material.dart';

class AppTheme {
  static const primColor = Colors.orange;
  static const txtColor = Colors.white;
  static const primTextColor = Colors.brown;
  static const bgColor = Colors.amber;
  static ThemeData setTheme() {
    return ThemeData(
      scaffoldBackgroundColor: txtColor,
      primarySwatch: primColor,
      primaryColor: primColor,
      appBarTheme: const AppBarTheme(
        // systemOverlayStyle: SystemUiOverlayStyle(
        //   statusBarBrightness: Brightness.light,
        // ),
        centerTitle: true,
        elevation: 3.0,
        color: primColor,
        iconTheme: IconThemeData(
          color: txtColor,
        ),
        actionsIconTheme: IconThemeData(
          color: txtColor,
        ),
        titleTextStyle: TextStyle(
          color: txtColor,
        ),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: primColor,
        elevation: 4.0,
      ),
      buttonTheme: const ButtonThemeData(
          buttonColor: primColor,
          height: 43,
          textTheme: ButtonTextTheme.normal,
          splashColor: bgColor),
      drawerTheme: DrawerThemeData(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(13),
            bottomRight: Radius.circular(13),
          ),
        ),
        backgroundColor: txtColor,
        elevation: 7.0,
        scrimColor: Colors.black12.withOpacity(0.7),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19.0),
              side: const BorderSide(color: primColor),
            ),
          ),
        ),
      ),
      iconTheme: const IconThemeData(
        color: primTextColor,
        size: 27.0,
      ),
      textTheme: const TextTheme(
        headline6: TextStyle(
          fontSize: 17,
          color: txtColor,
        ),
        headline4: TextStyle(
          fontSize: 23,
          color: primTextColor,
        ),
      ),
      primaryTextTheme: const TextTheme(),
      outlinedButtonTheme: const OutlinedButtonThemeData(
        style: ButtonStyle(),
      ),
    );
  }
}


// class AppTheme {
//   AppTheme._();

//   static final Color _iconColor = Colors.blueAccent.shade200;
//   static const Color _lightPrimaryColor = Color(0xFF546E7A);
//   static const Color _lightPrimaryVariantColor = Color(0xFF546E7A);
//   static const Color _lightSecondaryColor = Colors.green;
//   static const Color _lightOnPrimaryColor = Colors.black;

//   static const Color _darkPrimaryColor = Colors.white24;
//   static const Color _darkPrimaryVariantColor = Colors.black;
//   static const Color _darkSecondaryColor = Colors.white;
//   static const Color _darkOnPrimaryColor = Colors.white;

//   static final ThemeData lightTheme = ThemeData(
//       appBarTheme: const AppBarTheme(
//         titleTextStyle: TextStyle(
//             color: _darkSecondaryColor,
//             fontFamily: "Roboto",
//             fontWeight: FontWeight.bold,
//             fontSize: 26),
//         color: _lightPrimaryVariantColor,
//         iconTheme: IconThemeData(color: _lightOnPrimaryColor),
//       ),
//       colorScheme: const ColorScheme.light(
//         primary: _lightPrimaryColor,
//         secondary: _lightSecondaryColor,
//         onPrimary: _lightOnPrimaryColor,
//       ),
//       iconTheme: IconThemeData(
//         color: _iconColor,
//       ),
//       textTheme: _lightTextTheme,
//       dividerTheme: const DividerThemeData(color: Colors.black12));

//   static final ThemeData darkTheme = ThemeData(
//       scaffoldBackgroundColor: _darkPrimaryVariantColor,
//       appBarTheme: const AppBarTheme(
//         color: _darkPrimaryVariantColor,
//         iconTheme: IconThemeData(color: _darkOnPrimaryColor),
//       ),
//       colorScheme: const ColorScheme.dark(
//         primary: _darkPrimaryColor,
//         secondary: _darkSecondaryColor,
//         onPrimary: _darkOnPrimaryColor,
//         background: Colors.white12,
//       ),
//       iconTheme: IconThemeData(
//         color: _iconColor,
//       ),
//       textTheme: _darkTextTheme,
//       dividerTheme: const DividerThemeData(color: Colors.black));

//   static const TextTheme _lightTextTheme = TextTheme(
//     headline1: _lightScreenHeading1TextStyle,
//   );

//   static final TextTheme _darkTextTheme = TextTheme(
//     headline1: _darkScreenHeading1TextStyle,
//   );

//   static const TextStyle _lightScreenHeading1TextStyle = TextStyle(
//       fontSize: 26.0,
//       fontWeight: FontWeight.bold,
//       color: _lightOnPrimaryColor,
//       fontFamily: "Roboto");

//   static final TextStyle _darkScreenHeading1TextStyle =
//       _lightScreenHeading1TextStyle.copyWith(color: _darkOnPrimaryColor);
// }
