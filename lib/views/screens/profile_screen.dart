
import 'package:dump_app/views/screens/chart_screen.dart';
import 'package:dump_app/views/screens/chat_screen.dart';
import 'package:flutter/material.dart';

import '../../localization/applocal.dart';
import '../custom_widget/custom_navs/customiz_bottom_nav_bar.dart';
import '../custom_widget/custom_navs/customiz_drawer.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomizDrawer(),
      bottomNavigationBar: const CustomizBottomNavBar(),
      body: ListView(
        children: [
          Container(
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 18.0),
              child: Column(
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      'assets/logo/18.png',
                      width: 55,
                      height: 55,
                      fit: BoxFit.cover,
                    ),
                    radius: 47.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Center(
                      child: Text(
                        // 'User Name',
                        "${AppLocale.of(context).getTranslated("user_name")}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 17.0),
                    child: Center(
                        child: Text(
                      'username@mail.com',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              '${AppLocale.of(context).getTranslated("balancing")}: 44.0 \$',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '${AppLocale.of(context).getTranslated("process")}: 13',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "${AppLocale.of(context).getTranslated("total_purchase")}: 123.23 \$",
                              // '${AppLocale.of(context).getTranslated("total_purchase")}',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0, right: 8.0, bottom: 8.0),
            child: ListTile(
              title: Text(
                "${AppLocale.of(context).getTranslated("offers")},  +15",
                style: const TextStyle(
                  color: Color.fromARGB(255, 170, 61, 22),
                ),
              ),
              leading: const Icon(
                Icons.menu_open_rounded,
                color: Colors.orange,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ChatScreen(),
                  ),
                );
              },
              title: Text(
                // "Chat or Send message",
                '${AppLocale.of(context).getTranslated("chat_or_send_message")}',
                style: const TextStyle(
                  color: Color.fromARGB(255, 170, 61, 22),
                ),
              ),
              leading: const Icon(
                Icons.message,
                color: Colors.orange,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ChartScreen(),
                  ),
                );
              },
              title: Text(
                // "Chart",
                '${AppLocale.of(context).getTranslated("chart")}',
                style: const TextStyle(
                  color: Color.fromARGB(255, 170, 61, 22),
                ),
              ),
              leading: const Icon(
                Icons.history,
                color: Colors.orange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
