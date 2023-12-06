import 'package:dump_app/themes/themes.dart';
import 'package:flutter/material.dart';

class ChatItemOwnerMessage extends StatelessWidget {
  const ChatItemOwnerMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: const Text(
              'all user message type here',
              style: TextStyle(
                color: AppTheme.primTextColor,
              ),
            ),
            decoration: const BoxDecoration(
              color: AppTheme.txtColor,
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(6.0),
                bottomStart: Radius.circular(6.0),
                topStart: Radius.circular(6.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
