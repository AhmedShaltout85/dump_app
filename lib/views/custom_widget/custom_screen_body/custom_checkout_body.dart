import 'package:dump_app/themes/themes.dart';
import 'package:dump_app/views/custom_widget/common_widget/custom_circle_avatar.dart';
import 'package:flutter/material.dart';

import '../../../localization/applocal.dart';
import '../../screens/online_payment_screen.dart';
import '../../screens/wallet_payment_screen.dart';

class CustomCheckoutBody extends StatelessWidget {
  const CustomCheckoutBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 37),
            child: CustomCircleAvatar(
              imgString: 'assets/logo/20.png',
              width: 100,
              height: 100,
              radius: 70,
            ),
           
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(23),
              topRight: Radius.circular(23),
            ),
            child: Container(
              color: Colors.amber[200],
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 27),
                      child: Text(
                        '${AppLocale.of(context).getTranslated("check_out")}',
                        style:
                            const TextStyle(fontSize: 27, color: AppTheme.primTextColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 37, horizontal: 57),
                      child: SizedBox(
                        height: 47,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const WalletPaymentScreen(),
                              ),
                            );
                          },
                          child: Text(
                            '${AppLocale.of(context).getTranslated("wallet_payment")}',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 57),
                      child: SizedBox(
                        height: 47,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const OnlinePaymentScreen(),
                              ),
                            );
                          },
                          child: Text(
                            '${AppLocale.of(context).getTranslated("online_payment")}',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
