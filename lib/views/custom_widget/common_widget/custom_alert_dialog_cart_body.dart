import 'package:flutter/material.dart';

import '../../../localization/applocal.dart';
import '../../../providers/cart_provider.dart';

class CustomAlertDailog extends StatelessWidget {
  const CustomAlertDailog({
    Key? key,
    required this.cartData,
    required this.onPressed,
  }) : super(key: key);

  final Cart cartData;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        // 'Confirm Checkout',
        '${AppLocale.of(context).getTranslated("confirm_checkout")}',
        style: const TextStyle(color: Colors.red),
      ),
      alignment: Alignment.center,
      content: Text(
        // 'do you confirm checkout?,\n \n if yes, Your cart element or elements will be cleared.!'),
        '${AppLocale.of(context).getTranslated("alter_dailog_content")}',
      ),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11),
      ),
      actions: [
        TextButton(
            child: Text(
              '${AppLocale.of(context).getTranslated("yes")}',
              style: const TextStyle(
                color: Colors.green,
              ),
            ),
            onPressed: onPressed),
        TextButton(
          child: Text(
            '${AppLocale.of(context).getTranslated("no")}',
            style: const TextStyle(
              color: Colors.red,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
      ],
    );
  }
}
