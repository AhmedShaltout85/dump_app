import 'package:flutter/material.dart';

import '../../localization/applocal.dart';
import '../custom_widget/custom_navs/customiz_bottom_nav_bar.dart';
import '../custom_widget/custom_navs/customiz_drawer.dart';

class OnlinePaymentScreen extends StatelessWidget {
  const OnlinePaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // 'Online Payment',
          '${AppLocale.of(context).getTranslated("online_payment")}',
        ),
        leading: GestureDetector(
            child: const Icon(Icons.arrow_back_ios_new_rounded),
            onTap: () {
              Navigator.of(context).pop();
            }),
      ),
      drawer: const CustomizDrawer(),
      bottomNavigationBar: const CustomizBottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Chip(
                padding: const EdgeInsets.all(5.0),
                backgroundColor: Colors.amber[50],
                elevation: 7.0,
                label: Text(
                  '\$ 456.78',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 27),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 47,
                      width: 200,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          label: Text(
                            // 'Card Number',"card_number"
                            '${AppLocale.of(context).getTranslated("card_number")}',
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                      height: 47,
                      child: Card(
                        elevation: 7,
                        child: Image.asset(
                          'assets/visa/visa.png',
                          fit: BoxFit.cover,
                          height: 47,
                          width: 90,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 27),
              child: SizedBox(
                height: 47,
                width: double.infinity,
                child: TextField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    label: Text(
                      // 'CardHolder Name',
                      '${AppLocale.of(context).getTranslated("card_holder_name")}',
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 27),
              child: Row(
                children: [
                  SizedBox(
                    height: 47,
                    width: 150,
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        label: Text(
                          // 'Expire Date',
                          '${AppLocale.of(context).getTranslated("expire_date")}',
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SizedBox(
                    height: 47,
                    width: 70,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        label: Text(
                          // 'CVV',
                          '${AppLocale.of(context).getTranslated("cvv")}',
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 27),
              child: Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (val) {},
                  ),
                  Text(
                    // 'Save Card',
                    '${AppLocale.of(context).getTranslated("save_card")}',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(27.0),
              child: SizedBox(
                height: 47,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    // 'Pay Secure',
                    '${AppLocale.of(context).getTranslated("pay_secure")}',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
