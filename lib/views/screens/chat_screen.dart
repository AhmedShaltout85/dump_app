import 'package:dump_app/localization/applocal.dart';
import 'package:dump_app/views/custom_widget/custom_navs/customiz_drawer.dart';
import 'package:dump_app/views/custom_widget/single_item_widget/list_view_item_owner_message.dart';
import 'package:flutter/material.dart';

import '../custom_widget/single_item_widget/list_view_item_user_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: Text(
          '${AppLocale.of(context).getTranslated("chat")}',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: const CustomizDrawer(),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                reverse: true,
                padding: const EdgeInsets.all(11.0),
                itemCount: 10,
                itemBuilder: (_, index) {
                  if (index % 2 == 0) {
                    return const ChatItemUserMessage();
                  } else {
                    return const ChatItemOwnerMessage();
                  }
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: const Icon(Icons.message),
                      hintText:
                          '${AppLocale.of(context).getTranslated("message_hint")}',
                      filled: true,
                      fillColor: Colors.grey[400],
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(11.0)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                FloatingActionButton(
                  tooltip:
                      '${AppLocale.of(context).getTranslated("send_message")}',
                  mini: true,
                  onPressed: () {},
                  backgroundColor: Colors.orange,
                  child: const Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 23.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
