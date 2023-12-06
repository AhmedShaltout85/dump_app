import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final Icon icon;
  final VoidCallback onTap;
  const CustomListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
      leading: icon,
    );
  }
}
