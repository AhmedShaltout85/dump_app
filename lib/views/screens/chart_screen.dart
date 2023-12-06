import 'package:dump_app/localization/applocal.dart';
import 'package:flutter/material.dart';

import '../custom_widget/custom_screen_body/custom_chart_body.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SalesData> data = [
      SalesData('Jan', 35),
      SalesData('Feb', 28),
      SalesData('Mar', 34),
      SalesData('Apr', 32),
      SalesData('May', 40)
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:  Text('${AppLocale.of(context).getTranslated("chart")}',),
        ),
        body: CustomChartBody(data: data),
      ),
    );
  }
}

