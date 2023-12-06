import 'package:dump_app/themes/themes.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  // const CustomElevatedButton({Key? key}) : super(key: key);
  final String textString;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    Key? key,
    required this.textString,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AppTheme.primColor,
          ),
          onPressed: onPressed,
          child: Text(
            textString,
            style: const TextStyle(color: AppTheme.txtColor, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
