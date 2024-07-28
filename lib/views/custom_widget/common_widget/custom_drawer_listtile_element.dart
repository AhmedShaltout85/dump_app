import 'package:dump_app/themes/themes.dart';
import 'package:flutter/material.dart';

class CustomDrawerListTileElement extends StatelessWidget {
  final String title;
  final IconData iconLeading;
  final IconData iconTrailing;
  final VoidCallback onTap;
  const CustomDrawerListTileElement({
    Key? key,
    required this.title,
    required this.iconLeading,
    required this.iconTrailing,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        // Icons.logout,
        iconLeading,
        color: AppTheme.primColor,
      ),
      trailing: Icon(
        // Icons.arrow_forward_ios,
        iconTrailing,
        color: AppTheme.primColor,
      ),
      title: Text(
        // "${AppLocale.of(context).getTranslated("log_out")}",
        title,
        style: const TextStyle(color: AppTheme.primTextColor),
      ),
      onTap: onTap,
      // () {
      //   Navigator.of(context).pop();
      // },
    );
  }
}
