import 'package:dump_app/themes/themes.dart';
import 'package:flutter/material.dart';

import '../../../localization/applocal.dart';
import '../common_widget/custom_user_info.dart';
import '../single_item_widget/grid_view_home_body.dart';
import '../single_item_widget/list_view_home_body.dart';

class CustomHomeBody extends StatelessWidget {
  const CustomHomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const CustomUserInfo(),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            height: 30,
            color: Colors.amber[50],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${AppLocale.of(context).getTranslated("most_sales")}',
                  style: const TextStyle(color: AppTheme.primTextColor),
                ),
                Text(
                  '+55 ${AppLocale.of(context).getTranslated("more")}',
                  style: const TextStyle(color: AppTheme.primTextColor),
                ),
              ],
            ),
          ),
          const ListViewHomeBody(),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            height: 30,
            color: Colors.amber[50],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${AppLocale.of(context).getTranslated("services")}',
                  style: const TextStyle(color: AppTheme.primTextColor),
                ),
                Text(
                  '+123 ${AppLocale.of(context).getTranslated("more")}',
                  style: const TextStyle(color: AppTheme.primTextColor),
                ),
              ],
            ),
          ),
          const GirdViewHomeBody(),
        ],
      ),
    );
  }
}
