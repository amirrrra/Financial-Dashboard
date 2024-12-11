import 'package:financial_dashboard/widgets/card_chart_widget.dart';
import 'package:financial_dashboard/widgets/card_cloudcash_widget.dart';
import 'package:flutter/material.dart';

class CardCloudAndChartWidget extends StatelessWidget {
  final Color colorDark;
  final Color colorLight;
  const CardCloudAndChartWidget({
    super.key,
    required this.colorDark,
    required this.colorLight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardCloudcashWidget(
          colorDark: colorDark,
          colorLight: colorLight,
        ),
        SizedBox(height: 30),
        
        CardChartWidget(
          colorLight: colorLight,
        ),
      ],
    );
  }
}
