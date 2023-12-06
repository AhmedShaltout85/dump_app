import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../localization/applocal.dart';

class CustomChartBody extends StatelessWidget {
  const CustomChartBody({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<SalesData> data;

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      // Chart title
      title: ChartTitle(
          text: '${AppLocale.of(context).getTranslated("user_balance")}'),
      // Enable legend
      legend: Legend(isVisible: true),
      // Enable tooltip
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <CircularSeries<SalesData, String>>[
        DoughnutSeries<SalesData, String>(
          dataSource: data,
          xValueMapper: (SalesData sales, _) => sales.year,
          yValueMapper: (SalesData sales, _) => sales.sales,
          name: 'Sales',
          // Enable data label
          dataLabelSettings: const DataLabelSettings(isVisible: true),
        ),
      ],
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
